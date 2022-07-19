.class public Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;
.super Ljava/lang/Object;
.source "H5ReceiverUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ReceiverUtil"

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 4

    .line 72
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string v0, "H5ReceiverUtil"

    const-string v1, "h5AppProvider == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 79
    :cond_0
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 81
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "h5_unzipAllPreUnzipPackages"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    return-void

    .line 87
    :cond_1
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 89
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 90
    return-void

    .line 92
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->IO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V

    .line 165
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 168
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownloadRandom(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v0

    .line 171
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 175
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 15
    .param p0, "scene"    # Ljava/lang/String;

    .line 191
    const-class v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 193
    .local v2, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 195
    .local v3, "time":J
    nop

    .line 196
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestAppInfo()Ljava/util/Map;

    move-result-object v0

    .line 197
    .local v0, "nebulaList":Ljava/util/Map;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 198
    .local v5, "getFromDBTime":J
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 199
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v1

    move-object v10, v9

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "H5ReceiverUtil"

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 200
    .local v11, "appId":Ljava/lang/String;
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 201
    .local v9, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v9, v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->downloadH5App(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v13

    .line 202
    if-eqz v13, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v13

    .line 204
    .local v10, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v10, v13

    invoke-interface {v13, v9}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 205
    invoke-interface {v10}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v13

    .line 206
    .local v8, "isAvailable":Z
    move v8, v13

    if-nez v13, :cond_0

    .line 207
    invoke-interface {v10, v1, p0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 209
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "preDownload appId:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " version:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " hasDownload:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v8    # "isAvailable":Z
    .end local v9    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v10    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v11    # "appId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 214
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "preDownload done AllCost:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " getFromDBTime:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " size:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "nebulaList":Ljava/util/Map;
    .end local v3    # "time":J
    .end local v5    # "getFromDBTime":J
    :cond_3
    return-void
.end method

.method private static c()V
    .locals 6

    .line 181
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->listSync:Ljava/util/List;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->listSync:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "sync":Ljava/lang/String;
    const-string v3, "H5ReceiverUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleNotLoginSyncData "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->execute(Ljava/lang/String;)V

    .line 185
    .end local v2    # "sync":Ljava/lang/String;
    goto :goto_0

    .line 186
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->listSync:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static downLoadNebula(Ljava/lang/String;)V
    .locals 3
    .param p0, "scene"    # Ljava/lang/String;

    .line 222
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 224
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public static download(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/nebula/appcenter/H5AppDBService;Ljava/lang/String;)V
    .locals 6
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "getFromNebula"    # Z
    .param p4, "h5AppDBService"    # Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .param p5, "scene"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 307
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz p3, :cond_0

    .line 309
    invoke-interface {p4, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 315
    :goto_0
    const-string v1, "H5ReceiverUtil"

    if-nez v0, :cond_1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appInfo == null getFromNebula:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void

    .line 321
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->downloadH5App(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    .line 322
    if-eqz v2, :cond_3

    .line 323
    const-class v2, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 324
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 325
    .local v4, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v4, v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 326
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v2

    const/4 v5, 0x0

    .line 327
    .local v5, "isAvailable":Z
    move v5, v2

    if-nez v2, :cond_2

    .line 328
    invoke-interface {v4, v3, p5}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 330
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryNebulaApps appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v4    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v5    # "isAvailable":Z
    :cond_3
    return-void
.end method

.method public static onLoginEvent(ZZZ)V
    .locals 3
    .param p0, "switchAccount"    # Z
    .param p1, "firstLogin"    # Z
    .param p2, "withPwd"    # Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onLoginEvent] switchAccount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstLogin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", withPwd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ReceiverUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->c()V

    .line 46
    if-eqz p0, :cond_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->clearPreferAppList()V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->clearAppScoreInfo()V

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->b()V

    return-void

    .line 52
    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    sget v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 57
    sput v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 58
    const-string v0, "login has receive 3 time not handler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->checkPreInstallApp()V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V

    .line 65
    const-string v0, "auto_login"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->downLoadNebula(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a()V

    .line 69
    return-void

    .line 53
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->b()V

    return-void
.end method
