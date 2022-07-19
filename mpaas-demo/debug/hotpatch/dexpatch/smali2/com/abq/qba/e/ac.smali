.class public abstract Lcom/abq/qba/e/ac;
.super Lcom/abq/qba/e/a;
.source "XmlNodeChunk.java"


# instance fields
.field private final e:I

.field private f:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/ac;->e:I

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/ac;->f:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 85
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->b(Ljava/nio/ByteBuffer;)V

    .line 86
    iget v0, p0, Lcom/abq/qba/e/ac;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 87
    iget v0, p0, Lcom/abq/qba/e/ac;->f:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    return-void
.end method

.method public final d(I)V
    .locals 0
    .param p1, "commentIndex"    # I

    .line 53
    iput p1, p0, Lcom/abq/qba/e/ac;->f:I

    .line 54
    return-void
.end method

.method protected final e(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 65
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/ac;->a()Lcom/abq/qba/e/a;

    move-result-object v0

    .line 69
    .local v0, "parent":Lcom/abq/qba/e/a;
    :goto_0
    if-eqz v0, :cond_2

    .line 70
    instance-of v1, v0, Lcom/abq/qba/e/x;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/abq/qba/e/x;

    invoke-virtual {v1, p1}, Lcom/abq/qba/e/x;->b(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/abq/qba/e/a;->a()Lcom/abq/qba/e/a;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "XmlNodeChunk did not have an XmlChunk parent."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/abq/qba/e/ac;->e:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 48
    iget v0, p0, Lcom/abq/qba/e/ac;->f:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/ac;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/abq/qba/e/ac;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/ac;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "XmlNodeChunk{line=%d, comment=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
