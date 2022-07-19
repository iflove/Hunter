.class public Lcom/mpaas/nebula/adapter/api/MPNebula;
.super Ljava/lang/Object;
.source "MPNebula.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPNebula"

.field private static h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field private static h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field private static final sConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadOfflineExecuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sLoadOfflineExecuted:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sConfigs:Ljava/util/HashMap;

    .line 50
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    sput-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    sput-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAppInfo(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    return v1

    .line 447
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 448
    .local v0, "dbService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    const-string v2, "MPNebula"

    if-nez v0, :cond_1

    .line 449
    const-string v3, "dbService is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return v1

    .line 453
    :cond_1
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfoList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v1, :cond_2

    .line 455
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 456
    .local v4, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v5, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .end local v4    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 460
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 428
    .local v0, "dbService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    const-string v2, "MPNebula"

    if-nez v0, :cond_1

    .line 429
    const-string v3, "dbService is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return v1

    .line 433
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x1

    return v1

    .line 425
    .end local v0    # "dbService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    :cond_2
    :goto_0
    return v1
.end method

.method public static disableAppVerification()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 332
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->clearProcessCache()V

    .line 335
    :cond_0
    const-string v1, "h5_shouldverifyapp"

    const-string v2, "NO"

    invoke-static {v1, v2}, Lcom/mpaas/nebula/adapter/api/MPNebula;->putH5Config(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static downloadApp(Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MpaasNebulaDownloadCallback;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "mpaasNebulaDownloadCallback"    # Lcom/mpaas/nebula/adapter/api/MpaasNebulaDownloadCallback;

    .line 124
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const-string v1, "ensureApp appId is: "

    const-string v2, "MPNebula"

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", h5AppProvider == null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "version":Ljava/lang/String;
    sget-object v3, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v3, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 130
    .local v3, "isAvailable":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , version is: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable is: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez v3, :cond_1

    .line 133
    sget-object v1, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v1, p0, v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_0

    .line 135
    :cond_1
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1, p0, v0}, Lcom/mpaas/nebula/adapter/api/MpaasNebulaDownloadCallback;->onAppHasDownloaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method public static enableAppVerification(Ljava/lang/String;)V
    .locals 3
    .param p0, "publicKey"    # Ljava/lang/String;

    .line 310
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 311
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->clearProcessCache()V

    .line 316
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mpaas/nebula/adapter/api/MPNebula$1;

    invoke-direct {v2, p0}, Lcom/mpaas/nebula/adapter/api/MPNebula$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v1, "h5_shouldverifyapp"

    const-string v2, "YES"

    invoke-static {v1, v2}, Lcom/mpaas/nebula/adapter/api/MPNebula;->putH5Config(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static getH5View(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "param"    # Landroid/os/Bundle;

    .line 390
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 391
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 392
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 393
    .local v1, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 396
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 398
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getH5ViewAsync(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "param"    # Landroid/os/Bundle;
    .param p2, "h5PageReadyListener"    # Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 409
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 410
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 411
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 412
    .local v1, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p0, v1, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->createPageAsync(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    .line 416
    :cond_0
    return-void
.end method

.method public static installApp(Ljava/lang/String;Lcom/mpaas/nebula/adapter/api/MpaasNebulaInstallCallback;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "mpaasNebulaInstallCallback"    # Lcom/mpaas/nebula/adapter/api/MpaasNebulaInstallCallback;

    .line 149
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const-string v1, "MPNebula"

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureApp appId is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", h5AppProvider == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "version":Ljava/lang/String;
    sget-object v2, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v2, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 155
    .local v2, "isInstall":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_1

    .line 158
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1, p0, v0}, Lcom/mpaas/nebula/adapter/api/MpaasNebulaInstallCallback;->onAppHasInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    sget-object v1, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v1, :cond_2

    .line 163
    invoke-interface {v1, p0, v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 167
    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs loadOfflineNebula(Ljava/lang/String;[Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;)V
    .locals 11
    .param p0, "jsonFileName"    # Ljava/lang/String;
    .param p1, "mpNebulaOfflineInfos"    # [Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;

    .line 176
    if-eqz p1, :cond_2

    .line 179
    sget-boolean v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sLoadOfflineExecuted:Z

    const-string v1, "MPNebula"

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "loadOffline has been called once!"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sLoadOfflineExecuted:Z

    .line 184
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 186
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;>;"
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .local v6, "mpNebulaOfflineInfo":Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    iget-object v8, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->offLineFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .local v7, "input":Ljava/io/InputStream;
    nop

    .line 196
    :try_start_2
    new-instance v8, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;

    iget-object v9, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->appId:Ljava/lang/String;

    iget-object v10, v6, Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;->version:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v7, v4}, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 197
    .local v8, "info":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "info":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    :catch_0
    move-exception v7

    .line 193
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

    .line 194
    nop

    .line 188
    .end local v6    # "mpNebulaOfflineInfo":Lcom/mpaas/nebula/adapter/api/MPNebulaOfflineInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_1
    sget-object v3, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetApp(Ljava/util/List;)V

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 205
    .local v3, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetAppList(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;>;"
    .end local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 206
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 177
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    new-instance v0, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string v1, "mpNebulaOfflineInfos can not be null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static putH5Config(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public static registerH5Plugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "events"    # [Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 285
    .local v0, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>()V

    .line 286
    .local v1, "config":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    iput-object p0, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 287
    iput-object p1, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 289
    iput-object p2, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v2, "eventsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_1

    .line 293
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 295
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setEvents(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V

    .line 300
    return-void
.end method

.method public static removeH5Config(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPNebula;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public static setCustomViewProvider(Lcom/alipay/mobile/nebula/provider/H5ViewProvider;)V
    .locals 1
    .param p0, "viewProvider"    # Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 379
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public static setUa(Lcom/alipay/mobile/nebula/provider/H5UaProvider;)V
    .locals 2
    .param p0, "uaProvider"    # Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 365
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mpaas/nebula/adapter/api/MPNebula$2;

    invoke-direct {v1, p0}, Lcom/mpaas/nebula/adapter/api/MPNebula$2;-><init>(Lcom/alipay/mobile/nebula/provider/H5UaProvider;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public static startApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPNebula;->startApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method public static startApp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 227
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public static startUrl(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 1
    .param p0, "app"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p1, "url"    # Ljava/lang/String;

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/mpaas/nebula/adapter/api/MPNebula;->startUrl(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public static startUrl(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "app"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 268
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 270
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-string v1, "url"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 272
    return-void
.end method

.method public static startUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/mpaas/nebula/adapter/api/MPNebula;->startUrl(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method public static startUrl(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Landroid/os/Bundle;

    .line 257
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mpaas/nebula/adapter/api/MPNebula;->startUrl(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method public static updateAllApp(Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;)V
    .locals 1
    .param p0, "mpaasNebulaUpdateCallback"    # Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;

    .line 61
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPNebula;->updateAllApp(Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;Z)V

    .line 62
    return-void
.end method

.method public static updateAllApp(Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;Z)V
    .locals 1
    .param p0, "mpaasNebulaUpdateCallback"    # Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;
    .param p1, "downloadAmr"    # Z

    .line 71
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/mpaas/nebula/adapter/api/MPNebula;->updateApp(Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;Z)V

    .line 72
    return-void
.end method

.method public static updateApp(Ljava/util/Map;Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;Z)V
    .locals 7
    .param p1, "mpaasNebulaUpdateCallback"    # Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;
    .param p2, "downloadAmr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mpaas/nebula/adapter/api/MpaasNebulaUpdateCallback;",
            "Z)V"
        }
    .end annotation

    .line 83
    .local p0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "finalAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 91
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "tAppId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "tVersion":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "tmp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 97
    move-object v4, v5

    .line 101
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "MPNebula"

    invoke-static {v6, v5}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 105
    .end local v3    # "tAppId":Ljava/lang/String;
    .end local v4    # "tVersion":Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    const-string v1, "nebula-*-all"

    const-string v2, "0"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    .line 114
    .local v1, "param":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    sget-object v2, Lcom/mpaas/nebula/adapter/api/MPNebula;->h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 115
    return-void
.end method
