.class public Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;
.super Ljava/lang/Object;
.source "UpgradeSilentManager.java"


# static fields
.field private static final GROUP:Ljava/lang/String; = "account_security_accountauth"

.field private static final OWNER:Ljava/lang/String; = "account_security"

.field protected static final TAG:Ljava/lang/String; = "UpgradeSilentManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    .locals 1

    .line 25
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSecurityDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurityDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    .locals 1

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v0

    return-object v0
.end method

.method private static getSilentDownloadService()Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;
    .locals 2

    .line 252
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;

    .line 252
    return-object v0
.end method

.method private static getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    .locals 2

    .line 275
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 277
    return-object v0
.end method

.method public static getUpgradeInfoForSilent()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 8

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSilentManager"

    const-string/jumbo v2, "\u83b7\u53d6\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    nop

    .line 192
    nop

    .line 194
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSecurityDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->open()V

    .line 196
    const-string v3, "account_security"

    const-string/jumbo v4, "update_silent_info_cache_key"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 197
    if-eqz v3, :cond_1

    .line 198
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$2;

    invoke-direct {v3}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$2;-><init>()V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4, v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4ece\u6587\u4ef6\u83b7\u53d6\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "\u4fe1\u606f\u4e3a\u7a7a"

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadurl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fullmd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " upgradeversion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isWifi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->isWifi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " silentType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->silentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    nop

    .line 208
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 203
    return-object v3

    .line 205
    :catch_0
    move-exception v0

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 209
    goto :goto_2

    .line 208
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 205
    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    .line 208
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 205
    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    .line 206
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "\u83b7\u53d6\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f error "

    invoke-interface {v4, v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 209
    move-object v0, v3

    .line 210
    :goto_2
    return-object v0

    .line 208
    :goto_3
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    throw v0
.end method

.method public static isSilentDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 129
    const-string v0, "UpgradeSilentManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSilentDownloadService()Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;

    move-result-object v2

    .line 130
    if-nez v2, :cond_0

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string p1, "isSilentDownloading() \u9759\u9ed8\u4e0b\u8f7dservice\u4e3a\u7a7a"

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {v2, p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 136
    :catch_0
    move-exception p0

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v2, "isSilentDownloading error"

    invoke-interface {p1, v0, v2, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return v1
.end method

.method public static removeUpgradeInfoForSilent()V
    .locals 3

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSilentManager"

    const-string/jumbo v2, "\u5220\u9664\u9759\u9ed8\u5347\u7ea7\u4fe1\u606fbegin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 221
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 222
    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "removeUpgradeInfoForSilent() scheduleService is null "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 226
    :cond_0
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$3;

    invoke-direct {v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public static startSilentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 40
    const-string v0, "UpgradeSilentManager"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "startSilentDownload"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSilentDownloadService()Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;

    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo p1, "\u9759\u9ed8\u4e0b\u8f7d\u7684\u670d\u52a1\u4e3a\u7a7a"

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->isSilentDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo p1, "\u9759\u9ed8\u4e0b\u8f7d\u6b63\u5728\u8fdb\u884c\u4e2d...\u4e0d\u518dadd\u9759\u9ed8\u4e0b\u8f7d\u4efb\u52a1"

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 51
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/MD5Util;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo p1, "\u9759\u9ed8\u4e0b\u8f7d\uff0c\u68c0\u6d4b\u5230apk\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\u4e14md5\u6821\u9a8c\u901a\u8fc7\uff0c\u4e0d\u518d\u9759\u9ed8\u4e0b\u8f7d"

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->isUpdating()Z

    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo p1, "\u9759\u9ed8\u4e0b\u8f7d\u524d\uff0c\u68c0\u6d4b\u5230\u666e\u901a\u5347\u7ea7\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u4e0d\u80fd\u9759\u9ed8\u4e0b\u8f7d"

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "\u771f\u6b63\u5f00\u59cb\u8c03\u7528\u9759\u9ed8\u4e0b\u8f7dapi"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    invoke-direct {v3, p1, p0, p2}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;->startSilentDownload(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo p2, "\u9759\u9ed8\u4e0b\u8f7d\uff0cstartSilentDownload"

    invoke-interface {p1, v0, p2, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :goto_0
    return-void
.end method

.method public static stopSilentDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 150
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSilentDownloadService()Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;->stopSilentDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    goto :goto_0

    .line 155
    :catch_0
    move-exception p0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "UpgradeSilentManager"

    const-string/jumbo v1, "stopSilentDownload error"

    invoke-interface {p1, v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :goto_0
    return-void
.end method

.method public static updateUpgradeInfoForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 12

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSilentManager"

    const-string/jumbo v2, "\u66f4\u65b0\u9759\u9ed8\u5347\u7ea7\u4fe1\u606fbegin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    nop

    .line 170
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSecurityDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v0

    .line 171
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->open()V

    .line 173
    const-string v3, "account_security"

    const-string v4, "account_security_accountauth"

    const-string/jumbo v5, "update_silent_info_cache_key"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x93a80

    const-string/jumbo v11, "text/json"

    .line 173
    move-object v2, v0

    invoke-virtual/range {v2 .. v11}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u66f4\u65b0\u9759\u9ed8\u5347\u7ea7\u4fe1\u606fend"

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 176
    :catch_0
    move-exception p0

    .line 177
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "\u66f4\u65b0\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f error "

    invoke-interface {v2, v1, v3, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    throw p0
.end method
