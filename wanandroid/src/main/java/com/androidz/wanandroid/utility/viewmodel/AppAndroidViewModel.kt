package com.androidz.wanandroid.utility.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import com.androidz.logextlibrary.Logg

/**
 *
 * Created by rentianlong on 2020/7/3
 */
open class AppAndroidViewModel(application: Application) : AndroidViewModel(application) {

    private val TAG = this::class.java.simpleName

    init {
        Logg.log.d(TAG, "an AndroidViewModel $this is init ")
    }
}