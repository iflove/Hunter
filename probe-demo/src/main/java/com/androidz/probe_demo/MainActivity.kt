package com.androidz.probe_demo

import android.os.Bundle
import android.util.Log
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import com.androidz.logextlibrary.Logg
import com.androidz.probe_demo.anr.ANRFragment
import com.androidz.probe_demo.crash.ClildProcessCrash
import com.androidz.toolkitlibrary.startService

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Logg.setLoggable("ClildProcessCrash", Log.DEBUG)
        startService<ClildProcessCrash>()
    }

    fun onClick(view: View) {
        startSimpleActivity<ANRFragment>()
    }
}
