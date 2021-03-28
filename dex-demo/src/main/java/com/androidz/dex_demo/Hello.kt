//package com.androidz.dex_demo
//
//import android.util.Log
//import retrofit2.Retrofit
//import java.net.HttpURLConnection
//import java.net.URL
//
//object Hello {
//    @JvmStatic
//    fun main(args: Array<String>) {
//        println("hello djj")
//    }
//
//    @JvmStatic
//    fun log() {
//        Log.d("xxa", "——+25k")
//        val retrofit = Retrofit.Builder()
//            .baseUrl("https://api.github.com/")
//            .build()
//        Log.d("xxa", "——+retrofit$retrofit")
//        Thread{
//            var conn: HttpURLConnection? = null
//            try {
//                conn = URL("https://api.github.com/").openConnection() as HttpURLConnection
//                conn.connect()
//                conn.inputStream.use { input ->
//                    val data = input.bufferedReader().readText()
//                    println(data)
//                }
//            } catch (e: Exception) {
//                e.printStackTrace()
//            } finally {
//                conn?.disconnect()
//            }
//        }.start()
//
//    }
//}