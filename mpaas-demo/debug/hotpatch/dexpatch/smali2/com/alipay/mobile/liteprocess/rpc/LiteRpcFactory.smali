.class public Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;
.super Lcom/alipay/mobile/common/rpc/RpcFactory;
.source "LiteRpcFactory.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;

    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    .line 14
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 15
    return-void
.end method
