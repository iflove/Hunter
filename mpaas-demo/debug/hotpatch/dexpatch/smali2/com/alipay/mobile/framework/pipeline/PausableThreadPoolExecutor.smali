.class public Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;
.super Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;
.source "PausableThreadPoolExecutor.java"


# static fields
.field private static volatile a:Z

.field private static volatile b:J

.field private static c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static d:Ljava/util/concurrent/locks/Condition;

.field private static e:I


# instance fields
.field private volatile f:Z

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->b:J

    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 26
    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->d:Ljava/util/concurrent/locks/Condition;

    .line 27
    const/4 v0, 0x7

    sput v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->e:I

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    .line 34
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    .line 38
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    .line 42
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct/range {p0 .. p8}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    .line 46
    return-void
.end method

.method static pause()V
    .locals 3

    .line 79
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->a:Z

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->b:J

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableThreadPoolExecutor"

    const-string/jumbo v2, "pause"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static resume()V
    .locals 3

    .line 90
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->a:Z

    .line 93
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->b:J

    .line 94
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableThreadPoolExecutor"

    const-string/jumbo v2, "resume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static setAwaitTime(I)V
    .locals 0
    .param p0, "awaitTime"    # I

    .line 102
    sput p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->e:I

    .line 103
    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 50
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->a:Z

    if-eqz v0, :cond_1

    .line 54
    sget-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->e:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableThreadPoolExecutor"

    const-string/jumbo v2, "over time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->resume()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    return-void

    .line 59
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->d:Ljava/util/concurrent/locks/Condition;

    sget v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->e:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    :goto_1
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 67
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    if-nez v0, :cond_0

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public setNotDelayable()V
    .locals 1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->g:Z

    .line 111
    return-void
.end method

.method public setNotPausable(Z)V
    .locals 0
    .param p1, "notPausable"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->f:Z

    .line 107
    return-void
.end method
