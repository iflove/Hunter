.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/IDispatchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipelineDispatchManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
    .param p2, "x1"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$1;

    .line 117
    invoke-direct {p0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V

    return-void
.end method


# virtual methods
.method public onDispatch(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->f:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$000(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public onScheduleAtFixedDispatch(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "l"    # J
    .param p4, "l1"    # J
    .param p6, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$100(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public onScheduleCallableDispatch(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .param p2, "l"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$100(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;->obtainCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public onScheduleRunnableDispatch(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "l"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$100(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
