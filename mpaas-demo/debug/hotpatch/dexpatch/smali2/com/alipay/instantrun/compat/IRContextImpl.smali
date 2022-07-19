.class public Lcom/alipay/instantrun/compat/IRContextImpl;
.super Ljava/lang/Object;
.source "IRContextImpl.java"

# interfaces
.implements Lcom/alipay/instantrun/IRContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.IRContextImpl"


# instance fields
.field private mClazz_IRBridge:Ljava/lang/Class;

.field private final mMemberInterceptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Ljava/util/Map<",
            "Lcom/alipay/instantrun/aop/IMethodAOPListener;",
            "Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public loadByDefaultClassLoader(Ljava/lang/String;)Z
    .locals 9
    .param p1, "patchName"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mClazz_IRBridge:Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "IR.IRContextImpl"

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    const-string v0, "com.alipay.mobile.quinox.hotpath.IRBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mClazz_IRBridge:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 38
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mClazz_IRBridge:Ljava/lang/Class;

    const-string v5, "isDynamic"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 39
    .local v0, "method_isDynamic":Ljava/lang/reflect/Method;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .local v1, "isDynamic":Ljava/lang/Boolean;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "isDynamic got="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    return v6

    :cond_1
    return v3

    .line 42
    .end local v0    # "method_isDynamic":Ljava/lang/reflect/Method;
    .end local v1    # "isDynamic":Ljava/lang/Boolean;
    :catchall_1
    move-exception v0

    .line 43
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "tr":Ljava/lang/Throwable;
    return v3
.end method

.method public registerMethodAOPListener(Ljava/lang/reflect/Member;Lcom/alipay/instantrun/aop/IMethodAOPListener;)V
    .locals 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "iMethodAOPListener"    # Lcom/alipay/instantrun/aop/IMethodAOPListener;

    .line 50
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    .line 55
    .local v2, "interceptorMap":Ljava/util/Map;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v2, v1

    .line 57
    iget-object v1, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    new-instance v1, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;

    invoke-direct {v1, p2}, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;-><init>(Lcom/alipay/instantrun/aop/IMethodAOPListener;)V

    .line 61
    .local v1, "irInterceptor":Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
    invoke-static {p1, v1}, Lcom/alipay/instantrun/compat/DexAOPHookUtil;->registerPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z

    .line 62
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v1    # "irInterceptor":Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
    .end local v2    # "interceptorMap":Ljava/util/Map;
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterMethodAOPListener(Ljava/lang/reflect/Member;Lcom/alipay/instantrun/aop/IMethodAOPListener;)V
    .locals 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "iMethodAOPListener"    # Lcom/alipay/instantrun/aop/IMethodAOPListener;

    .line 69
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    .line 74
    .local v2, "interceptorMap":Ljava/util/Map;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;

    .line 77
    .local v1, "irInterceptor":Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
    invoke-static {p1, v1}, Lcom/alipay/instantrun/compat/DexAOPHookUtil;->unregisterPointInterceptor(Ljava/lang/reflect/Member;Lcom/alipay/dexaop/ChainInterceptor;)Z

    .line 78
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v1    # "irInterceptor":Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/alipay/instantrun/compat/IRContextImpl;->mMemberInterceptorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v2    # "interceptorMap":Ljava/util/Map;
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_3
    :goto_0
    return-void
.end method
