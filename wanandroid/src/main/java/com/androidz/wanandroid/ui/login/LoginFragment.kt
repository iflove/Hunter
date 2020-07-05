package com.androidz.wanandroid.ui.login

import android.os.Message
import android.view.View
import androidx.core.widget.doAfterTextChanged
import androidx.fragment.app.viewModels
import androidx.lifecycle.Observer
import com.androidz.toolkitlibrary.toast
import com.androidz.wanandroid.R
import com.androidz.wanandroid.arch.core.SingletonFactory
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.androidz.wanandroid.utility.MSG_LOGIN
import kotlinx.android.synthetic.main.fragment_login.*
import kotlinx.android.synthetic.main.layout_title.*

/**
 *
 * Created by rentianlong on 2020/7/5
 */
class LoginFragment : AppBaseFragment(R.layout.fragment_login) {

    val loginViewModel: LoginViewModel by viewModels()

    override fun initView() {
        super.initView()
        toolbar.run {
            title = getString(R.string.login)
            setNavigationIcon(R.drawable.arrow_back)
            setNavigationContentDescription(R.string.back_btn)
            setNavigationOnClickListener(::onClick)
        }

        login.setOnClickListener(this)
        register.setOnClickListener(this)
        userNameEt.doAfterTextChanged {
            login.isEnabled = inputNotBlank()
            register.isEnabled = inputNotBlank()
        }
        passwordEt.doAfterTextChanged {
            login.isEnabled = inputNotBlank()
            register.isEnabled = inputNotBlank()
        }
    }

    override fun initData() {
        super.initData()
        loginViewModel.uiState.observe(this, Observer { t ->
            t.user?.run {
                toast(content = "登录成功")
                val obtain = Message.obtain()
                obtain.what = MSG_LOGIN
                obtain.obj = this
                SingletonFactory.get.messageChannel.sendMessage(obtain)
                onBack()
            }

        })
    }

    override fun onClick(v: View) {
        super.onClick(v)
        when (v) {
            login -> {
                if (!inputNotBlank()) {
                    return
                }
                loginViewModel.onLogin(userNameEt.text.toString(), passwordEt.text.toString())
            }
            register -> {
                if (!inputNotBlank()) {
                    return
                }
                loginViewModel.onRegister(userNameEt.text.toString(), passwordEt.text.toString())

            }
        }
    }

    fun inputNotBlank() =
        userNameEt.text.isNullOrBlank().not() and passwordEt.text.isNullOrBlank().not()
}