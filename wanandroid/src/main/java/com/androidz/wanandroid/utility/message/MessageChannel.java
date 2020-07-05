package com.androidz.wanandroid.utility.message;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

import com.androidz.logextlibrary.Logger;
import com.androidz.wanandroid.BuildConfig;

import org.jetbrains.annotations.NotNull;

import java.util.Iterator;
import java.util.WeakHashMap;

/**
 * Created by rentianlong on 2020/4/17
 */
public class MessageChannel extends Handler {
    private static final String TAG = "MessageChannel";
    //参考 SharedPreferencesImpl
    private final WeakHashMap<Callback, Object> mMessageObserver = new WeakHashMap<>(5);
    private static final Object CONTENT = new Object();
    private final Object mLock = new Object();

    public MessageChannel(Looper looper) {
        super(looper);
    }


    @Override
    public void handleMessage(@NotNull final Message msg) {
        super.handleMessage(msg);
        if (BuildConfig.DEBUG) {
            Logger.Companion.getLog().d(TAG, "handleMessage:" + msg.toString());
        }
        Iterator<Callback> it = mMessageObserver.keySet().iterator();
        while (it.hasNext()) {
            Callback next = it.next();
            if (next != null && next.handleMessage(msg)) {
                break;
            }
        }
    }

    /**
     * @param observer 强烈推荐使用强引用监听器,否则很很容易产生垃圾
     */
    public void observeForever(Callback observer) {
        synchronized (mLock) {
            mMessageObserver.put(observer, CONTENT);
        }
    }

    /**
     * 最好移除
     *
     * @param observer
     */
    public void removeObserver(Callback observer) {
        synchronized (mLock) {
            mMessageObserver.remove(observer);
        }
    }


}
