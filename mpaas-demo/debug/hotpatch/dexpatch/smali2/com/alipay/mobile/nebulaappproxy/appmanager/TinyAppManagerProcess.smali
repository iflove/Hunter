.class public Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"


# static fields
.field public static a:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static final e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "TinyAppManagerProcess"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c:I

    .line 117
    const/4 v1, 0x4

    sput v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d:I

    .line 134
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 138
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->f:Z

    .line 139
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->g:Z

    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 103
    sput p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c:I

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "appStartParam"    # Landroid/os/Bundle;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1924
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "appIconUrl"    # Ljava/lang/String;
    .param p2, "slogan"    # Ljava/lang/String;
    .param p3, "param"    # Landroid/os/Bundle;

    .line 159
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 160
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v1

    .line 162
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "appIcon"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "appName"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "appSlogan"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 169
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "lpid":I
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lpid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    .end local v0    # "lpid":I
    :cond_0
    return-object v2

    .line 180
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method static synthetic a()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .locals 1

    .line 103
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V
    .locals 15
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "copyParams"    # Landroid/os/Bundle;
    .param p2, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "loadingType"    # Ljava/lang/String;
    .param p5, "timeout"    # I

    .line 1363
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 1364
    .local v9, "appIconUrl":Ljava/lang/String;
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 1365
    .local v10, "appName":Ljava/lang/String;
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v1, "NebulaWalletAppName"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v0, 0x1

    .line 1367
    .local v0, "enableSlogan":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 1368
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v11, v1

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v11, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    const-string v1, "h5_loadpageslogan"

    invoke-interface {v11, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    const/4 v0, 0x0

    move v12, v0

    goto :goto_0

    .line 1371
    :cond_0
    move v12, v0

    .end local v0    # "enableSlogan":Z
    .local v12, "enableSlogan":Z
    :goto_0
    const-string v0, ""

    .line 1372
    .local v0, "slogan":Ljava/lang/String;
    if-eqz v12, :cond_1

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v8, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isSmallProgramFromOpenPlat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 1375
    :cond_1
    move-object v13, v0

    .end local v0    # "slogan":Ljava/lang/String;
    .local v13, "slogan":Ljava/lang/String;
    :goto_1
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    iput-object v14, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 1376
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 1377
    invoke-static {v10, v9, v13, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object v4, p0

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V

    .line 1380
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "packageLoadingShown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1381
    invoke-virtual {v14, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setPageStatus(I)V

    .line 1382
    return-void
.end method

.method public static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 12
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1498
    if-nez p0, :cond_0

    .line 1499
    return-void

    .line 1503
    :cond_0
    if-eqz p1, :cond_4

    .line 1504
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[exitAndStartApp] h5LoadingManager status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isPageDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] h5LoadingManager has exit not startApp"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    return-void

    .line 1511
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1512
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] H5PageStatues.HAS_START_APP not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return-void

    .line 1516
    :cond_2
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1517
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] H5PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    return-void

    .line 1521
    :cond_3
    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->setPageStatue(I)V

    .line 1525
    :cond_4
    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    const-string/jumbo v3, "nebulaH5TinyApp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getStartLoadingTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 1530
    .local v6, "extraDelayTime":J
    move-wide v6, v2

    const-wide/16 v8, 0x12c

    cmp-long v10, v2, v8

    if-gtz v10, :cond_6

    cmp-long v2, v6, v4

    if-gez v2, :cond_5

    goto :goto_0

    .line 1533
    :cond_5
    sub-long/2addr v8, v6

    .end local v6    # "extraDelayTime":J
    .local v8, "extraDelayTime":J
    goto :goto_1

    .line 1531
    .end local v8    # "extraDelayTime":J
    .restart local v6    # "extraDelayTime":J
    :cond_6
    :goto_0
    const-wide/16 v8, 0x0

    .line 1536
    .end local v6    # "extraDelayTime":J
    .restart local v8    # "extraDelayTime":J
    :goto_1
    long-to-int v2, v8

    .line 1537
    .local v2, "animDelay":I
    long-to-int v3, v8

    .line 1539
    .local v3, "startAppDelay":I
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1540
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v5, 0x0

    move-object v6, v5

    .line 1541
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v6, v4

    if-eqz v4, :cond_7

    .line 1542
    const-string v4, "h5_openLoadingDelay"

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1543
    .local v5, "config":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1544
    add-int/lit16 v3, v3, 0x12c

    .line 1547
    .end local v5    # "config":Ljava/lang/String;
    :cond_7
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1548
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$6;

    invoke-direct {v5, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$6;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v10, v3

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1557
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$7;

    invoke-direct {v5, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$7;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1566
    .end local v2    # "animDelay":I
    .end local v3    # "startAppDelay":I
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v8    # "extraDelayTime":J
    return-void

    .line 1568
    :cond_8
    sget-boolean v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->f:Z

    const/16 v3, 0x1f4

    if-eqz v2, :cond_9

    .line 1569
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->f:Z

    .line 1571
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1572
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$8;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$8;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1582
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "isFirstStartApp startApp"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1586
    :cond_9
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1587
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$9;

    invoke-direct {v3, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$9;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1601
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 103
    invoke-static/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 36
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "copyParam"    # Landroid/os/Bundle;
    .param p3, "currentNbVersion"    # Ljava/lang/String;
    .param p4, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 307
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v1, "isTinyApp"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "hasAppInfo":Z
    if-eqz p1, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    .local v1, "useDev":Z
    const-string v2, ""

    .line 314
    .local v2, "nbsv":Ljava/lang/String;
    const-string v3, ""

    .line 317
    .local v3, "nbsn":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v5, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "nbsv"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    .line 318
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v9, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 320
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v9, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v4

    .line 321
    .local v4, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    const/4 v1, 0x1

    .line 322
    iget-object v2, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 323
    iget-object v3, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 324
    const-string/jumbo v9, "nbsn"

    invoke-static {v13, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v8

    .line 325
    .local v10, "nbsnParam":Ljava/lang/String;
    move-object v10, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 326
    move-object v3, v10

    .line 327
    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    :cond_1
    iget-object v9, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v15, v9, v3, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v9

    .line 330
    move-object v11, v9

    .end local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v11, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    move v0, v9

    .line 331
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "nbsn "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nbsv "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " hasAppInfo:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v4    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v10    # "nbsnParam":Ljava/lang/String;
    move/from16 v18, v0

    move/from16 v19, v1

    move-object v10, v2

    move-object v8, v3

    goto :goto_1

    .line 333
    .end local v11    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v6, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    move-object/from16 v11, p1

    move/from16 v18, v0

    move/from16 v19, v1

    move-object v10, v2

    move-object v8, v3

    const/4 v4, 0x0

    .line 337
    .end local v0    # "hasAppInfo":Z
    .end local v1    # "useDev":Z
    .end local v2    # "nbsv":Ljava/lang/String;
    .end local v3    # "nbsn":Ljava/lang/String;
    .end local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v8, "nbsn":Ljava/lang/String;
    .local v10, "nbsv":Ljava/lang/String;
    .restart local v11    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v18, "hasAppInfo":Z
    .local v19, "useDev":Z
    :goto_1
    invoke-static {v13, v11}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 339
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Landroid/os/Bundle;)V

    .line 342
    invoke-static {v12, v13}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    return-void

    .line 347
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    move-object v1, v4

    .line 348
    .local v1, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v9, v0

    .end local v1    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .local v9, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    if-eqz v0, :cond_5

    .line 349
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v9, v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->startAppLimitControl(Ljava/lang/String;)V

    .line 353
    :cond_5
    nop

    .line 354
    const-string/jumbo v0, "nbversion"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "wantNebulaVersion":Ljava/lang/String;
    nop

    .line 357
    const-string/jumbo v0, "nboffline"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "syncOffline":Ljava/lang/String;
    const-string/jumbo v0, "nbupdate"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "syncUpdate":Ljava/lang/String;
    const-string/jumbo v1, "nburl"

    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "nbUrl":Ljava/lang/String;
    const-string/jumbo v1, "nboffmode"

    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "nbOffMode":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 365
    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 366
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 367
    :cond_6
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/16 v17, 0x0

    move-object/from16 v20, v17

    .line 369
    .local v20, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object/from16 p1, v1

    .end local v20    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .local p1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_7

    .line 370
    iget-object v1, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v7, p1

    .end local p1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .local v7, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    invoke-virtual {v7, v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    goto :goto_2

    .line 369
    .end local v7    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .restart local p1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_7
    move-object/from16 v7, p1

    .end local p1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .restart local v7    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    goto :goto_2

    .line 374
    .end local v7    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_8
    const/4 v7, 0x0

    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v18, :cond_9

    .line 376
    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 379
    iget-object v1, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const v5, 0xc352

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;I)V

    .line 380
    return-void

    .line 385
    :cond_9
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 386
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 390
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v1

    iget-object v5, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v18, :cond_c

    .line 391
    :cond_b
    const-string/jumbo v0, "syncforce"

    .line 395
    :cond_c
    const-string v1, "enbsv"

    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v7

    .line 396
    .local v5, "enbsv":Ljava/lang/String;
    move-object v7, v1

    .end local v5    # "enbsv":Ljava/lang/String;
    .local v7, "enbsv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 397
    if-eqz v11, :cond_d

    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    .line 398
    :cond_d
    const-string/jumbo v0, "syncforce"

    .line 403
    :cond_e
    const/4 v1, 0x0

    .line 404
    .local v1, "isOutOfReqRate":Z
    if-eqz v18, :cond_12

    .line 405
    invoke-static {v11}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isNeedForceUpdate(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 406
    const/4 v1, 0x1

    .line 407
    const-string/jumbo v0, "syncforce"

    goto :goto_3

    .line 408
    :cond_f
    invoke-static {v13, v11}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 409
    const/4 v1, 0x1

    .line 410
    const-string/jumbo v0, "synctry"

    goto :goto_3

    .line 411
    :cond_10
    iget-object v5, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 412
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v0    # "syncUpdate":Ljava/lang/String;
    .local p1, "syncUpdate":Ljava/lang/String;
    const-string/jumbo v0, "sub package force rpc get whole package"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v0, "syncforce"

    .end local p1    # "syncUpdate":Ljava/lang/String;
    .restart local v0    # "syncUpdate":Ljava/lang/String;
    goto :goto_3

    .line 411
    :cond_11
    move-object/from16 p1, v0

    .line 415
    :goto_3
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    move-object/from16 v21, v7

    .end local v7    # "enbsv":Ljava/lang/String;
    .local v21, "enbsv":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v22, v9

    .end local v9    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .local v22, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    const-string v9, "[syncApp] outOfReqRate: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", syncUpdate: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    move/from16 v23, v1

    goto :goto_4

    .line 404
    .end local v21    # "enbsv":Ljava/lang/String;
    .end local v22    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .restart local v7    # "enbsv":Ljava/lang/String;
    .restart local v9    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :cond_12
    move-object/from16 p1, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    .end local v0    # "syncUpdate":Ljava/lang/String;
    .end local v7    # "enbsv":Ljava/lang/String;
    .end local v9    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .restart local v21    # "enbsv":Ljava/lang/String;
    .restart local v22    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .restart local p1    # "syncUpdate":Ljava/lang/String;
    move-object/from16 v9, p1

    move/from16 v23, v1

    .line 418
    .end local v1    # "isOutOfReqRate":Z
    .end local p1    # "syncUpdate":Ljava/lang/String;
    .local v9, "syncUpdate":Ljava/lang/String;
    .local v23, "isOutOfReqRate":Z
    :goto_4
    if-eqz v11, :cond_13

    .line 419
    invoke-static {v12, v11, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 420
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 421
    .local v0, "nebulaVersion":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nebulaVersion "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iput-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 423
    .end local v0    # "nebulaVersion":Ljava/lang/String;
    goto :goto_5

    .line 424
    :cond_13
    const/4 v0, 0x2

    iput v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 425
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    move-object v5, v1

    .line 426
    .local v5, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v1, v0

    .end local v5    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .local v1, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_14

    .line 427
    invoke-interface {v1, v12}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 431
    .end local v1    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_14
    :goto_5
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "targetAppId:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " wantNebulaVersion:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " syncOffline:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " syncUpdate:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " currentNbVersion:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " nbUrl:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " nbOffMode: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v7, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestMode(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v7, v4, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setAppId(Ljava/lang/String;)V

    .line 442
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v1, "synctry"

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    move-object/from16 p1, v6

    .end local v6    # "wantNebulaVersion":Ljava/lang/String;
    .local p1, "wantNebulaVersion":Ljava/lang/String;
    const-string/jumbo v6, "syncforce"

    if-nez v0, :cond_16

    .line 447
    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v26, p1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 p1, v4

    goto :goto_6

    .line 657
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v24, v2

    .end local v2    # "nbOffMode":Ljava/lang/String;
    .local v24, "nbOffMode":Ljava/lang/String;
    move-object v2, v5

    move-object/from16 v25, v3

    .end local v3    # "nbUrl":Ljava/lang/String;
    .local v25, "nbUrl":Ljava/lang/String;
    move-object v3, v9

    move-object v7, v4

    .end local v4    # "syncOffline":Ljava/lang/String;
    .local v7, "syncOffline":Ljava/lang/String;
    move-object/from16 v4, v25

    move-object v5, v11

    move-object/from16 v26, p1

    .end local p1    # "wantNebulaVersion":Ljava/lang/String;
    .local v26, "wantNebulaVersion":Ljava/lang/String;
    move-object/from16 v6, v24

    move-object/from16 p1, v7

    .end local v7    # "syncOffline":Ljava/lang/String;
    .local p1, "syncOffline":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 660
    return-void

    .line 446
    .end local v24    # "nbOffMode":Ljava/lang/String;
    .end local v25    # "nbUrl":Ljava/lang/String;
    .end local v26    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v2    # "nbOffMode":Ljava/lang/String;
    .restart local v3    # "nbUrl":Ljava/lang/String;
    .restart local v4    # "syncOffline":Ljava/lang/String;
    .local p1, "wantNebulaVersion":Ljava/lang/String;
    :cond_16
    move-object/from16 v26, p1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 p1, v4

    .line 449
    .end local v2    # "nbOffMode":Ljava/lang/String;
    .end local v3    # "nbUrl":Ljava/lang/String;
    .end local v4    # "syncOffline":Ljava/lang/String;
    .restart local v24    # "nbOffMode":Ljava/lang/String;
    .restart local v25    # "nbUrl":Ljava/lang/String;
    .restart local v26    # "wantNebulaVersion":Ljava/lang/String;
    .local p1, "syncOffline":Ljava/lang/String;
    :goto_6
    move-object/from16 v4, v26

    .end local v26    # "wantNebulaVersion":Ljava/lang/String;
    .local v4, "wantNebulaVersion":Ljava/lang/String;
    invoke-static {v14, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 451
    .local v3, "openResult":I
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v26, v7

    const-string v7, "currentNbVersion"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1a

    .line 455
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v0

    iget-object v2, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v18, :cond_19

    .line 457
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v23, :cond_17

    move/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_7

    .line 652
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v27, v3

    .end local v3    # "openResult":I
    .local v27, "openResult":I
    move-object v3, v9

    move-object/from16 v28, v4

    .end local v4    # "wantNebulaVersion":Ljava/lang/String;
    .local v28, "wantNebulaVersion":Ljava/lang/String;
    move-object/from16 v4, v25

    move-object v5, v11

    move-object/from16 v6, v24

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 655
    .end local v27    # "openResult":I
    return-void

    .line 457
    .end local v28    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v3    # "openResult":I
    .restart local v4    # "wantNebulaVersion":Ljava/lang/String;
    :cond_18
    move/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "openResult":I
    .end local v4    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v27    # "openResult":I
    .restart local v28    # "wantNebulaVersion":Ljava/lang/String;
    goto :goto_7

    .line 455
    .end local v27    # "openResult":I
    .end local v28    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v3    # "openResult":I
    .restart local v4    # "wantNebulaVersion":Ljava/lang/String;
    :cond_19
    move/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "openResult":I
    .end local v4    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v27    # "openResult":I
    .restart local v28    # "wantNebulaVersion":Ljava/lang/String;
    goto :goto_7

    .line 454
    .end local v27    # "openResult":I
    .end local v28    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v3    # "openResult":I
    .restart local v4    # "wantNebulaVersion":Ljava/lang/String;
    :cond_1a
    move/from16 v27, v3

    move-object/from16 v28, v4

    .line 461
    .end local v3    # "openResult":I
    .end local v4    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v27    # "openResult":I
    .restart local v28    # "wantNebulaVersion":Ljava/lang/String;
    :goto_7
    move-object v0, v9

    .line 462
    .local v0, "loadingType":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 463
    const-string/jumbo v2, "sync"

    move-object/from16 v7, p1

    .end local p1    # "syncOffline":Ljava/lang/String;
    .restart local v7    # "syncOffline":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v11, :cond_1d

    .line 465
    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 466
    invoke-interface {v15, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 467
    .local v4, "isAvailable":Z
    if-nez v2, :cond_1b

    .line 468
    const-string/jumbo v0, "syncforce"

    move-object v5, v0

    goto :goto_8

    .line 470
    :cond_1b
    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v5, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 471
    invoke-interface {v15, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 472
    .local v3, "install":Z
    if-nez v2, :cond_1d

    .line 473
    const-string/jumbo v0, "syncforce"

    move-object v5, v0

    goto :goto_8

    .line 462
    .end local v3    # "install":Z
    .end local v4    # "isAvailable":Z
    .end local v7    # "syncOffline":Ljava/lang/String;
    .restart local p1    # "syncOffline":Ljava/lang/String;
    :cond_1c
    move-object/from16 v7, p1

    .line 479
    .end local p1    # "syncOffline":Ljava/lang/String;
    .restart local v7    # "syncOffline":Ljava/lang/String;
    :cond_1d
    move-object v5, v0

    .end local v0    # "loadingType":Ljava/lang/String;
    .local v5, "loadingType":Ljava/lang/String;
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v20

    .line 480
    .local v20, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 481
    invoke-static {v0, v5, v13, v11}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v29

    .line 480
    move-object/from16 v0, p0

    move-object v4, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v20

    move-object/from16 p1, v7

    move-object v7, v4

    .end local v7    # "syncOffline":Ljava/lang/String;
    .restart local p1    # "syncOffline":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v30, v5

    .end local v5    # "loadingType":Ljava/lang/String;
    .local v30, "loadingType":Ljava/lang/String;
    move/from16 v5, v29

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 485
    .local v3, "hashMap":Ljava/util/Map;
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    move-object v2, v0

    .line 486
    .local v2, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 487
    iput-object v7, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    goto :goto_9

    .line 489
    :cond_1e
    iput-object v6, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 494
    :goto_9
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    const-string v1, "NO"

    if-nez v0, :cond_1f

    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xf

    if-le v0, v4, :cond_20

    .line 495
    :cond_1f
    iput-object v1, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 499
    :cond_20
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v4, 0x0

    .line 500
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v6, v0

    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_21

    .line 501
    const-string v0, "H5_loading_use_stableRpc"

    invoke-interface {v6, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 504
    iput-object v1, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 510
    .end local v0    # "value":Ljava/lang/String;
    :cond_21
    if-eqz v19, :cond_22

    .line 511
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "useDev "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nbsn:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    goto :goto_a

    .line 515
    :cond_22
    iget-object v0, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 516
    invoke-interface {v15, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "queryVersion":Ljava/lang/String;
    iget-object v1, v12, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .end local v0    # "queryVersion":Ljava/lang/String;
    :goto_a
    move-object/from16 v17, v22

    move-object/from16 v22, v9

    .line 521
    .local v9, "finalSyncUpdate":Ljava/lang/String;
    .local v17, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .local v22, "syncUpdate":Ljava/lang/String;
    move-object v5, v10

    .line 522
    .local v5, "finalNbsv":Ljava/lang/String;
    move-object/from16 v29, v8

    .end local v8    # "nbsn":Ljava/lang/String;
    .local v29, "nbsn":Ljava/lang/String;
    move/from16 v8, v18

    .line 523
    .local v8, "finalHasAppInfo":Z
    move-object/from16 v0, v26

    move-object/from16 v26, p1

    .end local p1    # "syncOffline":Ljava/lang/String;
    .local v26, "syncOffline":Ljava/lang/String;
    move-object/from16 v7, p2

    .line 524
    .local v7, "finalCopyParam":Landroid/os/Bundle;
    move-object/from16 v4, v29

    .line 525
    .local v4, "finalNbsn":Ljava/lang/String;
    move-object/from16 v31, v10

    move-object/from16 p1, v11

    .end local v10    # "nbsv":Ljava/lang/String;
    .end local v11    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v31, "nbsv":Ljava/lang/String;
    .local p1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestBeginTime(J)V

    .line 527
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 529
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 532
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v11

    .line 534
    .local v11, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    new-instance v16, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v32, v2

    .end local v2    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v32, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object/from16 v2, p4

    move-object/from16 v33, v3

    .end local v3    # "hashMap":Ljava/util/Map;
    .local v33, "hashMap":Ljava/util/Map;
    move-object/from16 v3, v26

    move-object/from16 v34, v6

    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v34, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object/from16 v6, v20

    move-object/from16 v10, v25

    move-object/from16 v35, p1

    move-object v12, v11

    .end local v11    # "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .end local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v12, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .local v35, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object/from16 v11, v24

    invoke-direct/range {v0 .. v11}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Landroid/os/Bundle;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v0, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-virtual {v12, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 649
    .end local v0    # "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .end local v4    # "finalNbsn":Ljava/lang/String;
    .end local v5    # "finalNbsv":Ljava/lang/String;
    .end local v7    # "finalCopyParam":Landroid/os/Bundle;
    .end local v8    # "finalHasAppInfo":Z
    .end local v9    # "finalSyncUpdate":Ljava/lang/String;
    .end local v12    # "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .end local v20    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v30    # "loadingType":Ljava/lang/String;
    .end local v32    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v33    # "hashMap":Ljava/util/Map;
    .end local v34    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V
    .locals 3
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "reason"    # Ljava/lang/String;

    .line 1850
    const-string v0, "H5_APP_PREPARE"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1851
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1852
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1853
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1850
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1854
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 103
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Landroid/os/Bundle;

    .line 103
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1171
    if-nez p0, :cond_0

    return-void

    .line 1173
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1174
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$25;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$25;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1183
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V
    .locals 4
    .param p0, "manager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "delay"    # I

    .line 795
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$20;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$20;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p4, "offMode"    # Ljava/lang/String;

    .line 1861
    invoke-static {p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;->canFallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "try"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;->tryFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V

    return-void

    .line 1877
    :cond_0
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1879
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncUpdate"    # Ljava/lang/String;
    .param p5, "copyParam"    # Landroid/os/Bundle;
    .param p6, "syncOffline"    # Ljava/lang/String;
    .param p7, "loadingType"    # Ljava/lang/String;

    .line 1034
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v1, "hasCheckedMinAppxVersion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1035
    .local v0, "hasChecked":Z
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    .line 1036
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1038
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1042
    :cond_0
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1044
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 103
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;ILcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "error"    # I
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1977
    if-nez p2, :cond_0

    .line 1978
    return-void

    .line 1980
    :cond_0
    nop

    .line 1981
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1982
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    return-void

    .line 1986
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1988
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$19;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$19;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2005
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 103
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "x5"    # Ljava/lang/String;

    .line 103
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1385
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1386
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    .line 1387
    .local v1, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1391
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    .line 1392
    .local v2, "isInstalled":Z
    move v2, v0

    const-string/jumbo v3, "offlineNebulaAppAsync App appId:"

    const-string v4, " version:"

    if-nez v0, :cond_2

    .line 1393
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1394
    .local v0, "isAvailable":Z
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    if-nez v0, :cond_1

    .line 1397
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offlineNebulaAppAsync :downloadApp appId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    invoke-interface {v1, p0, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    return-void

    .line 1414
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to install "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 1416
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1418
    .end local v0    # "isAvailable":Z
    return-void

    .line 1419
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is install "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    return-void

    .line 1388
    .end local v2    # "isInstalled":Z
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 103
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 103
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Landroid/os/Bundle;
    .param p9, "x9"    # Z

    .line 103
    invoke-static/range {p0 .. p9}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 103
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isInstall"    # Z

    .line 1424
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1425
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1426
    const-string v0, "H5_APP_INSTALL_STATUS"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1427
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v3, "monitor"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1429
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isInstall"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1430
    const-string v1, "h5_installPackageConfig"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "installPackageConfig"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1426
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1432
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .line 668
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 669
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->hasAuth:Z

    if-nez v0, :cond_4

    .line 671
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 672
    return v1

    .line 676
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enablePreferList()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    const-string/jumbo v0, "nbsv"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "preferVersion":Ljava/lang/String;
    const-string/jumbo v2, "nbsn"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "nbScene":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 684
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 685
    invoke-virtual {v3, v4, v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v0    # "preferVersion":Ljava/lang/String;
    .end local v2    # "nbScene":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 689
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAppInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from H5PreferAppList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 694
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoWithAppId(Ljava/lang/String;)V

    .line 696
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 697
    return v1

    .line 703
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 704
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 705
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 706
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->startCheckPermissionScheme(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 707
    return v1

    .line 711
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 103
    invoke-static/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "startupParams"    # Landroid/os/Bundle;

    .line 288
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 289
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getUseWholePkgList()Ljava/util/Set;

    move-result-object v0

    move-object v4, v1

    .line 291
    .local v4, "appIdSet":Ljava/util/Set;
    move-object v4, v0

    if-eqz v0, :cond_0

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_0
    return v3

    .line 289
    .end local v4    # "appIdSet":Ljava/util/Set;
    :cond_1
    move-object v4, v1

    .line 295
    :cond_2
    const-string/jumbo v0, "subPackages"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v4, "subPackageInfo":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 297
    .local v1, "subPackages":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_4
    :goto_0
    return v3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "app_id"    # Ljava/lang/String;
    .param p1, "installVersion"    # Ljava/lang/String;

    .line 906
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 907
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v4, v1

    .line 911
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v4, v0

    if-nez v0, :cond_1

    .line 912
    return v3

    .line 914
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v1, "minAppxVersion":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 917
    return v5

    .line 919
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCurrentAvailableAppxVersion()Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 921
    if-ne v0, v5, :cond_3

    .line 923
    return v5

    .line 925
    :cond_3
    return v3

    .line 908
    .end local v1    # "minAppxVersion":Ljava/lang/String;
    .end local v4    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    :goto_0
    return v3
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 103
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 1
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "syncUpdate"    # Ljava/lang/String;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1470
    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->addRecentAppForDebugMode(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 1473
    const-string/jumbo v0, "synctry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    const-string/jumbo v0, "syncforce"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1478
    :cond_0
    if-eqz p1, :cond_2

    .line 1479
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableExitAndStartAppOnMain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$5;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 1488
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1491
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1493
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "syncUpdate"    # Ljava/lang/String;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "syncOffline"    # Ljava/lang/String;
    .param p6, "loadingType"    # Ljava/lang/String;

    .line 1450
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isCloseBtnClicked:Z

    if-nez v0, :cond_1

    .line 1453
    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string/jumbo v1, "openApp...need"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return-void

    .line 1458
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    return-void

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startApp [targetAppId] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1464
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1886
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v1, "finish"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 1890
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;

    invoke-direct {v1, p2, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1913
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    .line 811
    invoke-static {p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0, p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->updateApplicationDescription(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 817
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncUpdate"    # Ljava/lang/String;
    .param p5, "copyParam"    # Landroid/os/Bundle;
    .param p6, "syncOffline"    # Ljava/lang/String;
    .param p7, "loadingType"    # Ljava/lang/String;

    .line 1103
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "forceUpdateAppInfo..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v7, 0x0

    if-nez p3, :cond_0

    .line 1107
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v8

    .line 1108
    .end local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v8, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v0, v15, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1109
    invoke-static {v0, v12, v13, v14}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v5

    .line 1108
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v4, p7

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    move-object/from16 v2, p7

    move-object v0, v8

    goto :goto_1

    .line 1112
    .end local v8    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    move-result-object v0

    move-object v1, v7

    .line 1113
    .local v1, "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, v15, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1115
    move-object/from16 v2, p7

    invoke-static {v0, v2, v13, v14}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v0

    iget-object v3, v15, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1114
    invoke-interface {v1, v12, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;->onGetType(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_1
    move-object/from16 v2, p7

    .line 1119
    .end local v1    # "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    :goto_0
    move-object/from16 v0, p3

    .end local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v0, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :goto_1
    move-object v10, v0

    .line 1121
    .local v10, "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    nop

    .line 1122
    const-string v1, "66666692"

    invoke-interface {v6, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1124
    .local v3, "queryVersion":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v5, v7

    .line 1125
    .local v5, "appIdMap":Ljava/util/Map;
    move-object v5, v4

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    move-object v4, v7

    .line 1128
    .local v4, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object v4, v1

    const-string/jumbo v7, "syncforce"

    iput-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 1130
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .local v1, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 1155
    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 1156
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 1157
    invoke-virtual {v7, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 1158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 1159
    invoke-virtual {v7, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 1160
    .local v7, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 1163
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "error"    # I

    .line 1958
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;

    .line 1959
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 1960
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;->promptError(Ljava/lang/String;I)V

    return-void

    .line 1962
    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    return-void

    .line 1964
    :catch_0
    move-exception v1

    .line 1965
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;I)V

    .line 1968
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .line 832
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 833
    .local v1, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 870
    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 103
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 4
    .param p0, "nbUrl"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "offMode"    # Ljava/lang/String;

    .line 881
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableUseDegradeInMainPkg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getInstallVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "installVersion":Ljava/lang/String;
    iget-object v1, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 884
    const-string v2, "downgradeVersion"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "downgradeVersion":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 886
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 887
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    iput-object v0, p2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 890
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 891
    iget-object v2, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    const-string/jumbo v3, "ready"

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->logMainPkgDegrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void

    .line 895
    .end local v0    # "installVersion":Ljava/lang/String;
    .end local v1    # "downgradeVersion":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 896
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 897
    const-string v1, "finish"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 900
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 821
    if-eqz p1, :cond_0

    .line 822
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->scene:Ljava/lang/String;

    .line 823
    const-string v0, "debug"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    .line 825
    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 103
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 13
    .param p0, "syncUpdate"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncOffline"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "offMode"    # Ljava/lang/String;
    .param p8, "copyParam"    # Landroid/os/Bundle;
    .param p9, "rpcError"    # Z

    .line 734
    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    const-string/jumbo v0, "syncforce"

    move-object v11, p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "10000"

    if-nez v0, :cond_0

    .line 737
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 738
    const-string v2, "finish"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {p1, v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 741
    :cond_0
    if-eqz p9, :cond_1

    .line 742
    const-string v0, "10004"

    invoke-static {p2, v0, v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 744
    :cond_1
    invoke-static {p2, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V

    .line 753
    invoke-static/range {p8 .. p8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xc352

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e9

    :goto_0
    move-object/from16 v12, p6

    invoke-static {v12, v0, v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;ILcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 757
    :cond_3
    move-object/from16 v12, p6

    move-object v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 760
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "nebulaAppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1435
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "copyParam"    # Landroid/os/Bundle;
    .param p5, "syncOffline"    # Ljava/lang/String;
    .param p6, "loadingType"    # Ljava/lang/String;

    .line 943
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 944
    .local v2, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v2, v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 945
    return v3

    .line 948
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isSetAppxMinVersionValid(Ljava/lang/String;)Z

    move-result v4

    .line 949
    if-nez v4, :cond_1

    .line 950
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v4, "checkAppxMinVersion...hit blacklist"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return v3

    .line 954
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 955
    .local v5, "minAppxVersion":Ljava/lang/String;
    move-object v12, v4

    .end local v5    # "minAppxVersion":Ljava/lang/String;
    .local v12, "minAppxVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    return v3

    .line 960
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCurrentAvailableAppxVersion()Ljava/lang/String;

    move-result-object v13

    .line 961
    .local v13, "availableAppxVersion":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAppxMinVersion...min: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    .line 964
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move v3, v14

    .line 965
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v1

    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_3

    .line 966
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_3
    return v14

    .line 972
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    invoke-static {v13, v12}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v5, v14

    .line 973
    .local v5, "compare":I
    move v5, v4

    if-eq v4, v3, :cond_9

    if-nez v5, :cond_5

    goto :goto_1

    .line 978
    :cond_5
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 979
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v4

    if-nez v4, :cond_6

    .line 981
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v6, "checkAppxMinVersion...h5AppProvider is null"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return v3

    .line 985
    :cond_6
    const-string v3, "66666692"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 986
    .local v15, "highestVersion":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkAppxMinVersion...highest: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {v12, v15}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 988
    move/from16 v16, v4

    .end local v5    # "compare":I
    .local v16, "compare":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    if-nez v16, :cond_7

    goto :goto_0

    .line 1016
    :cond_7
    move-object v4, v1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return v14

    .line 990
    :cond_8
    :goto_0
    new-instance v10, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$22;

    move-object v4, v10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$22;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 1012
    .local v4, "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    invoke-static {v3, v15, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 1013
    return v14

    .line 975
    .end local v1    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    .end local v15    # "highestVersion":Ljava/lang/String;
    .end local v16    # "compare":I
    .restart local v5    # "compare":I
    :cond_9
    :goto_1
    return v3
.end method

.method static synthetic c()I
    .locals 1

    .line 103
    sget v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c:I

    return v0
.end method

.method private static c(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 150
    const-string/jumbo v0, "nbupdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 151
    const-string/jumbo v0, "nboffline"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 152
    const-string/jumbo v0, "nburl"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 153
    const-string/jumbo v0, "nbversion"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 154
    const-string/jumbo v0, "nboffmode"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 155
    return-void
.end method

.method private static c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 11
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 237
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clear()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setBeginTime(J)V

    .line 240
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    if-nez v1, :cond_0

    .line 242
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 245
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    .line 246
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 247
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 251
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    return-void

    .line 256
    :cond_2
    const/4 v1, 0x0

    sput v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c:I

    .line 258
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v1, "copyParam":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 266
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 267
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 270
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 271
    .local v3, "millis":J
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "currentNbVersion":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 273
    .local v6, "cost":J
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " getVersion "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setGetDBVersionTime(J)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v2, v0, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 278
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {p0, v0, v1, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 279
    return-void
.end method

.method private static c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1604
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 1605
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1606
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string/jumbo v1, "pageStatues.currentPageStatues == PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    return-void

    .line 1611
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v2, "finish"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const-string v4, "66666672"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1614
    .local v1, "enableOuter":Z
    :goto_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v4, v3, :cond_2

    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1615
    .local v4, "enableInner":Z
    :goto_1
    iget v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v5, v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableUpDownAnimWithoutAppinfo:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 1616
    .local v0, "enableNoAppinfo":Z
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "H5AppHandler.startApp enableOuter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " enableInner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " enableNoAppinfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-eqz v0, :cond_5

    .line 1618
    :cond_4
    if-nez p1, :cond_5

    .line 1620
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string/jumbo v5, "put needAnimInTiny true"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v5, "needAnimInTiny"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1624
    :cond_5
    sget-object v2, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->TINY_INSIDE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    sget-object v3, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-ne v2, v3, :cond_6

    .line 1625
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1627
    :cond_6
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1629
    return-void
.end method

.method private static c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 22
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    .line 1193
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v0

    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v13, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->prepareTemplateConfig(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    move-object v1, v0

    .line 1196
    .local v1, "tmpLoadingType":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    move-object/from16 v1, p1

    move-object v15, v1

    goto :goto_0

    .line 1199
    :cond_0
    move-object/from16 v1, p6

    move-object v15, v1

    .line 1201
    .end local v1    # "tmpLoadingType":Ljava/lang/String;
    .local v15, "tmpLoadingType":Ljava/lang/String;
    :goto_0
    move-object v10, v15

    .line 1203
    .local v10, "loadingType":Ljava/lang/String;
    const-string/jumbo v1, "sync"

    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableDSL(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1353
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1354
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto/16 :goto_3

    .line 1353
    :cond_2
    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto/16 :goto_3

    .line 1205
    :cond_3
    :goto_1
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v2, v0

    .line 1208
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v9, v1

    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v9, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_b

    if-nez v13, :cond_4

    move-object v12, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    goto/16 :goto_4

    .line 1212
    :cond_4
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1213
    .local v8, "isAvailable":Z
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncOffline=sync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v2, "is_local"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1220
    .local v6, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "13 TinyAppManagerProcess#setSyncOffline launch_cost maybe start:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tiny_launch_cost"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v2, "perf_open_app_time"

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1223
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MetaInfoFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1224
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MetaInfoFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1228
    :cond_5
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v16

    sub-long v2, v2, v16

    const-string/jumbo v4, "perf_rpc_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1230
    if-nez v8, :cond_9

    .line 1231
    iget-boolean v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    if-eqz v1, :cond_6

    .line 1232
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1233
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v0, v1

    if-eqz v1, :cond_6

    .line 1234
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->startLiteProcessAsync()Z

    .line 1238
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_6
    if-nez p2, :cond_7

    .line 1239
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v16

    .line 1240
    .end local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v16, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1241
    invoke-static {v0, v12, v14, v13}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v17

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object v2, v9

    move-object/from16 v3, v16

    move-object v4, v10

    move-wide/from16 v18, v6

    move-object v6, v5

    .end local v6    # "time":J
    .local v18, "time":J
    move/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    goto :goto_2

    .line 1244
    .end local v16    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v18    # "time":J
    .restart local v6    # "time":J
    .restart local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_7
    move-wide/from16 v18, v6

    move-object v6, v5

    .end local v6    # "time":J
    .restart local v18    # "time":J
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    move-result-object v1

    .line 1245
    .local v0, "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    move-object v0, v1

    if-eqz v1, :cond_8

    .line 1246
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1247
    invoke-static {v1, v10, v14, v13}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v1

    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1246
    invoke-interface {v0, v12, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;->onGetType(Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    .end local v0    # "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    :cond_8
    move-object/from16 v16, p2

    .end local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local v16    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :goto_2
    move-object/from16 v4, v16

    .line 1252
    .local v4, "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadTime(J)V

    .line 1253
    iget-object v7, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v6, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object v12, v5

    move-object/from16 v5, p3

    move-object v14, v6

    move-wide/from16 v17, v18

    .end local v18    # "time":J
    .local v17, "time":J
    move-object/from16 v6, p7

    move-object/from16 v19, v15

    move-object v15, v7

    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .local v19, "tmpLoadingType":Ljava/lang/String;
    move-object/from16 v7, p1

    move/from16 v20, v8

    .end local v8    # "isAvailable":Z
    .local v20, "isAvailable":Z
    move-object v8, v10

    move-object v13, v9

    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v13, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object/from16 v9, p4

    move-object/from16 v21, v10

    .end local v10    # "loadingType":Ljava/lang/String;
    .local v21, "loadingType":Ljava/lang/String;
    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-interface {v13, v15, v14, v12}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 1319
    .end local v4    # "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    return-void

    .line 1321
    .end local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v16    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v17    # "time":J
    .end local v19    # "tmpLoadingType":Ljava/lang/String;
    .end local v20    # "isAvailable":Z
    .end local v21    # "loadingType":Ljava/lang/String;
    .restart local v6    # "time":J
    .restart local v8    # "isAvailable":Z
    .restart local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "loadingType":Ljava/lang/String;
    .restart local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_9
    move-wide/from16 v17, v6

    move/from16 v20, v8

    move-object v13, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    move-object v6, v5

    .end local v6    # "time":J
    .end local v8    # "isAvailable":Z
    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v10    # "loadingType":Ljava/lang/String;
    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v17    # "time":J
    .restart local v19    # "tmpLoadingType":Ljava/lang/String;
    .restart local v20    # "isAvailable":Z
    .restart local v21    # "loadingType":Ljava/lang/String;
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v10, p5

    move-object v12, v13

    .end local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v12, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    iget-object v1, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v12, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1322
    .local v13, "isInstall":Z
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInstall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    if-nez v13, :cond_a

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallTime(J)V

    .line 1328
    move-object/from16 v2, p2

    .line 1329
    .local v2, "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v14, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v15, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, v21

    move-object/from16 v8, p4

    move-object v10, v9

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v14, v15, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 1351
    .end local v2    # "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v12    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v13    # "isInstall":Z
    .end local v17    # "time":J
    .end local v20    # "isAvailable":Z
    return-void

    .line 1357
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1208
    .end local v19    # "tmpLoadingType":Ljava/lang/String;
    .end local v21    # "loadingType":Ljava/lang/String;
    .restart local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "loadingType":Ljava/lang/String;
    .restart local v15    # "tmpLoadingType":Ljava/lang/String;
    :cond_b
    move-object v12, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v15

    .line 1209
    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v10    # "loadingType":Ljava/lang/String;
    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local v12    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v19    # "tmpLoadingType":Ljava/lang/String;
    .restart local v21    # "loadingType":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method private static c(Ljava/lang/String;I)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "error"    # I

    .line 1971
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 1972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5e94\u7528\u66f4\u65b0\u9519\u8bef("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1973
    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 764
    if-nez p1, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    nop

    .line 768
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 769
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void

    .line 773
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 775
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$12;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$12;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 792
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1703
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1704
    .local v0, "topActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->download_uccore_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1705
    .local v8, "tip":Ljava/lang/String;
    new-instance v9, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const-string v3, ""

    const-string/jumbo v5, "\u7acb\u5373\u5347\u7ea7"

    const-string/jumbo v6, "\u53d6\u6d88"

    const/4 v7, 0x1

    move-object v1, v9

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 1706
    .local v1, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v1, v9

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$11;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$11;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v9, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 1712
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$13;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 1718
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 1719
    return-void
.end method

.method static synthetic d()I
    .locals 1

    .line 103
    sget v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d:I

    return v0
.end method

.method private static d(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    const-string/jumbo v0, "nbpkgres"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 716
    .local v0, "packageList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v1, "resPackageList":Ljava/util/List;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 720
    .local v3, "appId":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    nop

    .end local v3    # "appId":Ljava/lang/Object;
    goto :goto_0

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 725
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 726
    :goto_1
    return-object v1
.end method

.method private static d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 2
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1812
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$16;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$16;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1820
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->e(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1822
    return-void
.end method

.method private static d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 11
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1632
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->g:Z

    if-eqz v0, :cond_0

    .line 1633
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1634
    return-void

    .line 1636
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1637
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5UCProvider;
    move-object v2, v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->getUCSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1642
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "libWebViewCore_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->getUCSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_7z_uc.so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "libPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1646
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v3, "default uclib file exists, start app"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1648
    return-void

    .line 1651
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "plugins_lib"

    invoke-virtual {v3, v5, v4}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 1652
    .local v3, "ucmParentDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v1

    .line 1653
    .local v5, "libFile":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1654
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v4, "download uclib file exists, start app"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1656
    return-void

    .line 1659
    :cond_3
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->getUCCoreDownloadUrl()Ljava/lang/String;

    move-result-object v4

    move-object v6, v1

    .line 1660
    .local v6, "downloadUrl":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1661
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v4, "UC core download url is empty, please setup."

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1663
    return-void

    .line 1665
    :cond_4
    const/4 v4, 0x0

    .line 1666
    .local v4, "askDownload":Z
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_5

    .line 1667
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v7, "4.x should ask download uccore"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const/4 v4, 0x1

    goto :goto_0

    .line 1670
    :cond_5
    if-eqz p0, :cond_a

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    if-nez v7, :cond_6

    goto :goto_1

    .line 1673
    :cond_6
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    const-string v8, "launchParams"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    .line 1674
    .local v8, "launchParam":Ljava/lang/String;
    move-object v8, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1675
    return-void

    .line 1678
    :cond_7
    :try_start_0
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 1679
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "needUC"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1680
    .local v7, "needUC":Ljava/lang/String;
    const-string/jumbo v9, "yes"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1681
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string/jumbo v10, "needUC should ask download uccore"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    const/4 v4, 0x1

    .line 1686
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "needUC":Ljava/lang/String;
    :cond_8
    goto :goto_0

    .line 1684
    :catchall_0
    move-exception v1

    .line 1685
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "needUC...e="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v8    # "launchParam":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_9

    .line 1689
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->g:Z

    .line 1690
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1691
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$10;

    invoke-direct {v7, v5, v6, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$10;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1698
    :cond_9
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1700
    return-void

    .line 1671
    :cond_a
    :goto_1
    return-void

    .line 1638
    .end local v0    # "libPath":Ljava/lang/String;
    .end local v3    # "ucmParentDir":Ljava/io/File;
    .end local v4    # "askDownload":Z
    .end local v5    # "libFile":Ljava/io/File;
    .end local v6    # "downloadUrl":Ljava/lang/String;
    :cond_b
    :goto_2
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1639
    return-void
.end method

.method private static d(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1050
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string/jumbo v1, "openUpdateAppClient"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    if-nez p1, :cond_0

    .line 1054
    return-void

    .line 1056
    :cond_0
    nop

    .line 1057
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1058
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void

    .line 1062
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1064
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$23;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$23;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1086
    const-string v0, "a192.b7351.c17706.d31777"

    const-string v1, "appId"

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;->markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 17
    .param p0, "downloadPath"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1722
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1723
    .local v0, "topActivity":Landroid/app/Activity;
    new-instance v1, Lcom/alipay/mobile/antui/basic/AULoadingView;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/antui/basic/AULoadingView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    move-object v2, v9

    .line 1724
    .local v2, "loadingView":Lcom/alipay/mobile/antui/basic/AULoadingView;
    move-object v10, v1

    .end local v2    # "loadingView":Lcom/alipay/mobile/antui/basic/AULoadingView;
    .local v10, "loadingView":Lcom/alipay/mobile/antui/basic/AULoadingView;
    const-string/jumbo v2, "\u6b63\u5728\u66f4\u65b0\u5c0f\u7a0b\u5e8f\u6846\u67b6..."

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AULoadingView;->setLoadingText(Ljava/lang/String;)V

    .line 1725
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x190

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v11, v1

    .line 1726
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v10, v11}, Lcom/alipay/mobile/antui/basic/AULoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1727
    new-instance v12, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string/jumbo v6, "\u53d6\u6d88\u4e0b\u8f7d"

    const/4 v7, 0x0

    move-object v1, v12

    move-object v2, v0

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    move-object v8, v12

    .line 1728
    .local v8, "downloadDialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 1729
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 1731
    .local v12, "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    move-object/from16 v13, p1

    invoke-direct {v1, v13}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 1732
    .local v2, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v9, v1

    move-object/from16 v14, p0

    .end local v2    # "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    .local v9, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    invoke-virtual {v1, v14}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 1733
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    move-object/from16 v15, p2

    invoke-direct {v1, v8, v0, v15, v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;-><init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;Landroid/app/Activity;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/antui/basic/AULoadingView;)V

    invoke-virtual {v9, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 1781
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v16, v0

    move-object v0, v7

    .end local v0    # "topActivity":Landroid/app/Activity;
    .local v16, "topActivity":Landroid/app/Activity;
    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;-><init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;Lcom/alipay/mobile/common/transport/download/DownloadRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 1807
    invoke-virtual {v8}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 1808
    invoke-virtual {v12, v9}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    .line 1809
    return-void
.end method

.method private static e()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .locals 6

    .line 1928
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    .line 1929
    .local v0, "insideCustomProvider":Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLoadingImpl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;->customLoadingViewClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1931
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    return-object v1

    .line 1933
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1934
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    const-string v2, "getLoadingImpl isdebug"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;-><init>()V

    return-object v1

    .line 1938
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 1939
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 1940
    const-string v1, "h5_newloadpage"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1943
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLoadingImpl value : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    return-object v3

    .line 1948
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1950
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLoadingImpl loadingPageManager : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    return-object v1

    .line 1953
    :cond_3
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;-><init>()V

    return-object v1
.end method

.method private static e(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1825
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nebulaAppType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebulaStartflag"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->putAppType(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1831
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_loading_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->remove(Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_StartAppFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_StartAppFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1844
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    const/4 v6, 0x0

    .line 1845
    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1847
    return-void
.end method
