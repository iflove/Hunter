.class public Lcom/alipay/mobile/common/task/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Common_AsyncTaskExecutor"

.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/ThreadFactory;

.field private static volatile h:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;


# instance fields
.field private final d:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

.field private e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lcom/alipay/mobile/common/task/SerialExecutor;

.field private g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 41
    sput v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->a:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->b:I

    .line 47
    new-instance v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 95
    const-string v0, "Common_AsyncTaskExecutor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    .line 97
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;

    sget v10, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->b:I

    const-wide/16 v5, 0x3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v11, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    move v3, v10

    move v4, v10

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 99
    new-instance v1, Lcom/alipay/mobile/common/task/SerialExecutor;

    iget-object v3, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/common/task/SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->f:Lcom/alipay/mobile/common/task/SerialExecutor;

    .line 100
    new-instance v1, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;

    invoke-direct {v1, v10, v11}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 101
    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "init common AsyncTaskExecutor success"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "init common AsyncTaskExecutor got exception"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;
    .locals 2

    .line 117
    sget-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->h:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    if-nez v0, :cond_1

    .line 118
    const-class v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->h:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->h:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 122
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->h:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;
    .locals 1
    .param p1, "tr"    # Lcom/alipay/mobile/common/task/transaction/Transaction;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTaskExecutor.execute(Runnable, threadName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common_AsyncTaskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTaskExecutor.executeSerially(Runnable, threadName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common_AsyncTaskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->f:Lcom/alipay/mobile/common/task/SerialExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/SerialExecutor;->execute(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 145
    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->removeTransaction(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 171
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTaskExecutor.schedule(Runnable, threadName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common_AsyncTaskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 9
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 180
    const-string v0, "Common_AsyncTaskExecutor"

    const-string v1, "AsyncTaskExecutor.scheduleAtFixedRate(Runnable)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->d:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->shutdown()V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->f:Lcom/alipay/mobile/common/task/SerialExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/SerialExecutor;->shutdown()V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 193
    return-void
.end method
