.class public Lcom/alipay/mobile/common/transport/utils/SDcardUtils;
.super Ljava/lang/Object;
.source "SDcardUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "SDcardUtils"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsCanUseSdCard()Z
    .locals 2

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppAvailableSpace(J)Z
    .locals 3
    .param p0, "space"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(JLjava/io/File;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 51
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->TAG:Ljava/lang/String;

    const-string v2, "isAppAvailableSpace error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x1

    return v0
.end method

.method public static isAppAvailableSpace(JLjava/io/File;)Z
    .locals 8
    .param p0, "space"    # J
    .param p2, "file"    # Ljava/io/File;

    .line 59
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v1

    if-gtz v4, :cond_1

    .line 63
    return v3

    .line 65
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 66
    .local v2, "statFs":Landroid/os/StatFs;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    mul-long v4, v4, v6

    .line 67
    .local v4, "availableSpare":J
    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    .line 68
    return v3

    .line 70
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isAppAvailableSpace.  (space:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") < (availableSpare:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")  file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    return v0

    .line 72
    .end local v2    # "statFs":Landroid/os/StatFs;
    .end local v4    # "availableSpare":J
    :catchall_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->TAG:Ljava/lang/String;

    const-string v2, "isAppAvailableSpace error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    return v3
.end method

.method public static isDataDirAvailableSpace(J)Z
    .locals 1
    .param p0, "space"    # J

    .line 79
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(J)Z

    move-result v0

    return v0
.end method

.method public static isSDcardAvailableSpace(J)Z
    .locals 2
    .param p0, "space"    # J

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->IsCanUseSdCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(JLjava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static isUseSdcardPath(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "sdcard":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 17
    return v2

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 20
    return v2

    .line 22
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const/4 v1, 0x1

    return v1

    .line 25
    :cond_2
    return v2
.end method
