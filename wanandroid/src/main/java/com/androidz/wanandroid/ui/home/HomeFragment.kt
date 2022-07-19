package com.androidz.wanandroid.ui.home

import androidx.fragment.app.Fragment
import com.androidz.toolkitlibrary.createNew
import com.androidz.wanandroid.R
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.androidz.wanandroid.ui.blog.BlogFragment
import com.androidz.wanandroid.ui.main.MainFragment
import com.androidz.wanandroid.ui.project.ProjectFragment
import com.androidz.wanandroid.ui.search.SearchFragment
import com.androidz.wanandroid.utility.adapter.AppFragmentStateAdapter
import kotlinx.android.synthetic.main.fragment_home.*

class HomeFragment : AppBaseFragment(layoutId = R.layout.fragment_home) {

    private val fragments by lazy {
        mutableListOf<Fragment>()
            .apply {
                add(createNew<MainFragment>())
                add(createNew<BlogFragment>())
                add(createNew<SearchFragment>())
                add(createNew<ProjectFragment>())
            }
    }

    override fun initView() {
        super.initView()
        mainViewpager.apply {
            isUserInputEnabled = false
            offscreenPageLimit = 2
            adapter = AppFragmentStateAdapter(this@HomeFragment, fragments)
        }

        navView.setOnNavigationItemSelectedListener {
            var index = 0
            when (it.itemId) {
                R.id.blog -> {
                    index += 1
                }
                R.id.search -> {
                    index += 2
                }
                R.id.project -> {
                    index += 3
                }
                else -> {
                    index = 0
                }
            }
            mainViewpager.setCurrentItem(index, false)
            true
        }
    }

}
