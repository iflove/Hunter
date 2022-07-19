.class public Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;
.super Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;
.source "TaskPoolExecutor.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field private b:I

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;IIJLjava/util/concurrent/TimeUnit;ZLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Z",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 35
    move-object v9, p0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 27
    const/16 v0, 0xa

    iput v0, v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->d:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->e:Z

    .line 36
    move/from16 v0, p7

    invoke-super {p0, v0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 38
    move-object v0, p1

    iput-object v0, v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 39
    const/4 v0, -0x1

    iput v0, v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->b:I

    .line 40
    return-void
.end method


# virtual methods
.method public allowCoreThreadTimeOut(Z)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string v2, "allowCoreThreadTimeOut"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 170
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    iget v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->obtainRunnable(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)Ljava/lang/Runnable;

    move-result-object p1

    .line 105
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->prestartAllCoreThreads()I

    move-result v0

    return v0
.end method

.method public prestartCoreThread()Z
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->prestartCoreThread()Z

    move-result v0

    return v0
.end method

.method public purge()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "purge"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->purge()V

    .line 134
    return-void
.end method

.method public restore()V
    .locals 5

    .line 83
    const-string v0, "TaskPoolExecutor"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore thread pool "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->d:I

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_1
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 91
    :catch_0
    move-exception v3

    .line 92
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 96
    :goto_2
    goto :goto_0

    .line 99
    :cond_1
    goto :goto_3

    .line 97
    :catchall_1
    move-exception v1

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore thread poll "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "setCorePoolSize"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setCorePoolSize(I)V

    .line 140
    return-void
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "setKeepAliveTime"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 146
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "setMaximumPoolSize"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 158
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "setRejectedExecutionHandler"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 164
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "setThreadFactory"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 152
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->b:I

    .line 44
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->backTrackInvoker()Landroid/util/Pair;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->isShutdownCheckInvoker(Landroid/util/Pair;)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "shutdown"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->shutdown()V

    .line 117
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->backTrackInvoker()Landroid/util/Pair;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->isShutdownCheckInvoker(Landroid/util/Pair;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "TaskPoolExecutor"

    const-string/jumbo v2, "shutdownNow"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->shouldNotBeInvoked(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shutdownValidly()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->shutdown()V

    .line 48
    return-void
.end method

.method public yield()V
    .locals 7

    .line 52
    const-string/jumbo v0, "yield thread "

    const-string v1, "TaskPoolExecutor"

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "yield thread pool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 58
    iget-boolean v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->d:I

    .line 61
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v4

    .line 67
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13

    invoke-static {v4, v5}, Landroid/os/Process;->setThreadPriority(II)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :goto_2
    goto :goto_3

    .line 72
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 69
    :catch_0
    move-exception v4

    .line 70
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 75
    :goto_3
    goto :goto_0

    .line 78
    :cond_2
    goto :goto_4

    .line 76
    :catchall_2
    move-exception v0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "yield thread poll "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->a:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_4
    return-void
.end method
