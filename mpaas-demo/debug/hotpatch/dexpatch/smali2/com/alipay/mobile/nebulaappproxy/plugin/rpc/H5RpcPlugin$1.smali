.class Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;
.super Ljava/lang/Object;
.source "H5RpcPlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;

.field final synthetic e:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

.field final synthetic f:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic g:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic i:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;JILandroid/os/Handler;Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;Lcom/alipay/mobile/nebula/provider/H5LogProvider;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->i:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

    iput-wide p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->a:J

    iput p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->b:I

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->c:Landroid/os/Handler;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->e:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p9, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->g:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p10, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->a:J

    sub-long/2addr v0, v2

    .line 85
    .local v0, "spmTime":J
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "spmStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " spmTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5RpcPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->b:I

    int-to-long v5, v3

    cmp-long v3, v0, v5

    if-gez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->c:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;

    if-eqz v3, :cond_0

    .line 90
    const-string/jumbo v3, "removeCallbacks"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->e:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->isPageStarted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    const-string v3, "logAutoBehavorPageStart"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->e:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->i:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->g:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;->h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 99
    :cond_2
    return-void
.end method
