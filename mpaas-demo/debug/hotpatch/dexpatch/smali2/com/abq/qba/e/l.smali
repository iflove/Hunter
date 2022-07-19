.class public final Lcom/abq/qba/e/l;
.super Lcom/abq/qba/e/b;
.source "ResourceTableChunk.java"


# instance fields
.field private f:Lcom/abq/qba/e/o;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/b;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ResourceTableChunk package count was < 1."

    invoke-static {v0, v1}, Lcom/abq/qba/b/b;->a(ZLjava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/abq/qba/e/f;)V
    .locals 4
    .param p1, "packageChunk"    # Lcom/abq/qba/e/f;

    .line 92
    invoke-virtual {p1}, Lcom/abq/qba/e/f;->l()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    .line 97
    .local v1, "originPackageName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    .end local v1    # "originPackageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/abq/qba/e/l;->b(Lcom/abq/qba/e/a;)V

    .line 102
    iget-object v1, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 52
    invoke-super {p0, p1}, Lcom/abq/qba/e/b;->a(Ljava/nio/ByteBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    invoke-virtual {p0}, Lcom/abq/qba/e/l;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/a;

    .line 55
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v2

    instance-of v2, v2, Lcom/abq/qba/e/f;

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v1

    check-cast v2, Lcom/abq/qba/e/f;

    .line 57
    .local v2, "packageChunk":Lcom/abq/qba/e/f;
    iget-object v3, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/abq/qba/e/f;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v2    # "packageChunk":Lcom/abq/qba/e/f;
    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/abq/qba/e/o;

    if-eqz v2, :cond_1

    .line 59
    move-object v2, v1

    check-cast v2, Lcom/abq/qba/e/o;

    iput-object v2, p0, Lcom/abq/qba/e/l;->f:Lcom/abq/qba/e/o;

    .line 61
    .end local v1    # "chunk":Lcom/abq/qba/e/a;
    :cond_1
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/abq/qba/e/l;->f:Lcom/abq/qba/e/o;

    const-string v1, "ResourceTableChunk must have a string pool."

    invoke-static {v0, v1}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 82
    sget-object v0, Lcom/abq/qba/e/a$a;->c:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 87
    invoke-super {p0, p1}, Lcom/abq/qba/e/b;->b(Ljava/nio/ByteBuffer;)V

    .line 88
    iget-object v0, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    return-void
.end method

.method public final g()Lcom/abq/qba/e/o;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/abq/qba/e/l;->f:Lcom/abq/qba/e/o;

    return-object v0
.end method

.method public final h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/abq/qba/e/f;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/abq/qba/e/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
