.class Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin$1;
.super Ljava/lang/Object;
.source "TinyAppUCFailPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin;

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin$1;->b:Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 108
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 111
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "alipays://platformapi/startapp?appId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppUCFailPlugin$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->process(Landroid/net/Uri;)I

    .line 114
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopSelfProcess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "openFallbackAppId...e="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TinyAppUCFailPlugin"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
