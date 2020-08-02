package com.androidz.probe_demo

import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import com.androidz.probe_demo.anr.ANRFragment

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun onClick(view: View) {
        startSimpleActivity<ANRFragment>()
    }
}
