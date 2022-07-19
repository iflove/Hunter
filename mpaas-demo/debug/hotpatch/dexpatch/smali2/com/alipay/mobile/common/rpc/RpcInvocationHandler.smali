.class public Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;
.super Ljava/lang/Object;
.source "RpcInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

.field protected mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/alipay/mobile/common/rpc/Config;

.field protected mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "rpcInvoker"    # Lcom/alipay/mobile/common/rpc/RpcInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/rpc/Config;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alipay/mobile/common/rpc/RpcInvoker;",
            ")V"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "rpcInvoker"    # Lcom/alipay/mobile/common/rpc/RpcInvoker;
    .param p4, "backgroundRpc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/rpc/Config;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alipay/mobile/common/rpc/RpcInvoker;",
            "Z)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->b:Z

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 60
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 62
    iput-boolean p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->b:Z

    .line 63
    return-void
.end method

.method private a()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;)Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    .local v1, "localContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    move-object v1, v0

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->isResetCoolie()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 75
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 76
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 78
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 81
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 84
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->isCompress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 88
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 89
    invoke-static {p1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isRetryable(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->setAllowRetry(Z)V

    goto :goto_0

    .line 92
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->setAllowRetry(Z)V

    .line 95
    :cond_6
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getConfig()Lcom/alipay/mobile/common/rpc/Config;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    return-object v0
.end method

.method public getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a(Ljava/lang/reflect/Method;)Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isResetCoolie()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a:Z

    return v0
.end method

.method public setInnerRpcInvokeContext(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 0
    .param p1, "innerRpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 124
    return-void
.end method

.method public setResetCoolie(Z)V
    .locals 0
    .param p1, "resetCoolie"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a:Z

    .line 109
    return-void
.end method
