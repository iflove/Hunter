.class public Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/mobile/common/task/pipeline/PipeLine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "StandardPipeline"


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field volatile mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

.field protected volatile mIsStart:Z

.field protected mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;-><init>(Ljava/util/concurrent/Executor;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;-><init>(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 135
    .local v0, "active":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    iput-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    goto :goto_0

    .line 139
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 140
    const-string v2, "StandardPipeline"

    const-string/jumbo v3, "mTasks is empty."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-object v0, v2

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    const-string v1, "StandardPipeline"

    const-string v2, "StandardPipeline.scheduleNext()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 149
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The StandardPipeline\'s Executor is null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_2
    const-string v1, "StandardPipeline"

    const-string v2, "StandardPipeline.scheduleNext(mTasks is empty)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 143
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a()V

    return-void
.end method


# virtual methods
.method public addTask(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V
    .locals 4
    .param p1, "task"    # Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 85
    const-string v0, "StandardPipeline"

    const-string v1, "StandardPipeline.addTask()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setScheduleNext(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 94
    iget v1, p1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    iget-object v3, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    iget v3, v3, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    if-gt v1, v3, :cond_0

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move v1, v2

    .line 101
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .end local v1    # "index":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->doStart()V

    .line 107
    :cond_4
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 87
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 80
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    .line 81
    .local v0, "_task":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->addTask(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 82
    return-void
.end method

.method protected doStart()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a()V

    return-void

    .line 126
    :cond_0
    const-string v0, "StandardPipeline"

    const-string v1, "StandardPipeline.start(a task is running, so don\'t call scheduleNext())"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method public start()V
    .locals 2

    .line 111
    const-string v0, "StandardPipeline"

    const-string v1, "StandardPipeline.start()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->doStart()V

    .line 117
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StandardPipeline start failed : The StandardPipeline\'s Execturo is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 162
    return-void
.end method
