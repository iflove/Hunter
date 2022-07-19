.class public Lcom/alipay/mobile/quinox/utils/DiskUtil;
.super Ljava/lang/Object;
.source "DiskUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppAvailableSpace()J
    .locals 8

    .line 19
    const/4 v0, 0x0

    .local v0, "dirFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 20
    move-object v0, v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 21
    return-wide v2

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 29
    nop

    .line 30
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    .line 31
    .local v4, "availableCount":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v2, v2, v6

    return-wide v2

    .line 26
    .end local v4    # "availableCount":J
    :catchall_0
    move-exception v4

    .line 27
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "DiskUtil"

    const-string v6, "getAppAvailableSpace"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-wide v2
.end method

.method public static getTotalSpace()J
    .locals 7

    .line 35
    const/4 v0, 0x0

    .local v0, "dirFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 36
    move-object v0, v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 37
    return-wide v2

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 41
    .local v1, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 45
    nop

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 48
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .local v2, "totalBlockCount":J
    goto :goto_0

    .line 50
    .end local v2    # "totalBlockCount":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    .line 52
    .restart local v2    # "totalBlockCount":J
    :goto_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v4, v4, v2

    return-wide v4

    .line 42
    .end local v2    # "totalBlockCount":J
    :catchall_0
    move-exception v4

    .line 43
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "DiskUtil"

    const-string v6, "getAppAvailableSpace"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-wide v2
.end method
