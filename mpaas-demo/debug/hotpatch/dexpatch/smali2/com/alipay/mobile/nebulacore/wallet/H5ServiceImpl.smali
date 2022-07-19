.class public Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5Service;
.source "H5ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ServiceImpl"

.field private static a:Z


# instance fields
.field public iApplicationInstaller:Lcom/alipay/mobile/framework/app/IApplicationInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5Service;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Bundle;
    .locals 4
    .param p1, "h5Context"    # Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    .param p2, "bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 324
    if-nez p2, :cond_0

    .line 325
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    move-object p2, v0

    .line 328
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 332
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->a(Lcom/alipay/mobile/h5container/api/H5Context;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 333
    .local v0, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "appId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createPage appId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ServiceImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 340
    .local v2, "listener":Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 341
    return-object p2
.end method

.method private static a()V
    .locals 5

    .line 181
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    .local v0, "time":J
    sget-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v2, :cond_1

    .line 186
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_0

    .line 187
    :cond_1
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    if-nez v2, :cond_2

    .line 188
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_0

    .line 190
    :cond_2
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    .line 192
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 284
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    .line 285
    .local v1, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->doPreloadJob(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;
    .param p2, "h5CallBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 705
    nop

    .line 706
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 707
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    const/4 v1, 0x0

    .line 708
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void

    .line 711
    :cond_0
    const-string v0, "H5ServiceImpl"

    const-string v2, "clearWorkSync provider == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 3
    .param p1, "hashMap"    # Ljava/util/HashMap;
    .param p2, "h5CallBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ")V"
        }
    .end annotation

    .line 620
    nop

    .line 621
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    const/4 v1, 0x0

    .line 623
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 624
    if-nez p2, :cond_0

    .line 625
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    return-void

    .line 627
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void

    .line 630
    :cond_1
    const-string v0, "H5ServiceImpl"

    const-string v2, "sendServiceWorkerPushMessage provider == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;

    .line 694
    nop

    .line 695
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    .line 696
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    const/4 v1, 0x0

    .line 697
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorker(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    const-string v0, "H5ServiceImpl"

    const-string v2, "clearWork provider == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void
.end method


# virtual methods
.method public H5IApplicationInstaller()Lcom/alipay/mobile/framework/app/IApplicationInstaller;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->iApplicationInstaller:Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    return-object v0
.end method

.method public addEmbedViewConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
    .locals 1
    .param p1, "h5EmbedViewConfig"    # Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    .line 362
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->addTypeConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V

    .line 363
    return-void
.end method

.method public addEmbedViewConfig(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->addTypeConfigs(Ljava/util/List;)V

    .line 368
    return-void
.end method

.method public addH5PluginConfigList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addH5PluginConfigList(Ljava/util/List;)V

    .line 358
    return-void
.end method

.method public addNewEmbedViewConfig(Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;

    .line 372
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->addTypeConfig(Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;)V

    .line 373
    return-void
.end method

.method public addNewEmbedViewConfig(Ljava/util/List;)V
    .locals 1
    .param p1, "configs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;",
            ">;)V"
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->addTypeConfigs(Ljava/util/List;)V

    .line 378
    return-void
.end method

.method public addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 351
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V

    .line 352
    return-void
.end method

.method public clearServiceWorker(Ljava/lang/String;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;

    .line 637
    const-string v0, "H5ServiceImpl"

    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v1, :cond_0

    .line 638
    const-string v1, "clearServiceWorker !H5Flag.ucReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 656
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 3
    .param p1, "swHost"    # Ljava/lang/String;
    .param p2, "h5CallBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 666
    const-string v0, "H5ServiceImpl"

    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v1, :cond_0

    .line 667
    const-string v1, "clearServiceWorkerSync !H5Flag.ucReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 685
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    return-void

    .line 687
    :catchall_0
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createPage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaActivity(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "createPageSence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 297
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pageLoad|createPagePoint"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a()V

    .line 301
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Bundle;

    move-result-object p2

    .line 303
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    return-object v1
.end method

.method public createPageAsync(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;
    .param p3, "h5PageReadyListener"    # Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createPageAsync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaActivity(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "createPageSence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 314
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pageLoad|createPageAsyncPoint"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a()V

    .line 318
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Bundle;

    move-result-object p2

    .line 320
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    .line 321
    return-void
.end method

.method public createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "h5PluginManager"    # Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 542
    const-string v0, "page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 544
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 545
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 546
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 547
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 548
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 549
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;-><init>()V

    invoke-interface {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 551
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "h5PluginManager"    # Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 532
    const-string v0, "page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 534
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 535
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 537
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public createPluginManager(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1
    .param p1, "h5CoreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 557
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    return-object v0
.end method

.method public generatePackInfoReq(Ljava/util/List;)Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;
    .locals 9
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;"
        }
    .end annotation

    .line 807
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not invoke on ui thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_1
    :goto_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 812
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 813
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    if-eqz v0, :cond_2

    .line 814
    const-string v2, "NO"

    iput-object v2, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 816
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 817
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 818
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v2

    .line 815
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v1

    .line 821
    :cond_2
    const-string v2, "H5ServiceImpl"

    if-nez v1, :cond_3

    .line 822
    const-string v3, "appReq == null "

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    move-object v1, v3

    .line 827
    :cond_3
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 828
    .local v3, "queryJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 829
    .local v6, "appId":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 830
    .local v5, "entryJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v7

    const-string v8, "app_id"

    invoke-virtual {v7, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v7, ""

    .line 832
    .local v7, "walletVersion":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 833
    invoke-interface {v0, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 835
    :cond_4
    const-string v8, "version"

    invoke-virtual {v5, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .end local v5    # "entryJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "walletVersion":Ljava/lang/String;
    goto :goto_1

    .line 839
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 840
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 843
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "appReq.query : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getPkgReqFromAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;

    move-result-object v2

    .line 845
    .local v4, "packInfoReq":Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;
    return-object v2
.end method

.method public getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 1

    .line 449
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    return-object v0
.end method

.method public getH5GlobalDegradePkg(Ljava/lang/String;)[B
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 858
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getContent(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 859
    .local v1, "bytes":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 860
    return-object v1

    .line 862
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getH5PageByViewId(I)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p1, "viewId"    # I

    .line 454
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getH5PageByViewId(I)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method public getItsOwnNode()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .line 526
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    return-object v0
.end method

.method public getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
    .locals 1

    .line 562
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    move-result-object v0

    return-object v0
.end method

.method public getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    .locals 1

    .line 567
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    move-result-object v0

    return-object v0
.end method

.method public getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1

    .line 346
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public getProcessH5Activity()[Ljava/lang/Class;
    .locals 1

    .line 572
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    return-object v0
.end method

.method public getProcessH5TransActivity()[Ljava/lang/Class;
    .locals 1

    .line 577
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    return-object v0
.end method

.method public getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .line 383
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 494
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1
    .param p1, "workerId"    # Ljava/lang/String;

    .line 489
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    return-object v0
.end method

.method public getSessions()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation

    .line 717
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 137
    .local v2, "h5DataProvider":Lcom/alipay/mobile/h5container/api/H5Data;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v2, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    return-object v1
.end method

.method public getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 1

    .line 474
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 1
    .param p1, "viewId"    # I

    .line 484
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 1
    .param p1, "workerId"    # Ljava/lang/String;

    .line 479
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5Fragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 469
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Fragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 459
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 464
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method public getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1

    .line 499
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    return-object v0
.end method

.method public getUcInitTask()Ljava/lang/Runnable;
    .locals 3

    .line 867
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
    .locals 1

    .line 163
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object v0

    return-object v0
.end method

.method public initServicePlugin()V
    .locals 1

    .line 515
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->initServicePlugin()V

    .line 516
    return-void
.end method

.method public isAliDomain(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->isAliDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 102
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a:Z

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a:Z

    .line 107
    const-string v0, "H5ServiceImpl"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->onCreate(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;-><init>()V

    .line 118
    .local v0, "engine":Lcom/alipay/mobile/nebulacore/wallet/H5Engine;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string v2, "H5App"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z

    .line 119
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 123
    const-string v0, "H5ServiceImpl"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public parseRNPkg(Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 509
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->parseRNPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permitLocation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->permitLocation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public preLoadInTinyProcess()V
    .locals 0

    .line 727
    return-void
.end method

.method public prepareApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "process"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 434
    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    .line 435
    return-void
.end method

.method public prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5UpdateAppCallback"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 504
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    .line 505
    return-void
.end method

.method public removeSharedData(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    .local v1, "h5DataProvider":Lcom/alipay/mobile/h5container/api/H5Data;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method public savePackJson(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savePackJson "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not invoke on ui thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 789
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->SAVE_PACK_JSON:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/NebulaXCompat;->sendEvent(Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;Landroid/os/Bundle;)Z

    .line 793
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    move-object v3, v1

    .line 794
    .local v3, "h5AppBizRpcProvider":Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 795
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;->handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v0

    .line 796
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v4

    .line 797
    .local v1, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v1, v4

    if-eqz v4, :cond_2

    .line 798
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V

    .line 802
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v1    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "h5AppBizRpcProvider":Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
    :cond_2
    return-void
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 153
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 520
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    .locals 1
    .param p1, "hashMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 583
    return-void
.end method

.method public sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 4
    .param p1, "hashMap"    # Ljava/util/HashMap;
    .param p2, "h5CallBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ")V"
        }
    .end annotation

    .line 587
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 588
    .local v2, "workerId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "enablePolyfillWorker"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    .line 591
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    .line 592
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 593
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;->sendWebWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 595
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    :cond_0
    return-void

    .line 596
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v0, :cond_2

    .line 597
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 614
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 617
    return-void
.end method

.method public sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 732
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    .local v1, "h5DataProvider":Lcom/alipay/mobile/h5container/api/H5Data;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setWebDriverHelper(Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 158
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->setWebDriverHelper(Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;)V

    .line 159
    return-void
.end method

.method public startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
    .locals 12

    .line 198
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pageLoad|startPagePoint"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a()V

    .line 204
    const-string v0, "H5ServiceImpl"

    if-nez p2, :cond_1

    .line 205
    const-string p1, "invalid start page parameters!"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 208
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 209
    if-nez v1, :cond_2

    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 211
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 214
    :cond_2
    const-string v2, "createPageSence"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 216
    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const-string v2, "u"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    :cond_3
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    const-string v10, "stripLandingURL&Deeplink url "

    if-eqz v3, :cond_4

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bingo deeplink"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 225
    :cond_4
    const-string v3, "startAppNormal"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 226
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 229
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 230
    if-eqz v3, :cond_5

    .line 231
    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v11

    .line 232
    const/4 v5, 0x1

    .line 233
    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "publicId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 234
    const-string v3, "bizScenario"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    const-string v6, "startAppNormal"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz v11, :cond_5

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bingo deeplink in landing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 243
    :cond_5
    nop

    .line 244
    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 245
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 244
    :cond_6
    move-object v3, v2

    .line 247
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startPage appId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in H5ServiceImpl, startParams is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v4

    .line 252
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :goto_1
    new-instance v4, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p2, v4}, Lcom/alipay/mobile/h5container/api/H5Bundle;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 258
    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 261
    const-string p1, "startPage execute runnable"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string p1, "URGENT_DISPLAY"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 270
    const-class p1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 271
    if-eqz p1, :cond_7

    .line 272
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->preConnectSpdy()V

    .line 275
    :cond_7
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->a(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public startPageFromActivity(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 770
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method public startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "app"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V

    .line 169
    return-void
.end method

.method public startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .param p1, "app"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "arg3"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    if-nez p2, :cond_0

    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p2, v1

    .line 176
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 178
    return-void
.end method

.method public ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;)V
    .locals 2
    .param p1, "h5UcReadyCallBack"    # Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;

    .line 439
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V

    .line 440
    return-void
.end method

.method public ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "h5UcReadyCallBack"    # Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;
    .param p2, "extData"    # Lcom/alibaba/fastjson/JSONObject;

    .line 444
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V

    .line 445
    return-void
.end method
