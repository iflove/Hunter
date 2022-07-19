package com.androidz.probe_demo.fragment

import com.androidz.baseextlibrary.BaseFragment

/**
 *
 * Created by rentianlong on 2020/8/3
 */
class FragmentDemo : BaseFragment() {

    override fun initView() {
        super.initView()
        //主线程
//        supportFragmentManager.commit(true) {
//            replace(android.R.id.content, it, intent.extras, SimpleActivity.EXTRA_FRAGMENT_CLASS)
//        }
    }
}