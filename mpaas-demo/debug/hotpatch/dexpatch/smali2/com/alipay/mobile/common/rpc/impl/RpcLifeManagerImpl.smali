.class public Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;
.super Ljava/lang/Object;
.source "RpcLifeManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcLifeManager;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->b:Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    if-eqz v0, :cond_0

    .line 25
    return-object v0

    .line 27
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->b:Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    if-eqz v1, :cond_1

    .line 29
    monitor-exit v0

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->b:Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    .line 32
    monitor-exit v0

    .line 33
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addFuture(Ljava/util/concurrent/Future;)V
    .locals 1
    .param p1, "rpcFuture"    # Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 55
    if-nez p1, :cond_0

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancelAllRpc()V
    .locals 4

    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 39
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 43
    .local v1, "future":Ljava/util/concurrent/Future;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 46
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 49
    .end local v1    # "future":Ljava/util/concurrent/Future;
    .end local p0    # "this":Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;
    :cond_2
    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "RpcLifeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel all rpc finish, rpc count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFuture(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1, "future"    # Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 66
    if-nez p1, :cond_0

    .line 67
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;
    .end local p1    # "future":Ljava/util/concurrent/Future;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
