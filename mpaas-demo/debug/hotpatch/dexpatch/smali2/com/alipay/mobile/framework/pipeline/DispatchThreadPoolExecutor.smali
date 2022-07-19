.class public Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;
.super Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;
.source "DispatchThreadPoolExecutor.java"


# static fields
.field public static final BIZ_SPECIFIC_THREAD_PREFIX:Ljava/lang/String; = "BIZ_SPECIFIC_THREAD_"

.field public static final PIEPLINE_THREAD_PREFIX:Ljava/lang/String; = "PIPELINE"

.field private static a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

.field private static b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
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

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
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

    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 37
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
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

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
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

    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 41
    return-void
.end method

.method public static setDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V
    .locals 0
    .param p0, "dispatchManager"    # Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 44
    if-nez p0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    sput-object p0, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 48
    return-void
.end method

.method public static setPipelineDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V
    .locals 0
    .param p0, "dispatchManager"    # Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 51
    if-nez p0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    sput-object p0, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    .line 55
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 59
    if-nez p1, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    .local v1, "threadName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "PIPELINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable$PipelineDispatchIgnore;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->b:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onDispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->isSensitive()Z

    move-result v0

    .line 74
    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BIZ_SPECIFIC_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BIZ_SPECIFIC_SCHEDULED_THREAD_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 76
    :goto_1
    if-eqz v0, :cond_6

    instance-of v0, p1, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    if-nez v0, :cond_6

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "runnableName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detect execute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dispatch it to specific and wrap a BizSpecificRunnableWrapper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DispatchThreadPoolExecutor"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->a:Lcom/alipay/mobile/framework/pipeline/IDispatchManager;

    if-eqz v2, :cond_5

    .line 80
    invoke-interface {v2, p1}, Lcom/alipay/mobile/framework/pipeline/IDispatchManager;->onDispatch(Ljava/lang/Runnable;)Z

    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "dispatch "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " success"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 85
    :cond_4
    goto :goto_2

    .line 86
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "sDispatchManager is null"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "runnableName":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method
