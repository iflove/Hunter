.class public Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;
.super Lcom/mpaas/nebula/service/NebulaAdapterInitService;
.source "NebulaAdapterInitServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$MyContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaAdapterInitServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitService;-><init>()V

    return-void
.end method

.method private getAppName()Ljava/lang/String;
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 110
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    return-object v2
.end method

.method private initProviders()V
    .locals 4

    .line 77
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$2;-><init>(Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :try_start_0
    const-string v0, "com.alipay.mobile.antui.dialog.AUNoticeDialog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;

    invoke-direct {v1}, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "NebulaAdapterInitServiceImpl"

    const-string v3, "AntUI is not presented."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const-class v0, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;

    invoke-direct {v1}, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    sget-object v1, Lcom/mpaas/nebula/util/H5BizPluginList;->bizPluginList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->addH5PluginConfigList(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method private initUC()V
    .locals 0

    .line 99
    invoke-static {}, Lcom/mpaas/nebula/adapter/api/MPUcCore;->initUc()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5PresetDefaultConfig;->initDefaultConfig()V

    .line 53
    invoke-static {}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->getInstance()Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    move-result-object v0

    .line 54
    .local v0, "tinyHelper":Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
    invoke-direct {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->setAppName(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->setVersionName(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v1

    new-instance v2, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$1;-><init>(Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;)V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->setDefaultLoadingViewFactory(Lcom/alipay/mobile/framework/loading/LoadingView$Factory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "NebulaAdapterInitServiceImpl"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->initProviders()V

    .line 68
    invoke-direct {p0}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->initUC()V

    .line 69
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 74
    return-void
.end method
