.class public Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;
.super Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;
.source "PausableScheduledThreadPool.java"


# static fields
.field private static volatile a:Z

.field private static volatile b:J

.field private static c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static d:Ljava/util/concurrent/locks/Condition;

.field private static e:I


# instance fields
.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->b:J

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 25
    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->d:Ljava/util/concurrent/locks/Condition;

    .line 26
    const/4 v0, 0x7

    sput v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "corePoolSize"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    .line 43
    return-void
.end method

.method static pause()V
    .locals 3

    .line 68
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 70
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableScheduledThreadPool"

    const-string/jumbo v2, "pause"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->a:Z

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static resume()V
    .locals 3

    .line 79
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableScheduledThreadPool"

    const-string/jumbo v2, "resume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->a:Z

    .line 83
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->b:J

    .line 84
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static setAwaitTime(I)V
    .locals 0
    .param p0, "awaitTime"    # I

    .line 91
    sput p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->e:I

    .line 92
    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    if-nez v0, :cond_2

    .line 48
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->a:Z

    if-eqz v0, :cond_1

    .line 51
    sget-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->e:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PausableScheduledThreadPool"

    const-string/jumbo v2, "over time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->resume()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    return-void

    .line 56
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->d:Ljava/util/concurrent/locks/Condition;

    sget v1, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->e:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :goto_1
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 64
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public setNotPausable(Z)V
    .locals 0
    .param p1, "notPausable"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;->f:Z

    .line 96
    return-void
.end method
