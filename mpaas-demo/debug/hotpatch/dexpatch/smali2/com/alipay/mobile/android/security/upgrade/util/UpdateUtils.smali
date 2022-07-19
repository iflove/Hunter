.class public Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateUtils"

.field private static updateLock:Ljava/lang/Object;

.field private static updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

.field private static upgradeDialogTime:J

.field private static upgradeTimeInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeDialogTime:J

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildClientUpgradeReq()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;
    .locals 5

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;

    invoke-direct {v2}, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->clientId:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->osVersion:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->productId:Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->productVersion:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/ClientFileUtils;->getApkMD5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->apkMd5:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->did:Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->channel:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->userId:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->clientPostion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "UpdateUtils"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileBrand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->mobileBrand:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->mobileModel:Ljava/lang/String;

    .line 80
    const-string v0, "android"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->osType:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 82
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    const-string v0, "4G"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->netType:Ljava/lang/String;

    .line 91
    goto :goto_1

    .line 93
    :cond_1
    const-string v0, "WIFI"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->netType:Ljava/lang/String;

    .line 94
    goto :goto_1

    .line 87
    :cond_2
    const-string v0, "3G"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->netType:Ljava/lang/String;

    .line 88
    goto :goto_1

    .line 84
    :cond_3
    const-string v0, "2G"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->netType:Ljava/lang/String;

    .line 85
    nop

    .line 98
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->extInfos:Ljava/util/Map;

    .line 99
    return-object v2
.end method

.method public static checkNetWorkCondition(Ljava/lang/String;)Z
    .locals 8

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8fd4\u56de\u7684\u53ef\u5f39\u6846\u7684 netType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateUtils"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    nop

    .line 147
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncNetType toUpperCase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    .line 152
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "\u5927\u5c0f\u5199\u8f6c\u6362\u5f02\u5e38"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_0
    move-object v1, v0

    .line 153
    :goto_1
    nop

    .line 154
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    .line 155
    const-string v4, "ALL"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_a

    if-eqz p0, :cond_1

    .line 156
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_1
    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_5

    .line 164
    :cond_2
    nop

    .line 165
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    .line 166
    if-ne v6, v3, :cond_3

    .line 167
    const-string v0, "2G"

    goto :goto_3

    .line 168
    :cond_3
    const/4 v4, 0x2

    if-ne v4, v3, :cond_4

    .line 169
    const-string v0, "3G"

    goto :goto_3

    .line 170
    :cond_4
    const/4 v4, 0x4

    if-ne v4, v3, :cond_5

    .line 171
    const-string v0, "4G"

    goto :goto_3

    .line 172
    :cond_5
    const/4 v4, 0x3

    if-ne v4, v3, :cond_6

    .line 173
    const-string v0, "WIFI"

    .line 175
    :cond_6
    :goto_3
    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 177
    :cond_8
    goto :goto_4

    .line 179
    :cond_9
    const/4 v6, 0x0

    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u5ba2\u6237\u7aef\u7c7b\u578b\u4e3a  currentNetWorkType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 158
    :cond_a
    :goto_5
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    .line 159
    if-eqz p0, :cond_b

    .line 160
    goto :goto_6

    .line 159
    :cond_b
    const/4 v6, 0x0

    .line 162
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u670d\u52a1\u7aef\u8fd4\u56de\u7c7b\u578b\u4e3aall\uff0c\u5f53\u524d\u73af\u5883\u662f\u5426\u53ef\u7528 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    nop

    .line 181
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u670d\u52a1\u7aef\u8fd4\u56de\u5347\u7ea7\u5f39\u6846\u7f51\u7edc\u7c7b\u578b\u4e0e\u5ba2\u6237\u7aef\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\u662f\u5426\u4e00\u81f4\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return v6
.end method

.method public static checkRPCDataIsValid(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 5

    .line 297
    nop

    .line 298
    const/4 v0, 0x0

    const-string v1, "UpdateUtils"

    if-nez p0, :cond_0

    .line 299
    nop

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u68c0\u67e5RPC-data,\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    .line 302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    .line 303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    .line 304
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 305
    :cond_2
    :goto_0
    nop

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u68c0\u67e5RPC-data,\u6570\u636e\u4e0d\u5408\u6cd5,\u6253\u5370\u6570\u636e resultStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " downloadURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fullMd5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " guideMemo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " netType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newestVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " upgradeVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u68c0\u67e5RPC-data,dataIsValid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return v0
.end method

.method public static checkSyncDataIsValid(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Z
    .locals 5

    .line 273
    nop

    .line 274
    const/4 v0, 0x0

    const-string v1, "UpdateUtils"

    if-nez p0, :cond_0

    .line 275
    nop

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u68c0\u67e5SYNC-data,\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->downloadURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->fullMd5:Ljava/lang/String;

    .line 278
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->guideMemo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->netType:Ljava/lang/String;

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->newestVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    .line 280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 281
    :cond_2
    :goto_0
    nop

    .line 282
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u68c0\u67e5SYNC-data,\u6570\u636e\u4e0d\u5408\u6cd5\uff0c\u6253\u5370\u6570\u636e resultStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " downloadURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->downloadURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fullMd5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->fullMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " guideMemo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->guideMemo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " netType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->netType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newestVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->newestVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " upgradeVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u68c0\u67e5SYNC-data,dataIsValid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return v0
.end method

.method public static checkUpgradePackageState(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)I
    .locals 7

    .line 323
    const-string v0, "UpdateUtils"

    const/4 v1, 0x3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController;->isInBlackChannel()Z

    move-result v2

    .line 324
    if-eqz v2, :cond_0

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u5f39\u6846\u524d\u6821\u9a8c\uff0c\u8be5\u6e20\u9053\u5728\u9ed1\u540d\u5355\uff0c\u4e0d\u5f39\u9759\u9ed8\u63d0\u793a\u6846"

    invoke-interface {p0, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return v1

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    .line 329
    iget-object p0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/MD5Util;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u9759\u9ed8\u4e0b\u8f7d\u6216\u8005\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u6587\u4ef6\u68c0\u6d4b\uff0c\u670d\u52a1\u7aef\u4e0b\u53d1\u7684md5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u4e0b\u8f7d\u5230\u7684\u6587\u4ef6\u7684md5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-static {p0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 341
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u9759\u9ed8\u4e0b\u8f7d\u6216\u8005\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u6587\u4ef6\u68c0\u6d4b\uff0capk\u6587\u4ef6MD5\u6821\u9a8c\u5931\u8d25\uff01"

    invoke-interface {p0, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return v1

    .line 344
    :cond_2
    const/4 p0, 0x2

    return p0

    .line 337
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string/jumbo v2, "\u9759\u9ed8\u4e0b\u8f7d\u6216\u8005\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u6587\u4ef6\u68c0\u6d4b\uff0c\u672c\u5730 md5\u6216\u670d\u52a1\u7aef\u7ed9\u7684fullmd5\u4e3a\u7a7a"

    invoke-interface {p0, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return v1

    .line 346
    :cond_4
    return v1

    .line 348
    :catch_0
    move-exception p0

    .line 349
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "checkSilentUpdateState error "

    invoke-interface {v2, v0, v3, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    return v1
.end method

.method public static checkUserIdCondition(Ljava/lang/String;)Z
    .locals 7

    .line 187
    nop

    .line 188
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 190
    const/4 v1, 0x0

    const-string v2, "UpdateUtils"

    if-nez v0, :cond_1

    .line 191
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 192
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userinfo \u4e3a\u7a7a,\u5ef6\u8fdf500ms\u518d\u53bb,i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 194
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    goto :goto_1

    .line 198
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5ef6\u671f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s\u53d6\u5230\u7684uid\u4e3a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v3

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 203
    :cond_1
    :goto_1
    nop

    .line 204
    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    :cond_2
    const/4 v1, 0x1

    .line 207
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5f53\u524d\u7528\u6237uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sync\u4e0b\u53d1\u7684uid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u662f\u5426\u6ee1\u8db3\u7528\u6237\u7ef4\u5ea6\u6761\u4ef6isUserIdConform= "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v2, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v1
.end method

.method public static convert(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 2

    .line 103
    nop

    .line 104
    if-eqz p0, :cond_0

    .line 105
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->downloadURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->fullMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->guideMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->memo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->memo:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->newestVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 111
    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->resultStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    .line 112
    iget-object p0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->upgradeVersion:Ljava/lang/String;

    iput-object p0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0
.end method

.method public static convert(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 2

    .line 118
    nop

    .line 119
    if-eqz p0, :cond_0

    .line 120
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->downloadURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->fullMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->guideMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->guideMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->memo:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->newestVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 126
    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->netType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->userId:Ljava/lang/String;

    .line 130
    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->isWifi:I

    iput v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->isWifi:I

    .line 131
    iget p0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->silentType:I

    iput p0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->silentType:I

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0
.end method

.method private static getCpuInfos()Ljava/lang/String;
    .locals 8

    .line 367
    const-string v0, "UpdateUtils"

    const-string v1, ""

    .line 369
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 370
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 374
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 375
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 376
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 379
    :cond_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 380
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 381
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 384
    :cond_1
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 385
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v3, v4

    .line 386
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 390
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 391
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 393
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 395
    :cond_3
    goto :goto_3

    .line 396
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpu\u4fe1\u606f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_4

    .line 398
    :catch_0
    move-exception v2

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "\u83b7\u53d6cpu\u4fe1\u606f\u5f02\u5e38"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :goto_4
    return-object v1
.end method

.method private static getExtInfos()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->getCpuInfos()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpuInstructionSets"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-object v0
.end method

.method public static getUpdateRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 1

    .line 53
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object v0
.end method

.method public static installApk(Ljava/lang/String;)V
    .locals 6

    .line 412
    const-string v0, "UpdateUtils"

    if-eqz p0, :cond_1

    .line 413
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 414
    const-class v2, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 415
    const-string/jumbo v2, "update_info_cache_on_error_key"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->removeUpgradeInfoForSilent()V

    .line 418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 420
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object p0

    .line 422
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_0

    .line 423
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "current version >=24"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {p0, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 426
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    goto :goto_0

    .line 429
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "current version <24"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 435
    :catch_0
    move-exception p0

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "installApk error"

    invoke-interface {v1, v0, v2, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 437
    :cond_1
    :goto_1
    nop

    .line 438
    :goto_2
    return-void
.end method

.method public static isInAlertWhiteList(Ljava/lang/String;)Z
    .locals 7

    .line 446
    nop

    .line 447
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getCanAlertPages()[Ljava/lang/String;

    move-result-object v0

    .line 448
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 449
    array-length v2, v0

    .line 450
    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 451
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f39\u6846\u767d\u540d\u5355:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdateUtils"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p0, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    const/4 v3, 0x1

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 457
    :cond_2
    return v1
.end method

.method public static isInUpgradeInterval()Z
    .locals 7

    .line 254
    nop

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeDialogTime:J

    sub-long/2addr v0, v2

    .line 256
    sget-wide v2, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeTimeInterval:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 257
    const-wide/32 v2, 0x2bf20

    sput-wide v2, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeTimeInterval:J

    .line 259
    :cond_0
    sget-wide v2, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeTimeInterval:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 260
    const/4 v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v2, 0x0

    .line 262
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5b9e\u9645\u65f6\u95f4\u95f4\u9694realTimeInterval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " \u89c4\u5b9a\u65f6\u95f4\u95f4\u9694upgradeTimeInterval = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeTimeInterval:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " \u5728\u9759\u9ed8\u671f"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateUtils"

    invoke-interface {v3, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return v2
.end method

.method public static setPopUpgradeDialogTime(J)V
    .locals 1

    .line 234
    sput-wide p0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeDialogTime:J

    .line 235
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    const-string p1, "UpdateUtils"

    const-string/jumbo v0, "\u5f39\u6846\u8bbe\u7f6e\u9759\u9ed8\u65f6\u95f4"

    invoke-interface {p0, p1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setUpdateRes(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 0

    .line 57
    sput-object p0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 58
    return-void
.end method

.method public static setUpgradeTimeInterval(I)V
    .locals 3

    .line 244
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->upgradeTimeInterval:J

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6839\u636esync\u4e0b\u53d1\u7684\u9759\u9ed8\u671f\u95f4\u9694\uff0c\u66f4\u65b0\u672c\u5730\u9759\u9ed8\u671f\u95f4\u9694\u503c\uff0csync\u4e0b\u53d1\u9759\u9ed8\u671f\u4e3atimeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UpdateUtils"

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static updateNotify()V
    .locals 2

    .line 223
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static waitUpdateDialog()V
    .locals 4

    .line 213
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "UpdateUtils"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :goto_0
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
