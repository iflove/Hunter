.class public abstract Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "TaskScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;,
        Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquireBizSpecificExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
.end method

.method public abstract acquireBizSpecificScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end method

.method public abstract acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;
.end method

.method public abstract acquireOrderedExecutor()Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
.end method

.method public abstract acquireScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end method

.method public abstract addIdleTask(Ljava/lang/Runnable;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
.end method

.method public abstract addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract getOrderedExecutorCore()Ljava/util/concurrent/ThreadPoolExecutor;
.end method

.method public abstract onPipelineFinished(Ljava/lang/String;)V
.end method

.method public abstract parallelExecute(Ljava/lang/Runnable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract pause(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
.end method

.method public abstract pauseAll()V
.end method

.method public abstract removeTransaction(Ljava/lang/String;)V
.end method

.method public abstract restore(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
.end method

.method public abstract resume(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
.end method

.method public abstract resumeAll()V
.end method

.method public abstract schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract serialExecute(Ljava/lang/Runnable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract serialExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract yield(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
.end method
