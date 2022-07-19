.class public Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ZFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final TASK_STATE_AFTER_RUN:I = 0x2

.field public static final TASK_STATE_BEFORE_RUN:I = 0x0

.field public static final TASK_STATE_DONE:I = 0x4

.field public static final TASK_STATE_READY:I = -0x1

.field public static final TASK_STATE_RUNNING:I = 0x1


# instance fields
.field protected callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected mObservable:Ljava/util/Observable;

.field protected mOtcWaitTask:Z

.field protected mTaskId:Ljava/lang/String;

.field protected mTaskState:I

.field protected mTaskType:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "taskType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;I)V"
        }
    .end annotation

    .line 47
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;-><init>(Ljava/util/concurrent/Callable;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;I)V
    .locals 1
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .param p2, "taskType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    .line 42
    iput p2, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskType:I

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 44
    return-void
.end method


# virtual methods
.method public addDoneObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "doneObserver"    # Ljava/util/Observer;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mObservable:Ljava/util/Observable;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;-><init>(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mObservable:Ljava/util/Observable;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mObservable:Ljava/util/Observable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 92
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 75
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected done()V
    .locals 1

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mObservable:Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 61
    return-void
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 79
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->setException(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskId:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskState()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskType:I

    return v0
.end method

.method public isBeforeRun()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOtcWaitTask()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mOtcWaitTask:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    return v1

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 1

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    .line 53
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 54
    return-void
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 70
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public setOtcWaitTask(Z)V
    .locals 0
    .param p1, "otcWaitTask"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mOtcWaitTask:Z

    .line 124
    return-void
.end method

.method public setTaskState(I)V
    .locals 0
    .param p1, "taskState"    # I

    .line 100
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskState:I

    .line 101
    return-void
.end method

.method public setTaskType(I)V
    .locals 0
    .param p1, "taskType"    # I

    .line 104
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->mTaskType:I

    .line 105
    return-void
.end method
