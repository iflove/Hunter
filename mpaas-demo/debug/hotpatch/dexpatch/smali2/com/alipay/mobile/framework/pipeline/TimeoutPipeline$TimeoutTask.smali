.class Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;
.super Ljava/lang/Object;
.source "TimeoutPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutTask"
.end annotation


# instance fields
.field mTargetTask:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

.field final synthetic this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    iget-object v1, v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->mTargetTask:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-ne v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    iget-object v1, v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    iget-object v1, v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mActive:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->setOverTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->g:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1, v2}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->access$002(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    const/4 v2, 0x1

    # setter for: Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->b:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->access$102(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;Z)Z

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TimeoutPipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "time out : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->mTargetTask:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    iget-object v4, v4, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], force to call Pipeline.next()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->this$0:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->next()V

    .line 52
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    .line 56
    return-void
.end method

.method setTargetTask(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->mTargetTask:Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 35
    return-void
.end method
