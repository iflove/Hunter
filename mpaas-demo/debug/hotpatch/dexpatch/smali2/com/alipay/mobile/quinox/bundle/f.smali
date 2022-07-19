.class final Lcom/alipay/mobile/quinox/bundle/f;
.super Ljava/lang/Object;
.source "CacheCleanUtils.java"


# direct methods
.method static a(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isProductABIChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_cache_clean_version_record"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v0, "recordFile":Ljava/io/File;
    new-instance v1, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "last_cache_clean_version_record_lock"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/io/File;)V

    .line 24
    .local v1, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "lastCleanProductKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "CacheCleanUtils"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 28
    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFileStringFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v3

    move-object v5, v3

    .line 30
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductABI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v5, "productKey":Ljava/lang/String;
    move-object v5, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    const-string v3, "clean h5 container when abi change"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    const/4 v3, 0x0

    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v7

    const-string v8, "h5container"

    invoke-virtual {v7, v8, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    const-string v8, "uc"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/FileUtil;->cleanDir(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v6

    .line 41
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_5
    invoke-static {v0, v5, v3}, Lcom/alipay/mobile/common/logging/util/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 47
    :goto_2
    goto :goto_3

    .line 45
    :catch_1
    move-exception v3

    .line 46
    .local v3, "t":Ljava/io/IOException;
    :try_start_6
    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "t":Ljava/io/IOException;
    goto :goto_2

    .line 49
    :cond_1
    const-string v3, "don\'t need to clean h5 container because already cleaned"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 52
    .end local v2    # "lastCleanProductKey":Ljava/lang/String;
    .end local v5    # "productKey":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 53
    return-void

    .line 52
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v2

    .line 55
    .end local v0    # "recordFile":Ljava/io/File;
    .end local v1    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :cond_2
    return-void
.end method
