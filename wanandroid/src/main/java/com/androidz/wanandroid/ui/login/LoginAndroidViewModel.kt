package com.androidz.wanandroid.ui.login

import android.app.Application
import androidx.lifecycle.MutableLiveData
import com.androidz.wanandroid.arch.api.data.User
import com.androidz.wanandroid.utility.viewmodel.AppAndroidViewModel

/**
 *
 * Created by rentianlong on 2020/7/6
 */
class LoginAndroidViewModel(application: Application) : AppAndroidViewModel(application) {

    val userData: MutableLiveData<User> = MutableLiveData()
}