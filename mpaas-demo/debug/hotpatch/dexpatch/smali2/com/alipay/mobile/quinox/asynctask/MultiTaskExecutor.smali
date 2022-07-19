.class public Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;
.super Ljava/lang/Object;
.source "MultiTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor$CountDownTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiTaskExecutor"


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .line 44
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;-><init>(ILjava/util/concurrent/Executor;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;

    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public await()V
    .locals 2

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MultiTaskExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor$CountDownTask;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor$CountDownTask;-><init>(Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set \'Executor\' before call execute(Runnable)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/quinox/asynctask/MultiTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    return-void
.end method
