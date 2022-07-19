.class Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
.super Ljava/lang/Object;
.source "PipelineRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/Pool$Poolable;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final TAG:Ljava/lang/String; = "AsyTskExecutor"

.field public static final TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;


# instance fields
.field protected final mID:Ljava/lang/String;

.field protected mPipeLine:Lcom/alipay/mobile/quinox/asynctask/Pipeline;

.field protected mTask:Ljava/lang/Runnable;

.field protected mThreadName:Ljava/lang/String;

.field protected mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mID:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mWeight:I

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mWeight:I

    return v0
.end method

.method init(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    .line 68
    iput-object p2, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mWeight:I

    .line 70
    return-void
.end method

.method public reset()V
    .locals 4

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    .line 103
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "AsyTskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset PipelineRunnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", task = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", threadName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->init(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 105
    iput-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/mobile/quinox/asynctask/Pipeline;

    .line 106
    .end local v0    # "task":Ljava/lang/Runnable;
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "start":J
    const/4 v2, 0x0

    .line 116
    .local v2, "pipelineName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "originThreadName":Ljava/lang/String;
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/mobile/quinox/asynctask/Pipeline;

    .line 119
    .local v4, "pipeLine":Lcom/alipay/mobile/quinox/asynctask/Pipeline;
    iget-object v5, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    .line 120
    .local v5, "task":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    .line 121
    .local v6, "taskName":Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    move-object v8, p0

    .line 124
    .local v8, "thread":Ljava/lang/Thread;
    move-object v8, v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 127
    .end local v8    # "thread":Ljava/lang/Thread;
    :cond_0
    instance-of v7, v4, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    if-eqz v7, :cond_1

    .line 128
    move-object v7, v4

    check-cast v7, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    iget-object v2, v7, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    .line 131
    :cond_1
    if-eqz v5, :cond_3

    .line 132
    if-nez v4, :cond_2

    :try_start_1
    const-string v7, "AsyTskExecutor"

    goto :goto_0

    :cond_2
    const-string v7, "PipelineRunnable"

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " start at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 135
    :cond_3
    const-string v7, "AsyTskExecutor"

    const-string v8, "mTask is null"

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 140
    .local v7, "end":J
    if-nez v4, :cond_4

    const-string v9, "AsyTskExecutor"

    goto :goto_2

    :cond_4
    const-string v9, "PipelineRunnable"

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " end cost "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v7, v0

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v3, :cond_5

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    :cond_5
    if-eqz v4, :cond_6

    .line 146
    invoke-interface {v4}, Lcom/alipay/mobile/quinox/asynctask/Pipeline;->next()I

    .line 149
    :cond_6
    sget-object v9, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v9, p0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->free(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 150
    .end local v7    # "end":J
    return-void

    .line 138
    :catchall_0
    move-exception v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 140
    .local v8, "end":J
    if-nez v4, :cond_7

    const-string v10, "AsyTskExecutor"

    goto :goto_3

    :cond_7
    const-string v10, "PipelineRunnable"

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " end cost "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v8, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v3, :cond_8

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    :cond_8
    if-eqz v4, :cond_9

    .line 146
    invoke-interface {v4}, Lcom/alipay/mobile/quinox/asynctask/Pipeline;->next()I

    .line 149
    :cond_9
    sget-object v10, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v10, p0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->free(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 150
    .end local v8    # "end":J
    throw v7

    .line 121
    .end local v4    # "pipeLine":Lcom/alipay/mobile/quinox/asynctask/Pipeline;
    .end local v5    # "task":Ljava/lang/Runnable;
    .end local v6    # "taskName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setPipeLine(Lcom/alipay/mobile/quinox/asynctask/Pipeline;)V
    .locals 0
    .param p1, "pipeLine"    # Lcom/alipay/mobile/quinox/asynctask/Pipeline;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/mobile/quinox/asynctask/Pipeline;

    .line 97
    return-void
.end method
