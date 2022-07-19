package com.androidz.leak_demo

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log

open class ANR : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        Log.d("xxb", "in " + intent?.action)

    }
}