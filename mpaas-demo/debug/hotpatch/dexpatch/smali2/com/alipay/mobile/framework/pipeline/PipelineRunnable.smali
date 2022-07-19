.class Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
.super Lcom/alipay/mobile/framework/pipeline/PausableRunnable;
.source "PipelineRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/AbstractPool$Poolable;


# static fields
.field public static final TASK_POOL:Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

.field private d:Ljava/lang/Runnable;

.field private e:I

.field private f:Z

.field private g:Z

.field protected mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->b:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->e:I

    .line 73
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/Runnable;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->e:I

    return v0
.end method

.method init(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->d:Ljava/lang/Runnable;

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->mThreadName:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->e:I

    .line 79
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->setInner(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public reset()V
    .locals 2

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->init(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 128
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 129
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->f:Z

    .line 130
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->g:Z

    .line 131
    return-void
.end method

.method public run()V
    .locals 17

    .line 135
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->getInner()Ljava/lang/Runnable;

    move-result-object v0

    .line 136
    instance-of v0, v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-eqz v0, :cond_0

    .line 137
    invoke-super/range {p0 .. p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->run()V

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    .local v2, "start":J
    iget-object v4, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 142
    .local v4, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    iget-object v5, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->d:Ljava/lang/Runnable;

    .line 143
    .local v5, "task":Ljava/lang/Runnable;
    iget-object v6, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->mThreadName:Ljava/lang/String;

    .line 144
    .local v6, "threadName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "originThreadName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 148
    :cond_1
    const/4 v0, 0x0

    .line 149
    .local v0, "pipelineName":Ljava/lang/String;
    instance-of v8, v4, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;

    if-eqz v8, :cond_2

    .line 150
    move-object v8, v4

    check-cast v8, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;

    iget-object v0, v8, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->mName:Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    .line 149
    :cond_2
    move-object v8, v0

    .line 154
    .end local v0    # "pipelineName":Ljava/lang/String;
    .local v8, "pipelineName":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x1

    if-eqz v5, :cond_4

    .line 155
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    if-nez v4, :cond_3

    const-string v10, "AsyTskExecutor"

    goto :goto_1

    :cond_3
    const-string v10, "PipelineRunnable"

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " start at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-super/range {p0 .. p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->run()V

    goto :goto_2

    .line 158
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v10, "AsyTskExecutor"

    const-string/jumbo v11, "mTask is null"

    invoke-interface {v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 163
    .local v10, "end":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    if-nez v4, :cond_5

    const-string v12, "AsyTskExecutor"

    goto :goto_3

    :cond_5
    const-string v12, "PipelineRunnable"

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " end cost "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v10, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v12, 0x0

    .line 166
    .local v12, "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    iget-boolean v0, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->f:Z

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    if-eqz v0, :cond_6

    .line 169
    move-object v12, v0

    .line 170
    iput-boolean v9, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->g:Z

    .line 172
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-eqz v12, :cond_7

    .line 175
    invoke-interface {v12}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->next()V

    .line 177
    :cond_7
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->free(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    .line 178
    .end local v10    # "end":J
    .end local v12    # "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    return-void

    .line 172
    .restart local v10    # "end":J
    .restart local v12    # "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 161
    .end local v10    # "end":J
    .end local v12    # "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 163
    .restart local v10    # "end":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    if-nez v4, :cond_8

    const-string v13, "AsyTskExecutor"

    goto :goto_4

    :cond_8
    const-string v13, "PipelineRunnable"

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " end cost "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4    # "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .end local v5    # "task":Ljava/lang/Runnable;
    .local v15, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .local v16, "task":Ljava/lang/Runnable;
    sub-long v4, v10, v2

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v13, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    monitor-enter p0

    .line 168
    :try_start_3
    iget-boolean v5, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->f:Z

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    if-eqz v5, :cond_9

    .line 169
    move-object v4, v5

    .line 170
    iput-boolean v9, v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->g:Z

    .line 172
    :cond_9
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    if-eqz v4, :cond_a

    .line 175
    invoke-interface {v4}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->next()V

    .line 177
    :cond_a
    sget-object v5, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->free(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    .line 178
    .end local v4    # "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .end local v10    # "end":J
    throw v0

    .line 172
    .restart local v4    # "localPipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .restart local v10    # "end":J
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public setOverTime()Z
    .locals 2

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->g:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->f:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 118
    monitor-exit p0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPipeLine(Lcom/alipay/mobile/framework/pipeline/Pipeline;)V
    .locals 0
    .param p1, "pipeLine"    # Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->c:Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 111
    return-void
.end method
