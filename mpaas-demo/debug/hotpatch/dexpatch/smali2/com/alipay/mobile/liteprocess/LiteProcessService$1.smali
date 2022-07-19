.class Lcom/alipay/mobile/liteprocess/LiteProcessService$1;
.super Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;
.source "LiteProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcessService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessService;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService$1;->a:Lcom/alipay/mobile/liteprocess/LiteProcessService;

    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public destoryClient()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c()V

    .line 58
    return-void
.end method

.method public isFinishing()Z
    .locals 1

    .line 63
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public moveTaskToFront(IZZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "runningTaskInfoId"    # I
    .param p2, "enter"    # Z
    .param p3, "fromForeground"    # Z
    .param p4, "params"    # Landroid/os/Bundle;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    .line 74
    .local v1, "activityManager":Landroid/app/ActivityManager;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/liteprocess/Util;->moveTaskToFront(Landroid/app/ActivityManager;Landroid/app/Activity;IZZLandroid/os/Bundle;Z)V

    .line 78
    return-void
.end method

.method public notifyBundleUpdate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "updateResult"    # Landroid/os/Bundle;

    .line 89
    move-object/from16 v1, p1

    const-string v2, "LiteProcess"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v3, "getBundleManager"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "bundleManager":Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "BundleManager.refreshUpdatedBundlesInLite(), begin."

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v3, "updatedBundleNames":Ljava/util/Set;
    const-string/jumbo v4, "refreshUpdatedBundlesInLite"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/util/Set;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v3, v7, v9

    invoke-static {v0, v4, v6, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 98
    .local v4, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "BundleManager.refreshUpdatedBundlesInLite(), end. Result:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", updatedBundleNames="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-interface {v6, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 103
    const-string v6, "com.alipay.mobile.framework.DescriptionManager"

    const-string v7, "createInstance"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v8

    new-array v11, v9, [Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v12

    aput-object v12, v11, v8

    .line 103
    invoke-static {v6, v7, v10, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, "descriptionManager":Ljava/lang/Object;
    const-string/jumbo v7, "removeBundles"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 111
    .local v7, "ur_removeBundles":Ljava/util/List;
    const-string/jumbo v10, "recoverBundles"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 112
    .local v10, "ur_recoverBundles":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v11, "removeNames":Ljava/util/List;
    if-eqz v7, :cond_0

    .line 114
    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    if-eqz v10, :cond_1

    .line 117
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    const-string/jumbo v12, "updateDescriptionsFromMetaInfoCfg"

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Ljava/util/Collection;

    aput-object v15, v14, v8

    const-class v15, Ljava/util/Collection;

    aput-object v15, v14, v9

    const-class v15, Ljava/util/Map;

    aput-object v15, v14, v5

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v15, v14, v16

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v15, v14, v17

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v8

    aput-object v3, v13, v9

    const/4 v15, 0x0

    aput-object v15, v13, v5

    .line 122
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v13, v16

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v13, v17

    .line 120
    invoke-static {v6, v12, v14, v13}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "bundleManager":Ljava/lang/Object;
    .end local v3    # "updatedBundleNames":Ljava/util/Set;
    .end local v4    # "result":Z
    .end local v6    # "descriptionManager":Ljava/lang/Object;
    .end local v7    # "ur_removeBundles":Ljava/util/List;
    .end local v10    # "ur_recoverBundles":Ljava/util/List;
    .end local v11    # "removeNames":Ljava/util/List;
    :cond_2
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public notifyLogout()V
    .locals 1

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 83
    return-void
.end method

.method public remoteClientCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
    .locals 1
    .param p1, "args"    # Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    .line 132
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->clientRemoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;

    move-result-object v0

    return-object v0
.end method
