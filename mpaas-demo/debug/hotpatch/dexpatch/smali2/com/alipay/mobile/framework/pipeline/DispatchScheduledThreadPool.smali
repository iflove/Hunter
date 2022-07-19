.class public Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;
.super Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;
.source "DispatchScheduledThreadPool.java"


# static fields
.field public static final BIZ_SPECIFIC_SCHEDULED_THREAD_PREFIX:Ljava/lang/String; = "BIZ_SPECIFIC_SCHEDULED_THREAD_"

.field private static a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

.field private static b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "corePoolSize"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 41
    return-void
.end method

.method public static setDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V
    .locals 0
    .param p0, "dispatchManager"    # Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 51
    if-nez p0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    sput-object p0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 55
    return-void
.end method

.method public static setPipelineDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V
    .locals 0
    .param p0, "dispatchManager"    # Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 58
    if-nez p0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    sput-object p0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 62
    return-void
.end method


# virtual methods
.method public allowCoreThreadTimeOut(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 47
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;->allowCoreThreadTimeOut(Z)V

    .line 48
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    .local v1, "threadName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PIPELINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleRunnableDispatch(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->isSensitive()Z

    move-result v0

    .line 77
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BIZ_SPECIFIC_SCHEDULED_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BIZ_SPECIFIC_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "runnableName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detect schedule "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dispatch it to specific and wrap a BizSpecificRunnableWrapper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DispatchScheduledThreadPool"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleRunnableDispatch(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    return-object v2

    .line 84
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "sDispatchManager is null"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v0    # "runnableName":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    .local v1, "threadName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PIPELINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleCallableDispatch(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->isSensitive()Z

    move-result v0

    .line 104
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BIZ_SPECIFIC_SCHEDULED_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BIZ_SPECIFIC_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/BizSpecificCallableWrapper;

    if-nez v0, :cond_3

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "callableName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detect schedule "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dispatch it to specific and wrap a BizSpecificCallableWrapper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DispatchScheduledThreadPool"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v2, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleCallableDispatch(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    return-object v2

    .line 111
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "sDispatchManager is null"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "callableName":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .param p1, "command"    # Ljava/lang/Runnable;
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

    .line 120
    move-object v7, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    .local v1, "threadName":Ljava/lang/String;
    move-object v8, v0

    .end local v1    # "threadName":Ljava/lang/String;
    .local v8, "threadName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PIPELINE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    instance-of v0, v7, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v0, :cond_0

    .line 126
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleAtFixedDispatch(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->isSensitive()Z

    move-result v0

    .line 131
    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BIZ_SPECIFIC_SCHEDULED_THREAD_"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BIZ_SPECIFIC_THREAD_"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    :cond_1
    instance-of v0, v7, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "runnableName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detect scheduleAtFixedRate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dispatch it to specific and wrap a BizSpecificRunnableWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DispatchScheduledThreadPool"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v0, :cond_2

    .line 136
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onScheduleAtFixedDispatch(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 138
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "sDispatchManager is null"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v9    # "runnableName":Ljava/lang/String;
    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedScheduledThreadPool;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
