.class public abstract Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
.super Ljava/lang/Object;
.source "BatchedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final batchedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private scheduleHandler:Landroid/os/Handler;

.field private scheduleHandlerThread:Landroid/os/HandlerThread;

.field private scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<",
            "TT;>.ScheduleRunnable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;-><init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Batched@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    .line 40
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    return-void
.end method

.method private cloneAndExecute()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string v1, "cloneAndExecute"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    monitor-exit v0

    return-void

    .line 137
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v1, "tasks":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->doExecute(Ljava/util/List;)V

    .line 141
    return-void

    .line 139
    .end local v1    # "tasks":Ljava/util/List;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doExecute(Ljava/util/List;)V
    .locals 3
    .param p1, "tasks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doExecute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;-><init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected abstract onSchedule(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public pause()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    if-nez p1, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string v1, "cannot post task because BatchedScheduler is shut down!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    # getter for: Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->cancel()V

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    :cond_2
    monitor-exit v0

    return-void

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule now! size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    # getter for: Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->cancel()V

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    .line 104
    monitor-exit v0

    return-void

    .line 106
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    # getter for: Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->start()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_6
    return-void

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "not resume because not paused"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string v3, "=== resume schedule batched tasks begin===="

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    .line 60
    .local v3, "size":I
    move v3, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v4

    div-int/2addr v2, v4

    .line 62
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v5

    mul-int v5, v5, v4

    .line 64
    .local v5, "start":I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->thresholdSize()I

    move-result v7

    mul-int v6, v6, v7

    .line 65
    .local v1, "end":I
    move v1, v6

    if-le v6, v3, :cond_1

    .line 66
    move v1, v3

    .line 68
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v7, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v6, "tasks":Ljava/util/List;
    invoke-direct {p0, v6}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->doExecute(Ljava/util/List;)V

    .line 62
    .end local v1    # "end":I
    .end local v5    # "start":I
    .end local v6    # "tasks":Ljava/util/List;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v4    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->batchedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string v4, "=== resume schedule batched tasks over===="

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v2    # "count":I
    .end local v3    # "size":I
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleRunnable:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->cloneAndExecute()V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 124
    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->scheduleHandlerThread:Landroid/os/HandlerThread;

    .line 125
    return-void
.end method

.method protected thresholdInterval()J
    .locals 2

    .line 164
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected thresholdSize()I
    .locals 1

    .line 157
    const/16 v0, 0x10

    return v0
.end method
