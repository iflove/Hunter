.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;
.super Ljava/lang/Object;
.source "TinyAppSubPackagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->prepareSubPackage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;Ljava/util/concurrent/Future;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 201
    const-string v0, "TinyAppSubPackagePlugin"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 202
    .local v1, "retObj":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareSubPackage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " got first task result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " needSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->c:Z

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v1    # "retObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "await first task error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
