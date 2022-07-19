package com.androidz.mPaas_demo;

import android.util.Log;

public class LogT {

    private static final String TAG = "LogT";

    //tool进程: DynamicRelease go to download
    //main进程 DexPatchManager
    public static void fix() {
        String nullObj = "null";
        nullObj.split("");
        Log.d("xxa", "ok" + BuildConfig.VERSION_NAME);
    }
}
