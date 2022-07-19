.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$7;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 1070
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$7;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "H5NebulaService"

    .line 1073
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->initConfig()V

    .line 1074
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->initConfig()V

    .line 1078
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->negotiate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    move-object v2, v1

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v2

    .line 1080
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaXProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    const-string v1, "not do init stuff on nebulax process!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-void

    .line 1088
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1089
    const-string v3, "preLoadInTinyProcess"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1092
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "isTinyApp"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initTinyAppRes(Landroid/os/Bundle;Z)V

    .line 1096
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->initViewCache()V

    .line 1098
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->preloadPackage()V

    .line 1100
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->startPreload()V

    .line 1102
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-object v3, v1

    .line 1103
    .local v3, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isV8WorkerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    const-class v0, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    move-object v4, v1

    .line 1106
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    move-object v4, v0

    if-eqz v0, :cond_1

    .line 1108
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v5, v1

    .line 1110
    .local v5, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v5, v0

    if-eqz v0, :cond_1

    .line 1111
    const-string v0, "h5_preloadWorker"

    invoke-interface {v5, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "config":Ljava/lang/String;
    const-string v6, "YES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1113
    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;->preloadWorker(Landroid/os/Bundle;)V

    .line 1118
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    .end local v5    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    return-void

    .line 1119
    :cond_2
    const-string v3, "preLoadInMainProcess"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 1122
    .local v2, "centerPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v2, v3

    if-eqz v3, :cond_3

    .line 1123
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getEnableDegradeApp()Ljava/util/Set;

    move-result-object v3

    .line 1124
    .local v1, "appSet":Ljava/util/Set;
    move-object v1, v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1129
    .local v4, "appId":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 1130
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1133
    goto :goto_1

    .line 1131
    :catchall_1
    move-exception v5

    .line 1132
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    goto :goto_1

    .line 1141
    .end local v1    # "appSet":Ljava/util/Set;
    .end local v2    # "centerPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    :cond_3
    return-void
.end method
