package com.androidz.wanandroid.ui.core

import android.os.Bundle
import androidx.lifecycle.Lifecycle
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import com.androidz.toolkitlibrary.startActivity
import com.androidz.wanandroid.MainActivity
import com.androidz.wanandroid.R
import com.androidz.wanandroid.ui.base.AppBaseActivity
import com.androidz.wanandroid.ui.demo.ScrollingActivity
import com.androidz.wanandroid.ui.home.HomeFragment

class StartPageActivity(layoutId: Int = R.layout.activity_start_page,
                        initEvent: Lifecycle.Event = Lifecycle.Event.ON_START
) : AppBaseActivity(layoutId, initEvent) {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun initView() {
        super.initView()
        startActivity<MainActivity>()
        finish()
    }
}