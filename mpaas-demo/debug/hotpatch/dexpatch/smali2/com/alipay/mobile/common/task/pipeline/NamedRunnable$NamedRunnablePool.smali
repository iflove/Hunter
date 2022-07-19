.class public final Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
.super Lcom/alipay/mobile/common/task/pipeline/Pool;
.source "NamedRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedRunnablePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/task/pipeline/Pool<",
        "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/Pool;-><init>(II)V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/common/task/pipeline/Pool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V
    .locals 0
    .param p1, "object"    # Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    .end local p1    # "object":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    return-void
.end method

.method public final declared-synchronized freeAll(Ljava/util/List;)V
    .locals 0
    .param p1, "objects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeAll(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    .end local p1    # "objects":Ljava/util/List;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final newObject()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call newObject(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NamedRunable_"

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    :goto_0
    new-instance v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected final bridge synthetic newObject()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->newObject()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call obtain(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    monitor-enter p0

    .line 45
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    .end local p0    # "this":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    .end local p1    # "task":Ljava/lang/Runnable;
    .end local p2    # "threadName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "AsyncTaskExecutor"

    const-string v1, "NamedRunnablePool.obtain(): create a new NamedRunnable obj."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    .local v0, "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    goto :goto_0

    .line 61
    .end local v0    # "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .end local p0    # "this":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
    :cond_0
    const-string v0, "AsyncTaskExecutor"

    const-string v1, "NamedRunnablePool.obtain(): hit a cache NamedRunnable obj."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    const/4 v1, 0x0

    .line 63
    .local v1, "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setInner(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setTask(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setThreadName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setWeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 68
    .end local v1    # "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .restart local v0    # "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    .end local v0    # "namedRunnable":Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .end local p1    # "task":Ljava/lang/Runnable;
    .end local p2    # "threadName":Ljava/lang/String;
    .end local p3    # "weight":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic obtain()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    return-object v0
.end method
