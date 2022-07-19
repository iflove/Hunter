.class public Lcom/mpaas/nebula/adapter/api/MPaaSNebula;
.super Ljava/lang/Object;
.source "MPaaSNebula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/adapter/api/MPaaSNebula$DefaultNebulaAppReady;,
        Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MPaaSNebula"

.field private static sLoadOfflineExecuted:Z

.field private static sMPaaSNebula:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;


# instance fields
.field private h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field private final h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sLoadOfflineExecuted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/mpaas/nebula/adapter/api/MPaaSNebula;
    .locals 2

    .line 59
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sMPaaSNebula:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sMPaaSNebula:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    invoke-direct {v1}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;-><init>()V

    sput-object v1, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sMPaaSNebula:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sMPaaSNebula:Lcom/mpaas/nebula/adapter/api/MPaaSNebula;

    return-object v0
.end method

.method private installApp(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
    .locals 1
    .param p1, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;

    invoke-direct {v0, p0, p4, p2}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$3;-><init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public ensureApp(Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    .line 137
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 138
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    const-string v1, "ensureApp  appId is :"

    const-string v2, "MPaaSNebula"

    if-nez v0, :cond_0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , h5AppProvider == null "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v0, p1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 145
    .local v4, "isAvailable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureApp appId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , isAvailable is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, p1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    .line 151
    .local v5, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-nez v5, :cond_1

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , appInfo == null "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_1
    iget-object v1, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    new-instance v2, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$2;-><init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 249
    return-void
.end method

.method public getH5AppProvider()Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    return-object v0
.end method

.method public getH5AppView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;

    .line 354
    const-string v0, "/www/index.html"

    .line 355
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->getH5AppView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getH5AppView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 336
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 337
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 338
    .local v2, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v3, "param":Landroid/os/Bundle;
    const-string v4, "appId"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v4, "url"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 344
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 346
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "view":Landroid/view/View;
    return-object v4

    .line 350
    .end local v0    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-object v0

    .line 333
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v2    # "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    .end local v3    # "param":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public varargs loadOffLineNebula(Landroid/content/Context;Ljava/lang/String;[Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonFileName"    # Ljava/lang/String;
    .param p3, "mpNebulaOfflineInfos"    # [Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;

    .line 295
    if-eqz p3, :cond_2

    .line 298
    sget-boolean v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sLoadOfflineExecuted:Z

    const-string v1, "MPaaSNebula"

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "loadOffline has been called once!"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->sLoadOfflineExecuted:Z

    .line 303
    const-class v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 305
    .local v0, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;>;"
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p3, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .local v6, "mpNebulaOfflineInfo":Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    iget-object v8, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->offLineFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    .local v7, "input":Ljava/io/InputStream;
    nop

    .line 315
    :try_start_2
    new-instance v8, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;

    iget-object v9, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->appId:Ljava/lang/String;

    iget-object v10, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->version:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v7, v4}, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 316
    .local v8, "info":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "info":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    :catch_0
    move-exception v7

    .line 312
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to load offline package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->offLineFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    nop

    .line 307
    .end local v6    # "mpNebulaOfflineInfo":Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetApp(Ljava/util/List;)V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 324
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetAppList(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;>;"
    .end local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 325
    :catch_1
    move-exception v2

    .line 326
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 296
    .end local v0    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    :cond_2
    new-instance v0, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string v1, "mpNebulaOfflineInfos can not be null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryAll()Ljava/util/Map;
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

    .line 359
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 360
    .local v0, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-nez v0, :cond_0

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1

    .line 363
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getInstalledApp()Ljava/util/Map;

    move-result-object v1

    .line 364
    .local v1, "installedApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 365
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 367
    :cond_1
    return-object v1
.end method

.method public startUpdateAllApp(Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
    .locals 1
    .param p1, "nebulaAppReady"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->startUpdateApp(Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V

    .line 73
    return-void
.end method

.method public startUpdateApp(Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V
    .locals 7
    .param p2, "nebulaAppReady"    # Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p1, v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "finalAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "tAppId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "tVersion":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "tmp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 91
    move-object v4, v5

    .line 95
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v5

    .line 94
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "MPaaSNebula"

    invoke-static {v6, v5}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 100
    .end local v3    # "tAppId":Ljava/lang/String;
    .end local v4    # "tVersion":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string v1, "nebula-*-all"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    new-instance v3, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/mpaas/nebula/adapter/api/MPaaSNebula$1;-><init>(Lcom/mpaas/nebula/adapter/api/MPaaSNebula;Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MPaaSNebula$NebulaAppReady;)V

    .line 106
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    .line 133
    .local v1, "param":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/api/MPaaSNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 134
    return-void
.end method
