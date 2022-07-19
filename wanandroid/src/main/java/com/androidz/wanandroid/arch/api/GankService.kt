package com.androidz.wanandroid.arch.api

import com.androidz.wanandroid.arch.api.data.Banner2
import com.androidz.wanandroid.arch.api.data.GankResponse
import com.androidz.wanandroid.arch.api.data.GirlData
import retrofit2.http.GET
import retrofit2.http.Path

/**
 *  thanks https://gank.io/api
 * Created by rentianlong on 2020/7/6
 */
interface GankService {

    /**
     * 首页banner轮播 API
     */
    @GET("/api/v2/banners")
    suspend fun banners(): GankResponse<Banner2>

    /**
     * 分类数据 API
     * https://gank.io/api/v2/data/category/Girl/type/Girl/page/1/count/50
     */
    @GET("/api/v2/data/category/{category}/type/{type}/page/{page}/count/{count}")
    suspend fun categoryData(
        @Path("category") category: String,
        @Path("type") type: String,
        @Path("page") page: Int = 1,
        @Path("count") count: Int = 50
    ): GankResponse<GirlData>

}