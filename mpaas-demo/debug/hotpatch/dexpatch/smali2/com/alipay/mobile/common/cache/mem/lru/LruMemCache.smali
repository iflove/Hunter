.class public Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
.super Lcom/alipay/mobile/common/cache/mem/MemCache;
.source "LruMemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/MemCache<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/mem/MemCache;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;-><init>(Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->mMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->mGroup:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-direct {v1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    .line 24
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "group":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/String;
    .end local p4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 0
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    return-void
.end method

.method protected recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 0
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
