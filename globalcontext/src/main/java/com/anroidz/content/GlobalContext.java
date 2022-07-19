package com.anroidz.content;

import android.annotation.SuppressLint;
import android.content.Context;

/**
 * 作用描述: App全局Context, 不能在ContentProvider中使用
 * 创建人 rentl
 * 创建日期 2021/12/5 22:39
 * 修改日期 2021/12/5 22:39
 */
public class GlobalContext {

    @SuppressLint("StaticFieldLeak")
    private static Context mGlobalContext;

    /**
     * attach AppContext
     *
     * @param base AppContext
     */
    public static void attachBaseContext(Context base) {
        if (mGlobalContext != null) {
            throw new IllegalStateException("Base context already set");
        }
        mGlobalContext = base;
    }

    public Context getContext() {
        return mGlobalContext;
    }
}
