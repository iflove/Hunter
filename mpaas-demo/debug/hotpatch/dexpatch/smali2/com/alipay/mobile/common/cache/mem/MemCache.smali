.class public abstract Lcom/alipay/mobile/common/cache/mem/MemCache;
.super Ljava/lang/Object;
.source "MemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 3
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/mem/Entity;->getGroup()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "group":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 55
    .local v1, "entitys":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v1    # "entitys":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method private b(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 3
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/mem/Entity;->getGroup()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    .local v1, "group":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    monitor-exit p0

    return-object v1

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    move-object v2, v1

    .line 76
    .local v2, "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    move-object v2, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/mem/Entity;->authenticate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-object v1

    .line 81
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/MemCache;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/mem/Entity;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    .end local v2    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCacheCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected abstract makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/mobile/common/cache/mem/MemCache;->makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;

    move-result-object v0

    .line 39
    .local v0, "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->a(Lcom/alipay/mobile/common/cache/mem/Entity;)V

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 36
    .end local v0    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/MemCache;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "group":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/String;
    .end local p4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    .line 95
    .local v0, "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->b(Lcom/alipay/mobile/common/cache/mem/Entity;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V

    .line 99
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/mem/Entity;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 91
    .end local v0    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/MemCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeByGroup(Ljava/lang/String;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;

    monitor-enter p0

    .line 156
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/cache/mem/Entity;

    .line 161
    .local v1, "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 163
    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v1    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/MemCache;
    :cond_0
    goto :goto_0

    .line 155
    .end local p1    # "group":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 170
    .restart local p1    # "group":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeByOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;

    monitor-enter p0

    .line 125
    if-nez p1, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 129
    .local v0, "entitys":Ljava/util/concurrent/CopyOnWriteArraySet;
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 130
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/cache/mem/Entity;

    .line 131
    .local v3, "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/mem/Entity;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    .end local p0    # "this":Lcom/alipay/mobile/common/cache/mem/MemCache;
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/cache/mem/Entity;

    .line 138
    .restart local v3    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    iget-object v4, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 140
    .local v1, "collections":Ljava/util/Collection;
    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/cache/mem/MemCache;->recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v3    # "entity":Lcom/alipay/mobile/common/cache/mem/Entity;
    :cond_3
    goto :goto_1

    .line 146
    .end local v1    # "collections":Ljava/util/Collection;
    :cond_4
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "entitys":Ljava/util/concurrent/CopyOnWriteArraySet;
    .end local p1    # "owner":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
