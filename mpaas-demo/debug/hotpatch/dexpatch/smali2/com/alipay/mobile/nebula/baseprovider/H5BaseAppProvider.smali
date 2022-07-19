.class public Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
.super Ljava/lang/Object;
.source "H5BaseAppProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    }
.end annotation


# static fields
.field private static final MP_MDS_MAX_INTERVAL:J = 0x15180L

.field public static final TAG:Ljava/lang/String; = "H5BaseAppProvider"

.field private static final config:Ljava/lang/String; = "h5_enablestablerpc"


# instance fields
.field private bundleId:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private env:Ljava/lang/String;

.field public h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

.field public h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field public h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

.field public h5Service:Lcom/alipay/mobile/h5container/service/H5Service;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    .line 83
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    if-nez v0, :cond_2

    .line 90
    const-string v0, "H5BaseAppProvider"

    const-string v1, "h5AppBizRpcProvider == null use H5AppBizHttpProviderImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 94
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p2, "x2"    # J

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->updateAppWithReqFinally(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V

    return-void
.end method

.method private static enableResDegrade()Z
    .locals 3

    .line 1303
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1304
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 1305
    const-string v1, "h5_nbresmode"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    const/4 v2, 0x0

    return v2

    .line 1310
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private getInstallPath(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 758
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 760
    .local v0, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v0, v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 761
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v1

    .line 762
    return-object v1

    .line 764
    .end local v0    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-object v0
.end method

.method private getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    .locals 2
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    .line 644
    new-instance v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;-><init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;)V

    const/4 v1, 0x0

    .line 645
    .local v1, "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    move-object v1, v0

    iput-boolean p2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->isLimit:Z

    .line 646
    iput-boolean p1, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->success:Z

    .line 647
    return-object v1
.end method

.method private getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1225
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1226
    return-object v0

    .line 1228
    :cond_0
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1229
    const-string v2, "launchParams"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1230
    return-object v0
.end method

.method private queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 984
    return-object v1

    .line 986
    :cond_0
    if-nez p2, :cond_1

    .line 987
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-eqz v0, :cond_2

    .line 990
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v2, v1

    .line 991
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 992
    return-object v2

    .line 995
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    return-object v1
.end method

.method private updateAppWithReqFinally(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    .locals 20
    .param p1, "param"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p2, "startTime"    # J

    .line 568
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[updateAppWithReqFinally] with param: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5BaseAppProvider"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getUpdateCallback()Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    move-result-object v4

    .line 573
    .local v4, "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    const/4 v0, 0x0

    .line 574
    .local v0, "isLimitReq":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 575
    .local v5, "executeTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppMap()Ljava/util/Map;

    move-result-object v7

    .line 578
    .local v7, "appMap":Ljava/util/Map;
    const/4 v8, 0x0

    .line 580
    .local v8, "fullRpc":Z
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 581
    :cond_0
    const/4 v8, 0x1

    .line 584
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v9

    .line 586
    .local v9, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 588
    .local v10, "appReqTime":J
    const/4 v12, 0x0

    if-eqz v9, :cond_2

    .line 589
    nop

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isDownLoadAmr()Z

    move-result v13

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isDownloadRandom()Z

    move-result v14

    .line 590
    invoke-virtual {v1, v9, v13, v14, v8}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->request(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;ZZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v13

    move-object v14, v12

    .line 594
    .local v14, "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    move-object v14, v13

    iget-boolean v13, v13, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->success:Z

    .line 595
    .local v13, "success":Z
    iget-boolean v15, v14, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->isLimit:Z

    move v0, v15

    .line 596
    .end local v14    # "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    goto :goto_0

    .line 597
    .end local v13    # "success":Z
    :cond_2
    const/4 v13, 0x0

    .line 601
    .restart local v13    # "success":Z
    :goto_0
    const-string v14, "H5NebulaAppRpcTimeCost"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "Total Cost:"

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move v12, v8

    move-object/from16 v19, v9

    .end local v8    # "fullRpc":Z
    .end local v9    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v12, "fullRpc":Z
    .local v19, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    sub-long v8, v17, p2

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ThreadBeginExecuteTime:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v5, p2

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ReadyAppReqInfo "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v10, v5

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " Rpc+SaveApp:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 601
    invoke-static {v14, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    if-eqz v4, :cond_3

    .line 608
    invoke-virtual {v4, v13, v0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 612
    :cond_3
    if-eqz v0, :cond_4

    .line 614
    iget-object v8, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->setRpcIsLimit(Z)V

    .line 615
    if-eqz v7, :cond_4

    .line 616
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object/from16 v14, v16

    .line 617
    .local v14, "entry":Ljava/util/Map$Entry;
    move-object/from16 v16, v9

    .end local v14    # "entry":Ljava/util/Map$Entry;
    .local v16, "entry":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 618
    .local v9, "appId":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 620
    .local v14, "version":Ljava/lang/String;
    iget-object v15, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v15, v9, v14}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v9    # "appId":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 630
    .end local v0    # "isLimitReq":Z
    .end local v5    # "executeTime":J
    .end local v7    # "appMap":Ljava/util/Map;
    .end local v10    # "appReqTime":J
    .end local v12    # "fullRpc":Z
    .end local v13    # "success":Z
    .end local v19    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_4
    return-void

    .line 625
    :catchall_0
    move-exception v0

    .line 626
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    if-eqz v4, :cond_5

    .line 628
    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 631
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method


# virtual methods
.method public clearResourceAppCache()V
    .locals 0

    .line 1377
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 813
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    .param p4, "scene"    # Ljava/lang/String;

    .line 822
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 823
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 825
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 826
    invoke-interface {v1, p3, p4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 828
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public enableMultiProcess(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1316
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1317
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1318
    const-string v0, "h5_enableMultiProcess_new"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1320
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isXiaoChengXu(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1317
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .line 1324
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableMulti(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1326
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1327
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1328
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v0, v3

    if-eqz v3, :cond_4

    .line 1329
    const-string v3, "h5_open_multi_process"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    .line 1330
    .local v5, "value":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1331
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    move-object v6, v1

    .line 1332
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1333
    const-string v3, "all"

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    .line 1334
    nop

    .line 1335
    const-string v3, "h5_open_multi_process_blacklist"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1336
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 1337
    .local v1, "blackArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1338
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1339
    return v4

    .line 1341
    :cond_2
    return v7

    .line 1343
    .end local v1    # "blackArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1344
    return v7

    .line 1351
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    return v4
.end method

.method public getAppDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 1149
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1150
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    return-object v0

    .line 1153
    :cond_0
    return-object v1
.end method

.method public getAppFromServerWhenAppIsEmpty(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 1295
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 961
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 953
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 954
    return-object v2

    .line 956
    :cond_0
    return-object v1
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 912
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0

    .line 915
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    const-string v0, "DEBUG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TRIAL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REVIEW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 917
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 922
    return-object v1

    .line 924
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfoList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    move-object v3, v1

    .line 925
    .local v3, "appInfoList":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 928
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 929
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 930
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 933
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string/jumbo v5, "scene"

    if-nez v4, :cond_5

    const-string v4, "*"

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 939
    :cond_4
    iget-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 940
    iget-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 942
    return-object v2

    .line 934
    :cond_5
    :goto_1
    iget-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 936
    return-object v2

    .line 928
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 947
    .end local v0    # "i":I
    :cond_7
    return-object v1

    .line 926
    :cond_8
    :goto_2
    return-object v1
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 1131
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1132
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1135
    :cond_0
    return-object v1
.end method

.method public getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1140
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1141
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1144
    :cond_0
    return-object v1
.end method

.method public getConfigExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1235
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1236
    .local v2, "appDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getConfigExtra()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 1238
    .local v3, "configExtra":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v4, v1

    .line 1240
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    invoke-static {v4, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1245
    .end local v3    # "configExtra":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v1
.end method

.method public getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 770
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 772
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 773
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 774
    return-object v0

    .line 776
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-object v1
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 727
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    return-object v0

    .line 730
    :cond_0
    return-object v1
.end method

.method public getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 736
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    return-object v0

    .line 739
    :cond_0
    return-object v1
.end method

.method public getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 745
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    return-object v0

    .line 748
    :cond_0
    return-object v1
.end method

.method public getIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 1167
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1168
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    return-object v0

    .line 1171
    :cond_0
    return-object v1
.end method

.method public getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1158
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1159
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    return-object v0

    .line 1162
    :cond_0
    return-object v1
.end method

.method public getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 754
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getInstallPath(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocalReport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1208
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1209
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    return v0

    .line 1211
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageNick(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1191
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getPackageNick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1196
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1197
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 1199
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1200
    const-string/jumbo v2, "package_nick"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1202
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPackageSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1052
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1053
    iget-wide v2, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    return-wide v2

    .line 1055
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1250
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1251
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 1253
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1254
    const-string/jumbo v2, "scene"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1256
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1000
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1001
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    return-object v0

    .line 1004
    :cond_0
    return-object v1
.end method

.method public getThirdPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 1042
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1043
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    return-object v0

    .line 1046
    :cond_0
    return-object v1
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 968
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 971
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVhost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 898
    const-string v0, "H5BaseAppProvider"

    const-string v2, "h5AppDBService init fail."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-object v1

    .line 901
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v2, v1

    .line 902
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    return-object v0

    .line 905
    :cond_1
    return-object v1
.end method

.method public getWalletAppDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1038
    const-string v0, "*"

    return-object v0
.end method

.method public getWalletIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1032
    const/4 v0, 0x0

    return-object v0
.end method

.method public getlaunchParams(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 1216
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1217
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 1218
    return-object v1

    .line 1220
    :cond_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public hasPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 882
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 883
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 884
    .local v3, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v3, v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 885
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    .line 887
    .local v4, "uri":Landroid/net/Uri;
    move-object v4, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 888
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 889
    :cond_1
    return v0

    .line 888
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 891
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v3    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    return v0
.end method

.method public hasPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 876
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->hasPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    return v1
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 782
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 783
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 785
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 786
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp()Z

    .line 788
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5AppInstallCallback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 793
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 795
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 796
    invoke-interface {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp(Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)Z

    .line 798
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "async"    # Z

    .line 802
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 803
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 805
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 806
    invoke-interface {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp(Z)Z

    .line 808
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public isAutoInstall(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 976
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 979
    :cond_1
    return v1
.end method

.method public isAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 833
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 834
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 836
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 837
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v0

    .line 838
    return v0

    .line 840
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isH5App(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 846
    return v1

    .line 848
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isH5TinyApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 1115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    const/4 v0, 0x0

    return v0

    .line 1119
    :cond_0
    const/4 v0, 0x0

    .line 1120
    .local v0, "isH5TinyApp":Z
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 1121
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 1122
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    .line 1124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isH5TinyApp "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H5BaseAppProvider"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    return v0
.end method

.method public isInstalled(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 861
    if-eqz p1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    const/4 v1, 0x0

    .line 863
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 864
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isInstalled()Z

    move-result v0

    .line 865
    return v0

    .line 867
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 857
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isInstalled(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    return v1
.end method

.method public isNebulaApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1017
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "20000067"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x0

    return v0

    .line 1020
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOffline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public isRNApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1060
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    return v0
.end method

.method public isResourceApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public isSmallProgramFromOpenPlat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1361
    const/4 v0, 0x0

    return v0
.end method

.method public isUseAppX(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1366
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->useAppX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isXiaoChengXu(Ljava/lang/String;)Z
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;

    .line 1068
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "appType":Ljava/lang/String;
    const-string/jumbo v1, "nebulaH5App"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1072
    return v2

    .line 1075
    :cond_0
    const-string/jumbo v1, "nebulaNativeTinyApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    return v2

    .line 1080
    :cond_1
    const-string/jumbo v1, "nebulaH5TinyApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isH5TinyApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1082
    :cond_2
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 1084
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v1

    if-eqz v1, :cond_5

    .line 1085
    const-string v1, "h5_open_multi_process"

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v3

    .line 1086
    .local v5, "value":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1087
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v6, v3

    .line 1088
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1089
    const-string v1, "all"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    .line 1090
    nop

    .line 1091
    const-string v1, "h5_open_multi_process_blacklist"

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1093
    .local v3, "blackArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1094
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1095
    return v2

    .line 1097
    :cond_3
    return v7

    .line 1099
    .end local v3    # "blackArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1100
    return v7

    .line 1109
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    return v2
.end method

.method public makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 32

    .line 172
    move-object/from16 v1, p0

    const-string v2, "asyncReqRate"

    const-string/jumbo v3, "no"

    const-string v4, "H5BaseAppProvider"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppReq()Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    move-object v6, v0

    goto :goto_0

    .line 173
    :cond_0
    move-object v6, v0

    .line 176
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppMap()Ljava/util/Map;

    move-result-object v7

    .line 178
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_1

    .line 179
    iput v9, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I

    goto :goto_1

    .line 181
    :cond_1
    iput v8, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I

    .line 185
    :goto_1
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "async"

    iput-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 190
    :cond_2
    const-string v0, "h5_reqModeSyncForceMgw"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 191
    xor-int/2addr v0, v9

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "[makeAppReq] fromWholeNetwork: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isFromWholeNetwork()Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isFromWholeNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_sideMgw"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    goto :goto_2

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_normal"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 201
    :cond_4
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getResPackageList()Ljava/util/List;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 204
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 208
    :cond_5
    nop

    .line 209
    const-string v11, ""

    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 210
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v11

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 212
    goto :goto_3

    .line 215
    :cond_6
    move-object v12, v11

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "invoke rpc queryAppId "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    nop

    .line 222
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    const-string v12, "debug"

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v13, "YES"

    const-string/jumbo v14, "version"

    const-string v15, "app_id"

    if-eqz v0, :cond_9

    .line 224
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 225
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 226
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 227
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 228
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v15, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v14, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    goto :goto_4

    .line 235
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "dev mode query "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 239
    move-object v2, v6

    move-object v5, v13

    goto/16 :goto_1c

    .line 240
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 241
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 242
    if-eqz v7, :cond_b

    .line 244
    invoke-static {}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->enableResDegrade()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 245
    const-string v12, "*"

    invoke-interface {v7, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_5

    .line 247
    :cond_a
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_b
    const/4 v9, 0x1

    goto :goto_5

    .line 256
    :cond_c
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 259
    if-eqz v0, :cond_e

    .line 260
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 262
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v7, :cond_d

    .line 264
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 265
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v5, " add CommonResourceAppList to query "

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_d
    goto :goto_6

    .line 275
    :cond_e
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_11

    .line 277
    nop

    .line 278
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_11

    .line 280
    nop

    .line 281
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;->getNebulaAppCallbackList()Ljava/util/List;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    .line 284
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v5

    .line 285
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 286
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 287
    if-eqz v7, :cond_f

    .line 288
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 289
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, " add NebulaCommonInfo to query "

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    nop

    .line 292
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_f
    const/4 v8, 0x2

    goto :goto_8

    .line 298
    :cond_10
    const/4 v8, 0x2

    goto :goto_7

    .line 304
    :cond_11
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-nez v0, :cond_12

    goto/16 :goto_1e

    .line 310
    :cond_12
    if-eqz v7, :cond_22

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 312
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 314
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getNormalReqRate()D

    move-result-wide v8

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "[makeAppReq] normalReqRate : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 320
    move-wide/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[makeAppReq] asyncRateConfig : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v8

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 328
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v11

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 330
    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 331
    iput-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isForceRpc()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 336
    nop

    .line 337
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v21, v13

    invoke-interface {v0, v8, v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v13

    .line 338
    if-eqz v13, :cond_13

    iget-object v0, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    move-object/from16 v22, v7

    move-object v7, v0

    goto :goto_a

    :cond_13
    move-object/from16 v22, v7

    move-object/from16 v7, v20

    .line 339
    :goto_a
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->rpcIsLimit()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 341
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getLimitReqRate()D

    move-result-wide v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v30, v23

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    move-object v2, v6

    move-wide/from16 v5, v30

    goto/16 :goto_f

    .line 346
    :cond_14
    :try_start_3
    invoke-direct {v1, v13}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 347
    nop

    .line 348
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_16

    .line 349
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 350
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v24, :cond_15

    .line 351
    move-object/from16 v24, v2

    :try_start_4
    const-string v2, "ar"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_b

    .line 350
    :cond_15
    move-object/from16 v24, v2

    goto :goto_b

    .line 348
    :cond_16
    move-object/from16 v24, v2

    .line 354
    move-object/from16 v23, v20

    :goto_b
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 355
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v23, v5

    move-object v2, v6

    int-to-double v5, v0

    goto :goto_f

    .line 358
    :cond_17
    move-object/from16 v23, v5

    move-object v2, v6

    if-eqz v12, :cond_19

    :try_start_5
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 359
    iget v0, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 360
    iget v0, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v5, v0

    goto :goto_f

    .line 362
    :cond_18
    const-string v0, "common"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-double v5, v0

    goto :goto_c

    .line 366
    :catchall_0
    move-exception v0

    goto :goto_e

    .line 368
    :cond_19
    move-wide/from16 v5, v17

    :goto_c
    goto :goto_f

    .line 366
    :catchall_1
    move-exception v0

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v24, v2

    :goto_d
    move-object/from16 v23, v5

    move-object v2, v6

    .line 367
    :goto_e
    :try_start_6
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide/from16 v5, v17

    .line 371
    :goto_f
    const-wide v25, 0x40f5180000000000L    # 86400.0

    cmpl-double v0, v5, v25

    if-lez v0, :cond_1a

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v27, v12

    const-string/jumbo v12, "updateRate exceed max value:"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-wide/from16 v5, v25

    goto :goto_10

    .line 371
    :cond_1a
    move-object/from16 v27, v12

    .line 376
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "lastUpdateTime:"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " updateRate:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sub-long v25, v25, v28

    .line 380
    const-wide/16 v28, 0x3e8

    move-object v7, v14

    move-object v12, v15

    div-long v14, v25, v28

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v2

    const-string v2, ":diff(\u79d2):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " updateRate(\u79d2):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 383
    long-to-double v14, v14

    const-string v0, "appId:"

    cmpg-double v2, v14, v5

    if-gez v2, :cond_1b

    .line 384
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " timeDiff < updateRate, not to add query"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object v14, v7

    move-object v15, v12

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v7, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v12, v27

    goto/16 :goto_9

    .line 388
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " match time to add query"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz v13, :cond_1e

    .line 392
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 393
    if-eqz v0, :cond_1e

    .line 394
    const-string v2, "h5_updateCurrentAppUpdateTime"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 396
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v0, v8, v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 377
    :cond_1c
    move-object/from16 v25, v2

    move-object v7, v14

    move-object v12, v15

    goto :goto_11

    .line 334
    :cond_1d
    move-object/from16 v24, v2

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v22, v7

    move-object/from16 v27, v12

    move-object/from16 v21, v13

    move-object v7, v14

    move-object v12, v15

    .line 404
    :cond_1e
    :goto_11
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 405
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "add query resource : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "version : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v2, "t"

    const-string/jumbo v5, "res"

    invoke-virtual {v0, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1f
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v5, v23

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    move-object v14, v7

    move-object v15, v12

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v7, v22

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v12, v27

    goto/16 :goto_9

    .line 415
    :cond_20
    move-object/from16 v25, v6

    move-object/from16 v22, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object v7, v14

    move-object v12, v15

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_21

    .line 417
    :try_start_8
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v2, v25

    :try_start_9
    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 420
    goto :goto_13

    .line 418
    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    move-object/from16 v2, v25

    .line 419
    :goto_12
    :try_start_a
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 415
    :cond_21
    move-object/from16 v2, v25

    goto :goto_13

    .line 310
    :cond_22
    move-object v2, v6

    move-object/from16 v22, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object v7, v14

    move-object v12, v15

    .line 426
    :goto_13
    if-eqz v22, :cond_23

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_23

    .line 431
    move-object/from16 v5, v21

    const/4 v9, 0x0

    goto/16 :goto_1d

    .line 436
    :cond_23
    nop

    .line 437
    :try_start_b
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 439
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 440
    if-eqz v0, :cond_24

    .line 441
    const-string v5, "h5_enablestablerpc"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 443
    const/16 v16, 0x0

    goto :goto_14

    .line 446
    :cond_24
    const/16 v16, 0x1

    :goto_14
    if-eqz v16, :cond_26

    .line 447
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v0, :cond_25

    .line 448
    move-object/from16 v5, v21

    :try_start_c
    iput-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_15

    .line 452
    :catch_2
    move-exception v0

    goto :goto_16

    .line 447
    :cond_25
    move-object/from16 v5, v21

    goto :goto_15

    .line 446
    :cond_26
    move-object/from16 v5, v21

    .line 454
    :goto_15
    goto :goto_17

    .line 452
    :catch_3
    move-exception v0

    move-object/from16 v5, v21

    .line 453
    :goto_16
    :try_start_d
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    :goto_17
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 460
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    .line 461
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestLocalReportAppVersion()Ljava/util/Map;

    move-result-object v0

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 465
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 466
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_28

    .line 467
    nop

    .line 468
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 469
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_27

    .line 470
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_27

    .line 471
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 472
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 473
    nop

    .line 474
    invoke-virtual {v6, v14, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_27
    goto :goto_18

    .line 480
    :cond_28
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v0

    .line 481
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppListWithStrategy(I)Ljava/util/List;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2a

    .line 483
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 484
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "H5AppScoreList "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1, v13}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v14

    .line 486
    if-eqz v14, :cond_29

    iget-object v14, v14, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    goto :goto_1a

    :cond_29
    move-object/from16 v14, v20

    :goto_1a
    invoke-virtual {v6, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    goto :goto_19

    .line 491
    :cond_2a
    const-string v0, "H5NebulaAppRpcTimeCost"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ReadyAppReqInfo getLocalAppInfo cost "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " getAllAppTime\uff1a"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 491
    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 495
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->localAppInfo:Ljava/lang/String;

    .line 500
    :cond_2b
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    .line 501
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getInstalledApp()Ljava/util/Map;

    move-result-object v0

    .line 502
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 504
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 505
    nop

    .line 506
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 507
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 508
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    goto :goto_1b

    .line 513
    :cond_2c
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v0, :cond_2d

    .line 515
    :try_start_e
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->existed:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 518
    goto :goto_1c

    .line 516
    :catch_4
    move-exception v0

    .line 517
    :try_start_f
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    :cond_2d
    :goto_1c
    const/4 v9, 0x1

    :goto_1d
    const-string v0, "android"

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->platform:Ljava/lang/String;

    .line 526
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    .line 527
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->system:Ljava/lang/String;

    .line 528
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    .line 529
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 530
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    .line 535
    :cond_2e
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v0

    .line 537
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 538
    const-string v0, "appReq.bundleid is null not send request "

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x0

    return-object v2

    .line 542
    :cond_2f
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 543
    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->preferLocal:Ljava/lang/String;

    .line 544
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 545
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 546
    if-eqz v2, :cond_30

    .line 547
    const-string v5, "h5_enablepreferlocal"

    .line 548
    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 551
    const-string v2, "NO"

    iput-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->preferLocal:Ljava/lang/String;

    .line 556
    :cond_30
    if-eqz v9, :cond_31

    .line 557
    return-object v0

    .line 559
    :cond_31
    const-string v0, " timeDiff < updateRate, this req is not send"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    goto :goto_1f

    .line 305
    :cond_32
    :goto_1e
    const-string v0, "h5AppBizRpcProvider == null."

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 306
    const/4 v2, 0x0

    return-object v2

    .line 561
    :catchall_3
    move-exception v0

    .line 562
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :goto_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public offlineFromOpenPlat(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 1300
    return-void
.end method

.method public queryAllH5AppVersionFromAppCenter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method public request(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;ZZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    .locals 16
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .param p2, "downLoad"    # Z
    .param p3, "downloadRandom"    # Z
    .param p4, "fullRpc"    # Z

    .line 656
    move-object/from16 v1, p0

    const-string v2, "H5BaseAppProvider"

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;->app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v0

    .line 658
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v11, v5

    .line 659
    .local v11, "saveTime":Ljava/lang/Long;
    if-eqz v0, :cond_9

    .line 660
    iget-object v5, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-nez v5, :cond_0

    .line 661
    const-string v5, "h5AppDBService init fail."

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 666
    :cond_0
    const-string v5, "limit"

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v12, 0x1

    if-eqz v5, :cond_1

    .line 667
    invoke-direct {v1, v3, v12}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 669
    :cond_1
    iget-object v5, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->rpcIsLimit()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 670
    iget-object v5, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->setRpcIsLimit(Z)V

    .line 674
    :cond_2
    const-string/jumbo v5, "result_code_not_100"

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 675
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 678
    :cond_3
    const-string/jumbo v5, "not_login"

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 680
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 684
    :cond_4
    iget-object v5, v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    if-eqz v5, :cond_8

    .line 685
    const-string v6, ""

    .line 686
    .local v6, "scene":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 687
    const-string v7, "full_rpc_scene"

    move-object v6, v7

    move-object v13, v6

    goto :goto_0

    .line 686
    :cond_5
    move-object v13, v6

    .line 690
    .end local v6    # "scene":Ljava/lang/String;
    .local v13, "scene":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    move-object v6, v0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 693
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v5, "list":Ljava/util/List;
    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 695
    .local v7, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v8, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    nop

    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 698
    :cond_6
    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 699
    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 700
    .local v7, "id":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    nop

    .end local v7    # "id":Ljava/lang/String;
    goto :goto_2

    .line 704
    :cond_7
    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->setNebulaAppCallback(ILjava/util/List;)V

    .line 706
    const-string v6, "H5NebulaAppRpcTimeCost"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SaveAppTime  cost "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v8, v14

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-direct {v1, v12, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 711
    .end local v5    # "list":Ljava/util/List;
    .end local v13    # "scene":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "save db fail."

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2

    .line 716
    :cond_9
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 718
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v11    # "saveTime":Ljava/lang/Long;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v5, "updateApp exception"

    invoke-static {v2, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    invoke-direct {v1, v3, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    return-object v2
.end method

.method public setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 3
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 98
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    const-string v1, "H5BaseAppProvider"

    if-nez v0, :cond_3

    .line 99
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->bundleId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string/jumbo v2, "nebulamng_bundleid"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStringValueFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->bundleId:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string/jumbo v2, "nebulamng_bundleid == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->channel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string/jumbo v1, "nebulamng_channel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStringValueFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->channel:Ljava/lang/String;

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v1, "offical"

    iput-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->channel:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->env:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "nebulamng_env"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStringValueFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->env:Ljava/lang/String;

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-string/jumbo v1, "production"

    iput-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->env:Ljava/lang/String;

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->channel:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->channel:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->env:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->bundleId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    .line 122
    return-object p1

    .line 124
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    const-string v0, "isInWallet == true && use H5BaseAppProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1263
    return-void
.end method

.method public syncAppManage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
    .locals 7
    .param p1, "param"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    .line 131
    if-nez p1, :cond_1

    .line 132
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string/jumbo v1, "updateApp param null!"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getUpdateCallback()Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    move-result-object v0

    .line 140
    .local v0, "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getStartTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getStartTime()J

    move-result-wide v2

    .line 144
    .local v2, "startTime":J
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isForceRpc()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    const-string v4, "URGENT_DISPLAY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    .local v4, "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    goto :goto_1

    .line 147
    .end local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_3
    const-string v4, "RPC"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    .line 149
    .restart local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :goto_1
    new-instance v5, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;-><init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    .end local v2    # "startTime":J
    .end local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    return-void

    .line 156
    :cond_4
    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_5
    return-void

    .line 160
    :catchall_0
    move-exception v2

    .line 161
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    .line 162
    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 164
    :cond_6
    const-string v1, "H5BaseAppProvider"

    const-string v3, "[updateApp] execute error!"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v2    # "t":Ljava/lang/Throwable;
    return-void
.end method
