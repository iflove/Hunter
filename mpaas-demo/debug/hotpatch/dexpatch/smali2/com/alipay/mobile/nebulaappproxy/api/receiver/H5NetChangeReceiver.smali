.class public Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;
.super Ljava/lang/Object;
.source "H5NetChangeReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;


# static fields
.field private static a:J

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 52
    const-string v0, "H5NetChangeReceiver"

    const-string/jumbo v1, "nowNet is wifi"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->getWifiDownloadMap()Ljava/util/Map;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 61
    sget-wide v3, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->a:J

    sub-long v3, v1, v3

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "time interval :  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , sIsLastTriggerDownloadProcessDone : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b:Z

    if-nez v0, :cond_1

    goto :goto_2

    .line 70
    :cond_1
    sput-wide v1, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->a:J

    .line 74
    nop

    .line 75
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 76
    const-wide/16 v1, 0x3c

    if-eqz v0, :cond_2

    .line 77
    const-string v3, "h5_appDownloadDelaySeconds"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    .line 76
    :cond_2
    move-wide v3, v1

    .line 81
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v1, v3

    .line 83
    :cond_4
    :goto_1
    sput-wide v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sAppDownloadDelaySeconds:J

    .line 85
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b:Z

    .line 88
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 95
    :cond_5
    return-void

    .line 67
    :cond_6
    :goto_2
    return-void

    .line 55
    :cond_7
    :goto_3
    const-string v1, "getWifiDownloadMap is null "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 11

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "H5NetChangeReceiver"

    const-string/jumbo v1, "net is not WIFI now"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 105
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "H5_downloadApp_user_net_change"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->getWifiDownloadMap()Ljava/util/Map;

    move-result-object v3

    move-object v4, v1

    .line 109
    .local v4, "map":Ljava/util/Map;
    move-object v4, v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 111
    .local v8, "id":Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 112
    .local v9, "version":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 113
    const-class v10, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 114
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 115
    .local v5, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v5, v10

    if-eqz v10, :cond_1

    .line 116
    invoke-static {v8}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->remove(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v10

    .line 118
    invoke-interface {v10, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v10

    .line 119
    .local v6, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v6, v10

    if-eqz v10, :cond_1

    .line 120
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v10

    .line 121
    .local v7, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v7, v10

    invoke-interface {v10, v6}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 122
    const-string/jumbo v10, "net_change"

    invoke-interface {v7, v1, v10}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 125
    .end local v5    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v6    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v7    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_1
    goto :goto_0

    .line 126
    :cond_2
    const-string v1, "H5NetChangeReceiver"

    const-string/jumbo v3, "net change not wifi"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_1

    .line 136
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    .end local v4    # "map":Ljava/util/Map;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "version":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "H5NetChangeReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V
    .locals 2
    .param p1, "lastNet"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "nowNet"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 39
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-ne p2, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->a()V

    return-void

    .line 44
    :cond_0
    const-string v0, "H5NetChangeReceiver"

    const-string/jumbo v1, "nowNet is not wifi"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method
