.class public Lcom/alipay/mobile/common/cleancache/CacheCleanerUtil;
.super Ljava/lang/Object;
.source "CacheCleanerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    invoke-static {v3}, Lcom/alipay/mobile/common/cleancache/CacheCleanerUtil;->deleteFile(Ljava/io/File;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    return-void
.end method

.method public static getAvailableSize()J
    .locals 9

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/cleancache/CacheCleanerUtil;->isExternalStorageWritable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return-wide v1

    .line 104
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 105
    .local v0, "sdcardDir":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 106
    .local v4, "sf":Landroid/os/StatFs;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    .line 107
    .local v5, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v1

    .line 108
    .local v1, "availCount":J
    mul-long v7, v5, v1

    return-wide v7

    .line 109
    .end local v0    # "sdcardDir":Ljava/io/File;
    .end local v1    # "availCount":J
    .end local v4    # "sf":Landroid/os/StatFs;
    .end local v5    # "blockSize":J
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "CacheCleanerUtil"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    return-wide v1
.end method

.method public static getTotalSize()J
    .locals 9

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/cleancache/CacheCleanerUtil;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-wide/16 v0, 0x0

    return-wide v0

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "sdcardDir":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 92
    .local v2, "sf":Landroid/os/StatFs;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 93
    .local v3, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v5, v1

    .line 96
    .local v5, "blockCount":J
    mul-long v7, v3, v5

    return-wide v7
.end method

.method private static isExternalStorageWritable()Z
    .locals 4

    .line 68
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 73
    .end local v1    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "CacheCleanerUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static sizeOfFile(Ljava/io/File;)J
    .locals 8

    .line 26
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 29
    :cond_0
    nop

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 31
    array-length v2, p0

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, p0, v3

    .line 32
    invoke-static {v6}, Lcom/alipay/mobile/common/cleancache/CacheCleanerUtil;->sizeOfFile(Ljava/io/File;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v6

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-wide v4

    .line 36
    :catch_0
    move-exception p0

    .line 37
    return-wide v0
.end method
