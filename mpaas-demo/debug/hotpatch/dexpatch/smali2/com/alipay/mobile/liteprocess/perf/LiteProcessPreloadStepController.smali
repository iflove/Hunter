.class public Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;
.super Ljava/lang/Object;
.source "LiteProcessPreloadStepController.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScanAppForeground()Z
    .locals 1

    .line 14
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static onScanAppMonitorAction(Z)V
    .locals 4
    .param p0, "isForeground"    # Z

    .line 18
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    if-nez p0, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 20
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 22
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    return-void
.end method

.method public static registerContinueCallback(Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 36
    :cond_1
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
