package com.androidz.wanandroid.ui.login

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.androidz.dblibrary.pref.RoomPreferences
import com.androidz.wanandroid.arch.api.data.User
import com.androidz.wanandroid.arch.core.ObjectFactory
import com.androidz.wanandroid.arch.repository.WanAppRepository
import com.androidz.wanandroid.utility.IS_LOGIN
import com.androidz.wanandroid.utility.USER_INFO
import com.androidz.wanandroid.utility.viewmodel.AppViewModel
import com.androidz.wanandroid.utility.viewmodel.io

/**
 *
 * Created by rentianlong on 2020/7/5
 */
class LoginViewModel : AppViewModel() {
    private val wanAppRepository: WanAppRepository = ObjectFactory.WanAppRepository()

    data class LoginUiState(val loading: Boolean = false, val user: User? = null)

    private val _uiState = MutableLiveData<LoginUiState>()
    val uiState: LiveData<LoginUiState> = _uiState

    fun onLogin(name: String, pwd: String) {
        io {
            _uiState.postValue(LoginUiState(true))
            wanAppRepository.run {
                map {
                    androidService.login(name, pwd)
                }.onSuccess {
                    //RoomPreferences.save(USER_INFO to it.toGson(), IS_LOGIN to true)
                    RoomPreferences.save(USER_INFO to it, IS_LOGIN to true)
                    _uiState.postValue(LoginUiState(false, it))
                }.onFailure {
                    handleApiFailure(it)
                    _uiState.postValue(LoginUiState(false))
                }
            }
        }
    }

    fun onRegister(name: String, pwd: String) {
    }

}