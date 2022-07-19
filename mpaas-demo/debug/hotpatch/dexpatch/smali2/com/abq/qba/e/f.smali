.class public final Lcom/abq/qba/e/f;
.super Lcom/abq/qba/e/b;
.source "PackageChunk.java"


# instance fields
.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Lcom/abq/qba/e/d;

.field private final m:[B

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/s;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/b;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/f;->n:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/f;->o:Ljava/util/Map;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/f;->i:I

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lcom/abq/qba/e/g;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abq/qba/e/f;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/f;->g:I

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/f;->j:I

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/f;->h:I

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/f;->k:I

    .line 81
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->c()I

    move-result v0

    const/16 v1, 0x11c

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 82
    .local v3, "blobSz":I
    move v3, v0

    const/4 v4, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/f;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 82
    const-string v1, "Header smaller than expected! Expected: %d got: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/abq/qba/b/b;->a(ZLjava/lang/Object;)V

    .line 84
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/abq/qba/e/f;->m:[B

    .line 85
    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 86
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 7
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 230
    iget v0, p0, Lcom/abq/qba/e/f;->g:I

    .line 231
    .local v0, "typeOffset":I
    iget v1, p0, Lcom/abq/qba/e/f;->h:I

    .line 232
    .local v1, "keyOffset":I
    const/4 v2, 0x0

    .line 233
    .local v2, "payloadOffset":I
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/a;

    .line 234
    .local v4, "chunk":Lcom/abq/qba/e/a;
    move-object v4, v5

    invoke-virtual {p0}, Lcom/abq/qba/e/f;->i()Lcom/abq/qba/e/o;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->c()I

    move-result v5

    add-int/2addr v5, v2

    move v0, v5

    .end local v0    # "typeOffset":I
    .local v5, "typeOffset":I
    goto :goto_1

    .line 236
    .end local v5    # "typeOffset":I
    .restart local v0    # "typeOffset":I
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->c()I

    move-result v5

    add-int/2addr v5, v2

    move v1, v5

    .line 239
    :cond_1
    :goto_1
    invoke-virtual {v4, p3}, Lcom/abq/qba/e/a;->a(Z)[B

    move-result-object v5

    .line 240
    .local v5, "chunkBytes":[B
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->write([B)V

    .line 241
    array-length v6, v5

    invoke-static {p1, v6}, Lcom/abq/qba/e/f;->a(Ljava/io/DataOutput;I)I

    move-result v2

    .line 242
    .end local v4    # "chunk":Lcom/abq/qba/e/a;
    .end local v5    # "chunkBytes":[B
    goto :goto_0

    .line 243
    :cond_2
    const/16 v3, 0x10c

    invoke-virtual {p2, v3, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 244
    const/16 v3, 0x114

    invoke-virtual {p2, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 245
    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 90
    invoke-super {p0, p1}, Lcom/abq/qba/e/b;->a(Ljava/nio/ByteBuffer;)V

    .line 91
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/a;

    .line 92
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v3

    instance-of v3, v3, Lcom/abq/qba/e/r;

    if-eqz v3, :cond_1

    .line 93
    move-object v3, v1

    check-cast v3, Lcom/abq/qba/e/r;

    .line 94
    .local v3, "typeChunk":Lcom/abq/qba/e/r;
    iget-object v4, p0, Lcom/abq/qba/e/f;->o:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/abq/qba/e/r;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    .local v2, "typeChunks":Ljava/util/List;
    move-object v2, v4

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 97
    iget-object v4, p0, Lcom/abq/qba/e/f;->o:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/abq/qba/e/r;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "typeChunks":Ljava/util/List;
    .end local v3    # "typeChunk":Lcom/abq/qba/e/r;
    goto :goto_0

    :cond_1
    instance-of v3, v1, Lcom/abq/qba/e/s;

    if-eqz v3, :cond_2

    .line 101
    move-object v3, v1

    check-cast v3, Lcom/abq/qba/e/s;

    .line 102
    .local v3, "typeSpecChunk":Lcom/abq/qba/e/s;
    iget-object v4, p0, Lcom/abq/qba/e/f;->n:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/abq/qba/e/s;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v3    # "typeSpecChunk":Lcom/abq/qba/e/s;
    goto :goto_0

    :cond_2
    instance-of v3, v1, Lcom/abq/qba/e/d;

    if-eqz v3, :cond_3

    .line 104
    move-object v3, v1

    check-cast v3, Lcom/abq/qba/e/d;

    iput-object v3, p0, Lcom/abq/qba/e/f;->l:Lcom/abq/qba/e/d;

    goto :goto_0

    .line 105
    :cond_3
    instance-of v3, v1, Lcom/abq/qba/e/o;

    if-eqz v3, :cond_4

    .line 109
    .end local v1    # "chunk":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PackageChunk contains an unexpected chunk: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 213
    sget-object v0, Lcom/abq/qba/e/a$a;->k:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final b(I)Ljava/util/List;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/r;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/abq/qba/e/f;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 218
    iget v0, p0, Lcom/abq/qba/e/f;->i:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/abq/qba/e/f;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/abq/qba/e/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 221
    iget v1, p0, Lcom/abq/qba/e/f;->j:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    iget v0, p0, Lcom/abq/qba/e/f;->k:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 224
    iget-object v0, p0, Lcom/abq/qba/e/f;->m:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    return-void
.end method

.method public final c(I)Lcom/abq/qba/e/s;
    .locals 2
    .param p1, "id"    # I

    .line 189
    iget-object v0, p0, Lcom/abq/qba/e/f;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/s;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/abq/qba/e/f;->i:I

    return v0
.end method

.method public final h()Lcom/abq/qba/e/o;
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->f()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/abq/qba/e/f;->h:I

    iget v2, p0, Lcom/abq/qba/e/f;->d:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/a;

    const/4 v1, 0x0

    .line 140
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v0

    instance-of v0, v0, Lcom/abq/qba/e/o;

    const-string v2, "Key string pool not found."

    invoke-static {v0, v2}, Lcom/abq/qba/b/b;->a(ZLjava/lang/Object;)V

    .line 141
    move-object v0, v1

    check-cast v0, Lcom/abq/qba/e/o;

    return-object v0
.end method

.method public final i()Lcom/abq/qba/e/o;
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/abq/qba/e/f;->f()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/abq/qba/e/f;->g:I

    iget v2, p0, Lcom/abq/qba/e/f;->d:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/a;

    const/4 v1, 0x0

    .line 150
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v0

    instance-of v0, v0, Lcom/abq/qba/e/o;

    const-string v2, "Type string pool not found."

    invoke-static {v0, v2}, Lcom/abq/qba/b/b;->a(ZLjava/lang/Object;)V

    .line 151
    move-object v0, v1

    check-cast v0, Lcom/abq/qba/e/o;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/r;",
            ">;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/abq/qba/e/f;->o:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/s;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/abq/qba/e/f;->n:Ljava/util/Map;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/abq/qba/e/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/abq/qba/e/d;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/abq/qba/e/f;->l:Lcom/abq/qba/e/d;

    return-object v0
.end method
