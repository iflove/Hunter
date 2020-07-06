package com.androidz.wanandroid.ui.gank

import androidx.lifecycle.liveData
import com.androidz.wanandroid.arch.core.ObjectFactory
import com.androidz.wanandroid.utility.viewmodel.AppViewModel

/**
 *
 * Created by rentianlong on 2020/7/6
 */
class GankViewModel : AppViewModel() {

    private val gank = ObjectFactory.GankAppRepository()


    val banner2 = liveData {
        gank.map { banners() }
            .onSuccess {
                emit(it)
            }.onFailure {

            }
    }
}