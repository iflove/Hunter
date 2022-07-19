.class Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;
.super Ljava/lang/Object;
.source "TaskScheduleServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireOrderedExecutor()Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBeforeRun(Ljava/lang/Runnable;J)Ljava/lang/Runnable;
    .locals 1

    .line 748
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    if-eqz v0, :cond_0

    .line 749
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    .line 750
    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->updateSubmitUptime(J)V

    .line 752
    :cond_0
    return-object p1
.end method

.method public handleOnSubmit(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3

    .line 742
    nop

    .line 743
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;

    .line 744
    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->taskType:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v1

    iget v1, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->priority:I

    .line 743
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->obtainRunnable(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method
