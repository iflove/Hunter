package com.androidz.wanandroid.utility.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import com.androidz.logextlibrary.Logger

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class AppAndroidViewModel(application: Application) : AndroidViewModel(application) {

    private val TAG = AppAndroidViewModel::javaClass.name

    init {
        Logger.log.d(TAG, "an AndroidViewModel $TAG is init ")
    }
}