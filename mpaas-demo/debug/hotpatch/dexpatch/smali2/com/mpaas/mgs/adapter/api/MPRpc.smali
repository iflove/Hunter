.class public Lcom/mpaas/mgs/adapter/api/MPRpc;
.super Ljava/lang/Object;


# static fields
.field private static mpaasRpcService:Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

.field private static rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private static sLastTs:J

.field private static useMpaasRpcService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->sLastTs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "interceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
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

    .line 36
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->mobileGwPv()V

    .line 37
    sget-boolean v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->useMpaasRpcService:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->mpaasRpcService:Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/framework/service/common/MpaasRpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 42
    return-void
.end method

.method public static getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->mobileGwPv()V

    .line 46
    sget-boolean v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->useMpaasRpcService:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->mpaasRpcService:Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/MpaasRpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public static getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->mobileGwPv()V

    .line 28
    sget-boolean v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->useMpaasRpcService:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->mpaasRpcService:Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/MpaasRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 2

    .line 54
    invoke-static {}, Lcom/mpaas/mgs/adapter/api/MPRpc;->mobileGwPv()V

    .line 56
    :try_start_0
    sget-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    sput-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_0
    sget-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0
.end method

.method private static mobileGwPv()V
    .locals 5

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mpaas/mgs/adapter/api/MPRpc;->sLastTs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    const-string v1, "mgs_client_pv"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->RPC:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->sLastTs:J

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/mpaas/mgs/adapter/api/MPRpc;->sLastTs:J

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public static setup(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 84
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->initQuinoxless(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/ClientMonitor;

    .line 86
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/common/impl/MpaasRpcServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->mpaasRpcService:Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mpaas/mgs/adapter/api/MPRpc;->useMpaasRpcService:Z

    .line 88
    return-void
.end method
