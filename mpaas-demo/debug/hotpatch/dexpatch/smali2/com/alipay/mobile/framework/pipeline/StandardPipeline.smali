.class public Lcom/alipay/mobile/framework/pipeline/StandardPipeline;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/Pipeline;


# instance fields
.field protected mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

.field protected mExecutor:Ljava/util/concurrent/Executor;

.field protected mIdleListener:Ljava/lang/Runnable;

.field protected volatile mIsStart:Z

.field protected final mName:Ljava/lang/String;

.field protected final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIsStart:Z

    .line 56
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const-string v0, "StandardPipeline"

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    .line 61
    :goto_1
    iput-object p2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 62
    return-void
.end method


# virtual methods
.method public addIdleListener(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 76
    const-string v0, "Pipeline: ["

    const-string v1, "StdPipeline"

    if-nez p1, :cond_0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] cancel idle listener, canceled is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] exist idle listener (do not replace), added is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", existed is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "info":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 88
    .end local v0    # "info":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] add idle listener, added is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method addTask(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V
    .locals 4
    .param p1, "task"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->setPipeLine(Lcom/alipay/mobile/framework/pipeline/Pipeline;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->getWeight()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->getWeight()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 117
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move v1, v2

    .line 119
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 120
    .end local v1    # "index":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->doStart()V

    .line 125
    :cond_4
    return-void

    .line 120
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 100
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->addTask(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    .line 101
    return-void
.end method

.method protected doStart()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->next()V

    .line 145
    :cond_0
    return-void
.end method

.method protected execute(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V
    .locals 2
    .param p1, "runnable"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 153
    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    goto :goto_0

    .line 157
    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 159
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->execute(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 164
    .local v0, "idleListener":Ljava/lang/Runnable;
    iput-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 165
    if-nez v0, :cond_2

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "StdPipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pipeline: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] finished, no idle listener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "StdPipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pipeline: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] finished, run idle listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "StdPipeline"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 159
    .end local v0    # "idleListener":Ljava/lang/Runnable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 179
    :cond_3
    :goto_1
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    return-void
.end method

.method public start()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pipeline: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "].start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StdPipeline"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIsStart:Z

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->doStart()V

    .line 135
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StandardPipeline start failed : The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pipeline: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "].stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StdPipeline"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mIsStart:Z

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    :cond_0
    return-void
.end method
