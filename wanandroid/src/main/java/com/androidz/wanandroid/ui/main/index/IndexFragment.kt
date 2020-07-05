package com.androidz.wanandroid.ui.main.index

import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import androidx.fragment.app.viewModels
import androidx.lifecycle.Observer
import androidx.recyclerview.widget.LinearLayoutManager
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import com.androidz.toolkitlibrary.dp
import com.androidz.toolkitlibrary.inflate
import com.androidz.wanandroid.R
import com.androidz.wanandroid.arch.api.data.Article
import com.androidz.wanandroid.arch.api.data.Banner
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.androidz.wanandroid.ui.main.ArticleViewModel
import com.androidz.wanandroid.ui.main.WebFragment
import com.bumptech.glide.Glide
import com.chad.library.adapter.base.BaseQuickAdapter
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView
import com.chad.library.adapter.base.module.LoadMoreModule
import com.chad.library.adapter.base.viewholder.BaseViewHolder
import com.youth.banner.adapter.BannerAdapter
import kotlinx.android.synthetic.main.layout_refresh_list.*
import com.youth.banner.Banner as BannerView

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class IndexFragment : AppBaseFragment(R.layout.layout_refresh_list) {

    private val indexViewModel by viewModels<ArticleViewModel>()

    private val bannerView by lazy { BannerView<Banner, IndexBannerAdapter>(requireContext()) }
    private var indexListAdapter: IndexListAdapter? = null

    override fun initView() {
        super.initView()
        bannerView.run {
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 160.dp)
        }
        swipeRefreshLayout.run {
            fun onRefresh() {
                indexViewModel.getBannersData()
                indexViewModel.getArticleList(isRefresh = true)
            }
            setOnRefreshListener { onRefresh() }
            onRefresh()
        }
        recyclerView.apply {
            layoutManager = LinearLayoutManager(context)
            indexListAdapter = IndexListAdapter()
            adapter = indexListAdapter?.apply {
                addHeaderView(bannerView)
                loadMoreModule.loadMoreView = SimpleLoadMoreView()
                loadMoreModule.isEnableLoadMore = true
                loadMoreModule.isAutoLoadMore = true
                loadMoreModule.setOnLoadMoreListener {
                    indexViewModel.getArticleList(isRefresh = false)
                }

                setOnItemClickListener { adapter, view, position ->
                    indexListAdapter?.run {

                        startSimpleActivity<WebFragment>(WebFragment.URL to data[position].link)
                    }
                }
            }
        }
    }

    override fun initData() {
        super.initData()
        indexViewModel.banners.observe(this, Observer {
            bannerView.run {
                adapter = IndexBannerAdapter(it)
            }
        })
        indexViewModel.uiState.observe(this, Observer {
            swipeRefreshLayout.isRefreshing = false
            indexListAdapter?.run {
                it.result?.run {
                    loadMoreModule.isEnableLoadMore = false
                    if (it.isRefresh) setNewInstance(this.datas)
                    else addData(this.datas)
                    loadMoreModule.isEnableLoadMore = true
                    loadMoreModule.loadMoreComplete()
                }
                if (it.loadMoreEnd) loadMoreModule.loadMoreEnd()
                it.errorMsg?.let {
                    loadMoreModule.loadMoreFail()
                }
            }

        })
    }


    class IndexListAdapter :
        BaseQuickAdapter<Article, BaseViewHolder>(R.layout.item_article_constraint),
        LoadMoreModule {
        override fun convert(holder: BaseViewHolder, item: Article) {
            holder.setText(R.id.articleTitle, item.title)
            holder.setText(R.id.articleAuthor,
                if (item.author.isBlank()) "分享者: ${item.shareUser}" else item.author
            )
            holder.setText(R.id.articleTime, item.niceDate)
            holder.setImageResource(R.id.articleStar,
                if (item.collect) R.drawable.timeline_like_pressed else R.drawable.timeline_like_normal
            )
        }

    }

    inner class IndexBannerAdapter(data: List<Banner>) :
        BannerAdapter<Banner, BaseViewHolder>(data) {
        override fun onCreateHolder(parent: ViewGroup, viewType: Int): BaseViewHolder {
            return BaseViewHolder(parent.inflate(R.layout.layout_banner_view, parent))
        }

        override fun onBindView(holder: BaseViewHolder, data: Banner, position: Int, size: Int) {
            val view = viewHolder.getView<ImageView>(R.id.bannerImg)
            Glide.with(this@IndexFragment)
                .load(data.imagePath)
                .centerCrop()
                .into(view);
        }

    }

}