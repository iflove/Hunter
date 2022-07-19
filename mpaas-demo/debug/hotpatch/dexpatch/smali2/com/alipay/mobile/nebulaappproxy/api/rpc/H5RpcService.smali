.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
.super Ljava/lang/Object;
.source "H5RpcService.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/android/phone/inside/commonservice/RpcService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getWalletRpcService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getInsideRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->b:Lcom/alipay/android/phone/inside/commonservice/RpcService;

    .line 29
    return-void
.end method

.method public static getInsideRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;
    .locals 1

    .line 135
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v0

    return-object v0
.end method

.method public static getWalletRpcService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-class v0, Lcom/alipay/mobile/framework/service/common/ThirdpartyRpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0

    .line 130
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V
    .locals 0
    .param p1, "rpcHeaderListener"    # Lcom/alipay/mobile/common/rpc/RpcHeaderListener;

    .line 124
    return-void
.end method

.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Class;
    .param p2, "var2"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 86
    :cond_0
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->batchBegin()V

    .line 67
    :cond_0
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "*>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->b:Lcom/alipay/android/phone/inside/commonservice/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->b:Lcom/alipay/android/phone/inside/commonservice/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V

    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->b:Lcom/alipay/android/phone/inside/commonservice/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->b:Lcom/alipay/android/phone/inside/commonservice/RpcService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getScene()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->prepareResetCookie(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setScene(JLjava/lang/String;)V
    .locals 1
    .param p1, "var1"    # J
    .param p3, "var3"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/RpcService;->setScene(JLjava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method
