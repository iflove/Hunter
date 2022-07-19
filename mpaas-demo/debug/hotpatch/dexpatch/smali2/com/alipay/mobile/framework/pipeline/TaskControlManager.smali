.class public final Lcom/alipay/mobile/framework/pipeline/TaskControlManager;
.super Ljava/lang/Object;
.source "TaskControlManager.java"


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alipay/mobile/framework/pipeline/TaskControlManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static enableTaskDelay(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 85
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->enableDelay(Z)V

    .line 86
    return-void
.end method

.method public static enableTaskDelay(ZII)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "minTime"    # I
    .param p2, "maxTime"    # I

    .line 89
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->enableDelay(ZII)V

    .line 90
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;
    .locals 3

    .line 20
    const/4 v0, 0x0

    .local v0, "taskControlManager":Lcom/alipay/mobile/framework/pipeline/TaskControlManager;
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    .line 21
    move-object v0, v2

    if-nez v2, :cond_0

    .line 22
    new-instance v2, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;-><init>()V

    move-object v0, v2

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method

.method public static pauseHandler()V
    .locals 0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/handler/PausableHandler;->pauseAll()V

    .line 78
    return-void
.end method

.method public static pausePipeline()V
    .locals 0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->pause()V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->pause()V

    .line 69
    return-void
.end method

.method public static pauseThreadPool()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->pause()V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->pause()V

    .line 59
    return-void
.end method

.method public static resumeHandler()V
    .locals 0

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/handler/PausableHandler;->resumeAll()V

    .line 82
    return-void
.end method

.method public static resumePipeline()V
    .locals 0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->resume()V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->resume()V

    .line 74
    return-void
.end method

.method public static resumeThreadPool()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->resume()V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->resume()V

    .line 64
    return-void
.end method

.method public static setPipelinePauseTime(I)V
    .locals 0
    .param p0, "pauseTime"    # I

    .line 48
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->setAwaitTime(I)V

    .line 49
    return-void
.end method

.method public static setThreadPoolPauseTime(I)V
    .locals 0
    .param p0, "pauseTime"    # I

    .line 52
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setAwaitTime(I)V

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->setAwaitTime(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public final end()V
    .locals 4

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    .local v1, "taskControlManager":Lcom/alipay/mobile/framework/pipeline/TaskControlManager;
    move-object v1, v0

    iget v2, v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " end -- count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskControlManager"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v0, v1, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 40
    :cond_0
    return-void
.end method

.method public final isSensitive()Z
    .locals 2

    .line 43
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    const/4 v1, 0x0

    .line 44
    .local v1, "taskControlManager":Lcom/alipay/mobile/framework/pipeline/TaskControlManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    iget v1, v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " start -- count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskControlManager"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
