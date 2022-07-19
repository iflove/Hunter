.class final Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
.super Lcom/alipay/mobile/quinox/utils/Pool;
.source "PipelineRunnablePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/quinox/utils/Pool<",
        "Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/Pool;-><init>(II)V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/quinox/utils/Pool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    .end local p0    # "this":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized free(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V
    .locals 0
    .param p1, "object"    # Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/utils/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
    .end local p1    # "object":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->free(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    return-void
.end method

.method public final declared-synchronized freeAll(Ljava/util/List;)V
    .locals 0
    .param p1, "objects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/utils/Pool;->freeAll(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
    .end local p1    # "objects":Ljava/util/List;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final newObject()Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call newObject(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final bridge synthetic newObject()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->newObject()Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call obtain(Runnable, String, int) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    .end local p0    # "this":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
    .end local p1    # "runnable":Ljava/lang/Runnable;
    .end local p2    # "threadName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    goto :goto_0

    .line 56
    .end local p0    # "this":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;
    :cond_0
    move-object p2, v0

    .line 58
    :goto_0
    new-instance v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;-><init>()V

    move-object v0, v1

    .line 59
    .local v0, "pipeLineRunnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    goto :goto_1

    .line 60
    .end local v0    # "pipeLineRunnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    .line 62
    .restart local v0    # "pipeLineRunnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->init(Ljava/lang/Runnable;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-object v0

    .line 50
    .end local v0    # "pipeLineRunnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    .end local p1    # "runnable":Ljava/lang/Runnable;
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

    .line 17
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain()Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method
