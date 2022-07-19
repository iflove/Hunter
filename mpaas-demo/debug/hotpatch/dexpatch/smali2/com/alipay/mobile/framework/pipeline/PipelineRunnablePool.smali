.class final Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;
.super Lcom/alipay/mobile/framework/pipeline/AbstractPool;
.source "PipelineRunnablePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/pipeline/AbstractPool<",
        "Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/AbstractPool;-><init>(II)V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/AbstractPool;->clear()V

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final free(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V
    .locals 1
    .param p1, "object"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/AbstractPool;->free(Ljava/lang/Object;)V

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->free(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    return-void
.end method

.method public final freeAll(Ljava/util/List;)V
    .locals 1
    .param p1, "objects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;",
            ">;)V"
        }
    .end annotation

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/AbstractPool;->freeAll(Ljava/util/List;)V

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final newObject()Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call newObject(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final bridge synthetic newObject()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->newObject()Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call obtain(Runnable, String, int) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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
    :cond_0
    move-object p2, v0

    .line 58
    :goto_0
    new-instance v1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 59
    .local v0, "pipeLineRunnable":Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    goto :goto_1

    .line 60
    .end local v0    # "pipeLineRunnable":Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 62
    .restart local v0    # "pipeLineRunnable":Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->init(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 63
    monitor-exit p0

    .line 64
    return-object v0

    .line 63
    .end local v0    # "pipeLineRunnable":Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic obtain()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/PipelineRunnablePool;->obtain()Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method
