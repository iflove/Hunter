package com.androidz.wanandroid.utility.viewmodel

import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 *
 * Created by rentianlong on 2020/7/3
 */


inline fun <T> androidx.lifecycle.ViewModel.io(crossinline block: suspend CoroutineScope.() -> T) {
    this.viewModelScope.launch(Dispatchers.IO) { block() }
}

inline fun androidx.lifecycle.ViewModel.main(crossinline block: suspend CoroutineScope.() -> Unit) {
    this.viewModelScope.launch(Dispatchers.Main) { block() }
}