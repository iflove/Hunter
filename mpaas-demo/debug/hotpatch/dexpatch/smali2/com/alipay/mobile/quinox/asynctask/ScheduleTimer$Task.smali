.class public Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;
.super Ljava/util/TimerTask;
.source "ScheduleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field runnable:Ljava/lang/Runnable;

.field threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->threadName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->threadName:Ljava/lang/String;

    .line 32
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 33
    return-void
.end method
