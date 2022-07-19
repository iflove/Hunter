.class public Lcom/alipay/mobile/common/rpc/RpcFactory;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# static fields
.field private static final GLOBLE_INTERCEPTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/rpc/RpcHeaderListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/rpc/RpcHeaderListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/alipay/mobile/common/rpc/Config;

.field protected mContext:Landroid/content/Context;

.field protected mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcFactory;->GLOBLE_INTERCEPTORS:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 51
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Landroid/content/Context;)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .param p2, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 58
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Landroid/content/Context;Z)V
    .locals 2
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLiteRpcInvoke"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 65
    if-nez p3, :cond_0

    .line 66
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/LiteRpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/LiteRpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 70
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public static final addGlobelRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
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

    .line 233
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcFactory;->GLOBLE_INTERCEPTORS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 148
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V
    .locals 1
    .param p1, "rpcHeaderListener"    # Lcom/alipay/mobile/common/rpc/RpcHeaderListener;

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
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

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->addGlobelRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 160
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchBegin()V

    .line 133
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

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public cancelAllRpc()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->getInstance()Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcLifeManager;->cancelAllRpc()V

    .line 239
    return-void
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    const/4 v1, 0x0

    .line 170
    .local v1, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 171
    return-object v1

    .line 173
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcFactory;->GLOBLE_INTERCEPTORS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    return-object v0
.end method

.method public getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
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

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clazz=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpcFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v3, v4, p1, v5, v1}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/alipay/mobile/common/rpc/Config;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "RpcFactory"

    const-string v2, "getContext fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 112
    :try_start_0
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    const/4 v1, 0x0

    .line 113
    .local v1, "handler":Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 114
    .end local v1    # "handler":Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getRpcInvokeContext] Class name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RpcFactory"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;->getInstance()Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clazz=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpcFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyRpcHeaderUpdateEvent(Lcom/alipay/mobile/common/rpc/RpcHeader;)V
    .locals 6
    .param p1, "rpcHeader"    # Lcom/alipay/mobile/common/rpc/RpcHeader;

    const-string v0, "RpcFactory"

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Ljava/util/List;

    const/4 v2, 0x0

    move-object v3, v2

    .line 216
    .local v3, "lRpcHeaderListenerList":Ljava/util/List;
    move-object v3, v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object v3, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/List;

    .line 219
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 221
    :try_start_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/rpc/RpcHeaderListener;

    .line 222
    .local v2, "rpcHeaderListener":Lcom/alipay/mobile/common/rpc/RpcHeaderListener;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 223
    invoke-interface {v2, p1}, Lcom/alipay/mobile/common/rpc/RpcHeaderListener;->onRpcHeaderUpdateEvent(Lcom/alipay/mobile/common/rpc/RpcHeader;)V

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onRpcHeaderUpdateEvent. class=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v2    # "rpcHeaderListener":Lcom/alipay/mobile/common/rpc/RpcHeaderListener;
    :cond_1
    goto :goto_1

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notifyRpcHeaderUpdateEvent exception. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->setResetCoolie(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 0
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;

    .line 205
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 206
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    .line 189
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->setScene(Ljava/lang/String;)V

    .line 122
    return-void
.end method
