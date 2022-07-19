.class public Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/RpcService;
.source "LiteRpcServiceImpl.java"


# instance fields
.field protected a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->b:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    new-instance v1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setContext(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->b:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setContext(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->b:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setContext(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;Landroid/content/Context;)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/liteprocess/rpc/LiteRpcDefaultConfig;
    .param p2, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->b:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    .line 72
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setContext(Landroid/content/Context;)V

    .line 74
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 75
    return-void
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V
    .locals 1
    .param p1, "rpcHeaderListener"    # Lcom/alipay/mobile/common/rpc/RpcHeaderListener;

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V

    .line 161
    return-void
.end method

.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
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

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 151
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->batchBegin()V

    .line 96
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

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

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

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

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

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    return-object v0
.end method

.method public getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

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

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->getScene()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 141
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 146
    return-void
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->prepareResetCookie(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setContext(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public setScene(JLjava/lang/String;)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "scene"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->a:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcFactory;->setScene(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl$1;-><init>(Lcom/alipay/mobile/liteprocess/rpc/LiteRpcServiceImpl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method
