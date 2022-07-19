//package com.androidz.dex_demo;
//
//import java.io.BufferedInputStream;
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
//
//public class HelloJ {
//
//    public static void log() {
//        URL url = null;
//        try {
//            url = new URL("https://gitee.com/skycompass/vscreen-apk/raw/master/upgrade/vbox");
//        } catch (MalformedURLException e) {
//            e.printStackTrace();
//        }
//        HttpURLConnection urlConnection = null;
//        try {
//            urlConnection = (HttpURLConnection) url.openConnection();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        try {
//            // 获取响应
//            BufferedReader in = null;
//            String line = null;
//            StringBuffer sb = new StringBuffer();
//            in = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
//            while ((line = in.readLine()) != null) {
//                sb.append(line);
//            }
//            System.out.println(sb.toString());
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            urlConnection.disconnect();
//        }
//    }
//}
