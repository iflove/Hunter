.class public Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;
.super Ljava/lang/Object;
.source "H5PendingTaskPool.java"


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/core/util/Pair<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Pair<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a()Landroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 50
    :try_start_0
    const-string v1, "H5AppDownloadManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[H5PendingTaskPool] popPendingTasks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    const/4 v2, 0x0

    .line 52
    .local v2, "pair":Landroidx/core/util/Pair;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->b:Ljava/util/Map;

    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "H5AppDownloadManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[H5PendingTaskPool] popPendingTasks: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    monitor-exit v0

    return-object v2

    .line 57
    .end local v2    # "pair":Landroidx/core/util/Pair;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "H5AppDownloadManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[H5PendingTaskPool] addToPendingTask already have task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    monitor-exit v0

    return-void

    .line 37
    :cond_0
    const-string v1, "H5AppDownloadManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[H5PendingTaskPool] addToPendingTask current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .local v1, "pair":Landroidx/core/util/Pair;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 41
    nop

    .end local v1    # "pair":Landroidx/core/util/Pair;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    const/4 v2, 0x0

    .line 66
    .local v2, "pair":Landroidx/core/util/Pair;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "H5AppDownloadManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[H5PendingTaskPool] remove task in pool: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "pair":Landroidx/core/util/Pair;
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
