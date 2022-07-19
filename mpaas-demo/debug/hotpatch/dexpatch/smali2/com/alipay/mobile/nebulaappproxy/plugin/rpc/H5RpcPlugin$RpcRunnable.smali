.class Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
.super Ljava/lang/Object;
.source "H5RpcPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RpcRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

.field private b:Lcom/alipay/mobile/h5container/api/H5Event;

.field private c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 114
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 115
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    const-string v0, "H5RpcPlugin"

    const-string/jumbo v1, "sendRpc form runnable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 121
    return-void
.end method
