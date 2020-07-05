package com.androidz.wanandroid.ui.base

import android.view.View
import androidx.annotation.LayoutRes
import androidx.lifecycle.Lifecycle
import com.androidz.baseextlibrary.BaseFragment
import com.androidz.logextlibrary.log
import com.androidz.toolkitlibrary.ResUtil
import com.androidz.wanandroid.R

/**
 *
 * Created by rentianlong on 2020/6/29
 */
open class AppBaseFragment @JvmOverloads constructor(
    @LayoutRes override val layoutId: Int = 0,
    override val initEvent: Lifecycle.Event = Lifecycle.Event.ON_CREATE
) : BaseFragment(layoutId, initEvent), View.OnClickListener {
    override fun onClick(v: View) {
        log.d("AllClickListener", "${v} clicked")
        if (v.contentDescription == ResUtil.getString(R.string.back_btn)) {
            onBack()
        }
    }

    open fun onBack() {
        activity?.onBackPressed()
    }
}