.class public Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/asynctask/Pipeline;


# instance fields
.field protected mActive:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

.field protected mExecutor:Ljava/util/concurrent/Executor;

.field protected mIdleListener:Ljava/lang/Runnable;

.field protected volatile mIsStart:Z

.field protected final mName:Ljava/lang/String;

.field protected final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIsStart:Z

    .line 53
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const-string v0, "StandardPipeline"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    .line 58
    :goto_1
    iput-object p2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 59
    return-void
.end method


# virtual methods
.method public addIdleListener(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 73
    const-string v0, "Pipeline: ["

    const-string v1, "AsyTskExecutor"

    if-nez p1, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] cancel idle listener, canceled is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] exist idle listener (do not replace), added is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", existed is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "info":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 84
    .end local v0    # "info":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] add idle listener, added is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V
    .locals 4
    .param p1, "task"    # Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->setPipeLine(Lcom/alipay/mobile/quinox/asynctask/Pipeline;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->getWeight()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->getWeight()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 112
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move v1, v2

    .line 114
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    .end local v1    # "index":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->doStart()I

    .line 120
    :cond_4
    return-void

    .line 115
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 100
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

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 95
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 96
    return-void
.end method

.method protected doStart()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mActive:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->next()I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V
    .locals 2
    .param p1, "runnable"    # Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    .line 181
    if-nez p1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()I
    .locals 5

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .end local v0    # "size":I
    .local v1, "size":I
    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mActive:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    goto :goto_0

    .line 155
    :cond_0
    iput-object v3, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mActive:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    .line 157
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mActive:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->execute(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 162
    .local v0, "idleListener":Ljava/lang/Runnable;
    iput-object v3, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIdleListener:Ljava/lang/Runnable;

    .line 163
    if-eqz v0, :cond_2

    .line 165
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "AsyTskExecutor"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v0    # "idleListener":Ljava/lang/Runnable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    move v0, v1

    goto :goto_2

    .line 157
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 172
    .end local v1    # "size":I
    .local v0, "size":I
    :cond_3
    :goto_2
    return v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 64
    return-void
.end method

.method public start()I
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pipeline: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "].start()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyTskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIsStart:Z

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->doStart()I

    move-result v0

    return v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StandardPipeline start failed : The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()I
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pipeline: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "].stop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyTskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mIsStart:Z

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 203
    :cond_0
    return v0
.end method
