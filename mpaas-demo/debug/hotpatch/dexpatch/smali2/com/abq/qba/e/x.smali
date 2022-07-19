.class public final Lcom/abq/qba/e/x;
.super Lcom/abq/qba/e/b;
.source "XmlChunk.java"


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/b;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 35
    sget-object v0, Lcom/abq/qba/e/a$a;->d:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 40
    invoke-virtual {p0}, Lcom/abq/qba/e/x;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/a;

    .line 41
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v2

    instance-of v2, v2, Lcom/abq/qba/e/o;

    if-eqz v2, :cond_0

    .line 42
    move-object v0, v1

    check-cast v0, Lcom/abq/qba/e/o;

    invoke-virtual {v0, p1}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    .end local v1    # "chunk":Lcom/abq/qba/e/a;
    :cond_0
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XmlChunk did not contain a string pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
