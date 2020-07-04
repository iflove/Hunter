package com.androidz.demo

import retrofit2.Call
import retrofit2.http.GET
import java.io.IOException


/**
 *
 * Created by rentianlong on 2020/6/23
 */
interface AndroidService {

    @GET("/wxarticle/chapters/json")
    suspend fun wxarticle(): WanBaseResponse<WxarticleData>

}