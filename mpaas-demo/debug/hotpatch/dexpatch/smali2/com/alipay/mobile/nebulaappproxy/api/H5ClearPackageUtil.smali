.class public Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;
.super Ljava/lang/Object;
.source "H5ClearPackageUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 13

    .line 43
    const-class v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 44
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 45
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 46
    const-string v2, "h5_enableClearAppPkg"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    nop

    .line 48
    nop

    .line 50
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 52
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "H5ClearPackageUtil"

    const/4 v8, 0x0

    if-nez v6, :cond_2

    .line 54
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    const-string v6, "amr"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "YES"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 57
    const-string/jumbo v9, "unzip"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 59
    :try_start_0
    const-string/jumbo v9, "unzipT"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    if-lez v9, :cond_0

    .line 61
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 63
    :cond_0
    const-string v9, "checkT"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-lez v1, :cond_1

    .line 65
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    move v1, v8

    move v8, v6

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v8

    move v8, v6

    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a(J)Z

    move-result v6

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "clearAmr : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " clearUnzipTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " checkTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " enableClear : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->clearAppAmrPackage()V

    .line 78
    :cond_3
    const-string v4, "h5_disableClearUnzip"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 79
    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    .line 80
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->clearAppUnzipPackage(J)V

    .line 82
    :cond_4
    if-eqz v6, :cond_6

    if-nez v8, :cond_5

    if-eqz v1, :cond_6

    .line 83
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->b()V

    .line 86
    :cond_6
    return-void
.end method

.method private static a(J)Z
    .locals 8
    .param p0, "checkTime"    # J

    const-string v0, "H5ClearPackageUtil"

    .line 94
    const-string v1, "h5_delete_unused_app_package"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v2, "lastClearStr":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    const-wide/16 v3, 0x0

    .line 98
    .local v3, "lastTime":J
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v5

    .line 101
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 104
    .local v5, "currentTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "currentTime : "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " lastTime : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v7, v3, v0

    if-lez v7, :cond_0

    sub-long v0, v5, v3

    cmp-long v7, v0, p0

    if-lez v7, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    .end local v3    # "lastTime":J
    .end local v5    # "currentTime":J
    :cond_0
    goto :goto_1

    .line 110
    :cond_1
    nop

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static b()V
    .locals 4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "clearPkgTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "save clearPkgTime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ClearPackageUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    nop

    .line 120
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v3, "h5_delete_unused_app_package"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static clearUnusedAppPackage()V
    .locals 2

    .line 29
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "H5ClearPackageUtil"

    const-string/jumbo v1, "not clear because sClearing."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a:Z

    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a:Z

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->a:Z

    throw v0
.end method
