package com.androidz.wanandroid.ui.base

import android.view.View
import androidx.annotation.LayoutRes
import androidx.lifecycle.Lifecycle
import com.androidz.baseextlibrary.BaseActivity

/**
 *
 * Created by rentianlong on 2020/6/29
 */
open class AppBaseActivity @JvmOverloads constructor(
    @LayoutRes override val layoutId: Int = View.NO_ID,
    override val initEvent: Lifecycle.Event = Lifecycle.Event.ON_CREATE
) : BaseActivity() {
}