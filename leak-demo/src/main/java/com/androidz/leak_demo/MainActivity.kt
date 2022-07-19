package com.androidz.leak_demo

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import android.os.Process
import android.util.Log
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val intentFilter = IntentFilter(Intent.ACTION_APP_ERROR)
        intentFilter.addAction("android.intent.action.ANR")
        this.registerReceiver(object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                Log.d("xxa", "in " + intent?.action)
            }

        }, intentFilter)
//        Process.killProcess(Process.myPid())
        Thread.sleep(1000 * 20)
        Log.d("xxa", "te")
        System.gc
    }
}