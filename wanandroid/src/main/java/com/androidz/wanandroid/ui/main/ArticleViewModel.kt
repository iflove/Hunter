package com.androidz.wanandroid.ui.main

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.liveData
import com.androidz.wanandroid.arch.api.data.ArticleList
import com.androidz.wanandroid.arch.api.data.Banner
import com.androidz.wanandroid.arch.core.ObjectFactory
import com.androidz.wanandroid.arch.repository.WanAppRepository
import com.androidz.wanandroid.utility.viewmodel.AppViewModel
import com.androidz.wanandroid.utility.viewmodel.io
import kotlinx.coroutines.Dispatchers

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class ArticleViewModel(
    private val wanAppRepository: WanAppRepository = ObjectFactory.WanAppRepository()
) : AppViewModel() {

    private val _uiState = MutableLiveData<ArticleUiState>()
    val uiState: LiveData<ArticleUiState> = _uiState
    private var currentPage = 0

    val banners: LiveData<List<Banner>> = liveData(Dispatchers.IO) {
        wanAppRepository.run {
            map(androidService::getBanner).getOrNull()?.let {
                emit(it)
            }
        }
    }

    sealed class ArticleType {
        object Home : ArticleType()                 // 首页
        object Square : ArticleType()               // 广场
        object LatestProject : ArticleType()        // 最新项目
        object ProjectDetailList : ArticleType()    // 项目列表
        object Collection : ArticleType()           // 收藏
        object SystemType : ArticleType()           // 体系分类
        object Blog : ArticleType()                 // 公众号
    }

    data class ArticleUiState(
        val loading: Boolean = false,
        val errorMsg: String? = null,
        val result: ArticleList? = null,
        val loadMoreEnd: Boolean = false, // 加载更多
        val isRefresh: Boolean = false, // 刷新
        val needLogin: Boolean? = null
    )

    fun getArticleList(articleType: ArticleType = ArticleType.Home,
                       isRefresh: Boolean = false,
                       cid: Int = 0
    ) = io {
        _uiState.postValue(ArticleUiState(true))
        if (isRefresh) currentPage = if (articleType is ArticleType.ProjectDetailList) 1 else 0 //由于早期开放的一些API页码为0开始，后期接口修改为从1开始，为了兼顾之前的开放API，故无法统一。
        wanAppRepository.run {
            map {
                androidService.run {
                    when (articleType) {
                        ArticleType.Home -> getHomeArticles(currentPage)
                        ArticleType.Square -> getSquareArticleList(currentPage)
                        ArticleType.LatestProject -> getLastedProject(currentPage)
                        ArticleType.ProjectDetailList -> getProjectTypeDetail(currentPage, cid)
                        ArticleType.Collection -> getCollectArticles(currentPage)
                        ArticleType.SystemType -> getSystemTypeDetail(cid, currentPage)
                        ArticleType.Blog -> getBlogArticle(cid, currentPage)
                    }
                }
            }.onSuccess {
                if (it.offset >= it.total) {
                    _uiState.postValue(ArticleUiState(loading = false, loadMoreEnd = true))
                    return@onSuccess
                }
                currentPage++
                _uiState.postValue(ArticleUiState(loading = false, result = it))
            }.onFailure {
                handleApiFailure(it)
                // TODO: 2020/7/4  loadMoreEnd? try?
                _uiState.postValue(ArticleUiState(false, errorMsg = it.message))
            }
        }
    }

    fun getHome(): LiveData<ArticleList> = liveData(Dispatchers.IO) {
        wanAppRepository.run {
            map { androidService.getHomeArticles(1) }.onSuccess {
                emit(it)
            }.onFailure(::handleApiFailure)
        }
    }

    companion object {
        private const val TAG = "ArticleViewModel"
    }

}