.class public Lcom/alibaba/sqlcrypto/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lez p1, :cond_0

    .line 51
    iput p1, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 251
    .local v1, "result":I
    move v1, v0

    if-ltz v0, :cond_0

    .line 254
    return v1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 312
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 228
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .line 272
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/LruCache;->trimToSize(I)V

    .line 273
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 326
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 79
    if-eqz p1, :cond_4

    .line 84
    monitor-enter p0

    .line 85
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 86
    .local v2, "mapValue":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 87
    :try_start_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->hitCount:I

    .line 88
    monitor-exit p0

    return-object v2

    .line 90
    :cond_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->missCount:I

    .line 91
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, p0

    .line 101
    .local v3, "createdValue":Ljava/lang/Object;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 102
    return-object v0

    .line 105
    :cond_1
    monitor-enter p0

    .line 106
    :try_start_2
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->createCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->createCount:I

    .line 107
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_2
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    invoke-direct {p0, p1, v3}, Lcom/alibaba/sqlcrypto/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    .line 115
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz v2, :cond_3

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/alibaba/sqlcrypto/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    return-object v2

    .line 121
    :cond_3
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/LruCache;->trimToSize(I)V

    .line 122
    return-object v3

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 91
    .end local v2    # "mapValue":Ljava/lang/Object;
    .end local v3    # "createdValue":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .restart local v2    # "mapValue":Ljava/lang/Object;
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 80
    .end local v2    # "mapValue":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 297
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 290
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    monitor-enter p0

    .line 305
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 305
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 133
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 138
    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->putCount:I

    .line 140
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    .line 141
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v0, "previous":Ljava/lang/Object;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 143
    :try_start_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    .line 145
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz v0, :cond_1

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/alibaba/sqlcrypto/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/LruCache;->trimToSize(I)V

    .line 152
    return-object v0

    .line 145
    .end local v0    # "previous":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .restart local v0    # "previous":Ljava/lang/Object;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0

    .line 134
    .end local v0    # "previous":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    monitor-enter p0

    .line 319
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 319
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 194
    if-eqz p1, :cond_2

    .line 199
    monitor-enter p0

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 201
    .local v2, "previous":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 202
    :try_start_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    invoke-direct {p0, p1, v2}, Lcom/alibaba/sqlcrypto/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    .line 204
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    if-eqz v2, :cond_1

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/alibaba/sqlcrypto/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    :cond_1
    return-object v2

    .line 204
    .end local v2    # "previous":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .restart local v2    # "previous":Ljava/lang/Object;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 195
    .end local v2    # "previous":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 62
    if-lez p1, :cond_0

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/LruCache;->trimToSize(I)V

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 281
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 281
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 334
    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 338
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/LruCache;->hitCount:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/LruCache;->missCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    .line 339
    .local v3, "accesses":I
    move v3, v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v3

    goto :goto_0

    .end local p0    # "this":Lcom/alibaba/sqlcrypto/LruCache;
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, "hitPercent":I
    :goto_0
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/sqlcrypto/LruCache;->maxSize:I

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget v5, p0, Lcom/alibaba/sqlcrypto/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget v5, p0, Lcom/alibaba/sqlcrypto/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 340
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 337
    .end local v0    # "hitPercent":I
    .end local v3    # "accesses":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 166
    :goto_0
    monitor-enter p0

    .line 167
    :try_start_0
    iget v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    if-nez v4, :cond_3

    .line 172
    :cond_0
    iget v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    if-le v4, p1, :cond_2

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 177
    .local v3, "toEvict":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    .local v1, "key":Ljava/lang/Object;
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .local v2, "value":Ljava/lang/Object;
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/sqlcrypto/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->size:I

    .line 181
    iget v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->evictionCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/sqlcrypto/LruCache;->evictionCount:I

    .line 182
    .end local v3    # "toEvict":Ljava/util/Map$Entry;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    invoke-virtual {p0, v5, v1, v2, v0}, Lcom/alibaba/sqlcrypto/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 182
    .restart local v1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 173
    .end local v1    # "key":Ljava/lang/Object;
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit p0

    return-void

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxSize":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    .restart local p1    # "maxSize":I
    :catchall_1
    move-exception v0

    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method
