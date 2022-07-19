.class Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;
.super Ljava/lang/Object;
.source "H5ApiManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->doPreloadJob(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;

    .line 1008
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;->b:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1012
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->canStartPreload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doPreloadJob...closed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void

    .line 1017
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    const/4 v1, 0x0

    .line 1018
    .local v1, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isAliGroupApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    return-void

    .line 1024
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->mtopPreConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    .end local v1    # "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    return-void

    .line 1025
    :catchall_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPreloadJob...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
