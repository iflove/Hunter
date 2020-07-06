package com.androidz.wanandroid.ui.blog

import androidx.fragment.app.viewModels
import androidx.lifecycle.Observer
import com.androidz.logextlibrary.log
import com.androidz.wanandroid.R
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.androidz.wanandroid.ui.gank.GankViewModel

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class BlogFragment : AppBaseFragment(R.layout.fragment_blog) {
    val gankViewModel: GankViewModel by viewModels()

    override fun initView() {
        super.initView()
        gankViewModel.banner2.observe(this, Observer {
            log.d("test", it.title)
        })
    }
}