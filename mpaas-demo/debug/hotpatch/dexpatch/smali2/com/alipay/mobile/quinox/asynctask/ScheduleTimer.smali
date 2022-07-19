.class Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;
.super Ljava/lang/Object;
.source "ScheduleTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;
    }
.end annotation


# instance fields
.field workTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ScheduleTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;->workTimer:Ljava/util/Timer;

    .line 11
    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .line 14
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;-><init>()V

    const/4 v1, 0x0

    .line 15
    .local v1, "task":Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;
    move-object v1, v0

    iput-object p1, v0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->runnable:Ljava/lang/Runnable;

    .line 16
    iput-object p2, v1, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer$Task;->threadName:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;->workTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 18
    return-object v1
.end method
