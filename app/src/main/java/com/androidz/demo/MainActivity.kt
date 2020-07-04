package com.androidz.demo

import android.os.Bundle
import android.view.View
import androidx.lifecycle.Lifecycle
import com.androidz.baseextlibrary.BaseActivity
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : BaseActivity(R.layout.activity_main, initEvent = Lifecycle.Event.ON_CREATE),
    View.OnClickListener {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        tv.text = "MainActivity"
    }

    override fun initView() {
        super.initView()
        tv.setOnClickListener(this)
    }

    override fun initData() {
        super.initData()
    }

    companion object {
        private const val TAG = "MainActivity"
    }

    override fun onClick(v: View) {
        startSimpleActivity<MainFragment>()
    }
}