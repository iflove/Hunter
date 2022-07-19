.class public Lcom/alipay/mobile/nebulax/engine/cube/b/e;
.super Ljava/lang/Object;
.source "NXICKJsApiHandler.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKJsApiHandler;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/concurrent/Executor;
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3c

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string v1, "cube_js_dispatch"

    invoke-direct {v8, v1}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public callJsApi(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)V
    .locals 3

    .line 27
    const-string v0, "NebulaXEngine.NXICKJsApiHandler"

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/cube/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/b/e;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call js api async on cube js thread , action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a()Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_2
    const-string p2, "callJsApi exception on thread"

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_0
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    const-string p2, "callJsApi exception"

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_1
    return-void
.end method

.method public callJsApiSync(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;
    .locals 3

    .line 70
    const-string v0, "NebulaXEngine.NXICKJsApiHandler"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call js api sycn, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;

    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a()Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    const-string p2, "callJsApiSync exception"

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    new-instance p1, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;

    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-direct {p1, p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    return-object p1
.end method
