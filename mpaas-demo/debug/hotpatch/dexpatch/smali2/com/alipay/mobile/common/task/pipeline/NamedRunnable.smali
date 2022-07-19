.class public Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
.super Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;
.source "NamedRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AsyncTaskExecutor"

.field public static final TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;


# instance fields
.field mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

.field mTask:Ljava/lang/Runnable;

.field mThreadName:Ljava/lang/String;

.field mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 115
    iput-object p2, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 117
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 178
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 181
    return-void
.end method

.method public run()V
    .locals 19

    .line 138
    move-object/from16 v1, p0

    const-string v2, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    const-string v3, "NamedRunnable.run()->finish(finally:mScheduleNext.scheduleNext())"

    const-string v4, "NamedRunnable.run()->finish(finally:null == mScheduleNext)"

    const-string v5, "NamedRunable.run(set ThreadName back to:"

    const-string v6, " ms"

    const-string v7, "cost "

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->getInner()Ljava/lang/Runnable;

    move-result-object v0

    .line 139
    instance-of v0, v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    if-eqz v0, :cond_0

    .line 140
    invoke-super/range {p0 .. p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->run()V

    .line 141
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "threadName":Ljava/lang/String;
    iget-object v8, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ")"

    const-string v10, "AsyncTaskExecutor"

    if-nez v8, :cond_1

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "NamedRunable.run(set ThreadName to:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_0

    .line 144
    :cond_1
    move-object v8, v0

    .line 149
    .end local v0    # "threadName":Ljava/lang/String;
    .local v8, "threadName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 150
    .local v11, "start":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "start at "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v10, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 155
    .local v13, "end":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    sub-long v2, v13, v11

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v10, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v8, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    if-eqz v0, :cond_3

    .line 165
    move-object/from16 v2, v17

    invoke-static {v10, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;->scheduleNext()V

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v10, v4}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v13    # "end":J
    return-void

    .line 154
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    move-object v13, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 155
    .local v14, "end":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    move-object/from16 v16, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v3

    move-object v7, v4

    sub-long v3, v14, v11

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v8, :cond_4

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    if-eqz v0, :cond_5

    .line 165
    invoke-static {v10, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;->scheduleNext()V

    goto :goto_2

    .line 168
    :cond_5
    invoke-static {v10, v7}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_2
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v14    # "end":J
    throw v16
.end method

.method setScheduleNext(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 0
    .param p1, "scheduleNext"    # Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 129
    return-object p0
.end method

.method setTask(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 125
    return-void
.end method

.method setThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .line 133
    iput p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 134
    return-void
.end method
