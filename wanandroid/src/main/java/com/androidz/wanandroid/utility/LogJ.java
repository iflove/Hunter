package com.androidz.wanandroid.utility;

import android.util.Log;

import com.androidz.logextlibrary.Logg;

/**
 * Created by rentianlong on 2020/8/30
 */
public class LogJ {

    public static void log(String args) {
        Logg.getLog().d("LogJ", args);
        if (Logg.isLoggable("LogJ", Log.DEBUG)) {
            Logg.i("LogJ", Logg.getStackTraceMsg(args + " isLoggable"));
        }
        Logg.setLoggable("LogJ", Log.DEBUG);
        if (Logg.isLoggable("LogJ", Log.DEBUG)) {
            Logg.i("LogJ", Logg.getStackTraceMsg(args + " isLoggable2"));
        }
    }
}
