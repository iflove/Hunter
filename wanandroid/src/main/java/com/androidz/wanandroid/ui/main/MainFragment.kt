package com.androidz.wanandroid.ui.main

import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.androidz.logextlibrary.log
import com.androidz.toolkitlibrary.ResUtil
import com.androidz.toolkitlibrary.createNew
import com.androidz.wanandroid.R
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.androidz.wanandroid.ui.main.index.IndexFragment
import com.androidz.wanandroid.ui.main.nav.NavFragment
import com.androidz.wanandroid.ui.main.square.SquareFragment
import com.androidz.wanandroid.ui.main.system.SystemFragment
import com.androidz.wanandroid.ui.project.ProjectFragment
import com.androidz.wanandroid.utility.adapter.AppFragmentStateAdapter
import com.google.android.material.tabs.TabLayoutMediator
import kotlinx.android.synthetic.main.fragment_main.*

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class MainFragment : AppBaseFragment(R.layout.fragment_main) {

    private val titles = ResUtil.getListString(R.array.home_tab_titile)
    private val fragments by lazy {
        mutableListOf<Fragment>()
            .apply {
                add(createNew<IndexFragment>())
                add(createNew<SquareFragment>())
                add(createNew<ProjectFragment>())
                add(createNew<SystemFragment>())
                add(createNew<NavFragment>())
            }

    }

    private val onPageChangeCallback = object : ViewPager2.OnPageChangeCallback() {

        override fun onPageSelected(position: Int) {
            super.onPageSelected(position)
            log.d(this@MainFragment::class.java.simpleName, "position:$position")
        }
    }

    override fun onResume() {
        super.onResume()
        viewPager.registerOnPageChangeCallback(onPageChangeCallback)
    }

    override fun onStop() {
        super.onStop()
        viewPager.unregisterOnPageChangeCallback(onPageChangeCallback)
    }

    override fun initView() {
        super.initView()
        viewPager.apply {
            offscreenPageLimit = 1
            adapter = AppFragmentStateAdapter(this@MainFragment, fragments)
        }.also {
            TabLayoutMediator(tabLayout, it) { tab, position ->
                tab.text = titles[position]
            }.attach()
        }

    }
}