.class public Lcom/alipay/mobile/quinox/preload/PreloadManager;
.super Ljava/lang/Object;
.source "PreloadManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "isMainProcessExist":Z
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 53
    .local v3, "activityManager":Landroid/app/ActivityManager;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    move-object v4, v2

    .line 55
    .local v4, "runningAppProcessInfos":Ljava/util/List;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 57
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v2, v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 61
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 64
    .end local v4    # "runningAppProcessInfos":Ljava/util/List;
    :cond_1
    :goto_1
    return v0

    .line 65
    .end local v0    # "isMainProcessExist":Z
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v0

    .line 66
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static tryPreloadMain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preloadBy"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getPushPreloadMainConfig(Landroid/content/Context;)Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 23
    .local v2, "pushPreloadMainConfig":Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
    move-object v2, v0

    const-string v3, "PreloadManager"

    if-nez v0, :cond_0

    .line 24
    const-string v0, "pushPreloadMainConfig is null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "main process already exist."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 31
    :cond_1
    iget-boolean v0, v2, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->allowPreload:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->preloadInterval:I

    if-gez v0, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x4

    const-string v4, "preload_manager_sp"

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v4, "last_preload_main_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 37
    .local v7, "lastPreloadTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 38
    .local v5, "currentTime":J
    move-wide v5, v9

    sub-long/2addr v9, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v11, v2, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->preloadInterval:I

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-gez v0, :cond_3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "preload main internal < "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->preloadInterval:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "min"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "trigger preload "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/MainPldService;->triggerPreload(Landroid/content/Context;)V

    .line 47
    return-void

    .line 32
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "currentTime":J
    .end local v7    # "lastPreloadTime":J
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pushPreloadMainConfig say can\'t do preload, preloadInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->preloadInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
