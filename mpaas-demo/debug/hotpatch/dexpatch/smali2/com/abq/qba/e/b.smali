.class public abstract Lcom/abq/qba/e/b;
.super Lcom/abq/qba/e/a;
.source "ChunkWithChunks.java"


# instance fields
.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 3
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 82
    invoke-virtual {p0}, Lcom/abq/qba/e/b;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/a;

    .line 83
    invoke-virtual {v1, p3}, Lcom/abq/qba/e/a;->a(Z)[B

    move-result-object v1

    .line 84
    .local v1, "chunkBytes":[B
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write([B)V

    .line 85
    array-length v2, v1

    invoke-static {p1, v2}, Lcom/abq/qba/e/b;->a(Ljava/io/DataOutput;I)I

    .line 86
    .end local v1    # "chunkBytes":[B
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 37
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->a(Ljava/nio/ByteBuffer;)V

    .line 38
    iget-object v0, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    iget v0, p0, Lcom/abq/qba/e/b;->d:I

    invoke-virtual {p0}, Lcom/abq/qba/e/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 40
    .local v1, "start":I
    move v1, v0

    .line 41
    .local v0, "offset":I
    iget v2, p0, Lcom/abq/qba/e/b;->d:I

    invoke-virtual {p0}, Lcom/abq/qba/e/b;->d()I

    move-result v3

    add-int/2addr v2, v3

    .line 42
    .local v2, "end":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 43
    .local v3, "position":I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    :goto_0
    if-ge v0, v2, :cond_0

    .line 46
    invoke-static {p1, p0}, Lcom/abq/qba/e/b;->a(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)Lcom/abq/qba/e/a;

    move-result-object v4

    .line 47
    .local v4, "chunk":Lcom/abq/qba/e/a;
    iget-object v5, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v4}, Lcom/abq/qba/e/a;->d()I

    move-result v5

    add-int/2addr v0, v5

    .line 49
    .end local v4    # "chunk":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    return-void
.end method

.method public final b(Lcom/abq/qba/e/a;)V
    .locals 4
    .param p1, "chunk"    # Lcom/abq/qba/e/a;

    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, "lastOffset":I
    iget-object v1, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    move v0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    iget v2, p0, Lcom/abq/qba/e/b;->d:I

    invoke-virtual {p0}, Lcom/abq/qba/e/b;->c()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/a;

    invoke-virtual {v2}, Lcom/abq/qba/e/a;->d()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    invoke-virtual {p0}, Lcom/abq/qba/e/b;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/abq/qba/e/a;->d()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/abq/qba/e/b;->a(I)V

    .line 77
    return-void
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/a;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/abq/qba/e/b;->e:Ljava/util/Map;

    return-object v0
.end method
