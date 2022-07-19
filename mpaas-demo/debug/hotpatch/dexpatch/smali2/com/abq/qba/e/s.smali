.class public final Lcom/abq/qba/e/s;
.super Lcom/abq/qba/e/a;
.source "TypeSpecChunk.java"


# instance fields
.field public e:I

.field public f:[I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/abq/qba/d/c;->a(B)I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/s;->e:I

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 39
    .local v0, "resourceCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/abq/qba/e/s;->f:[I

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    iget-object v2, p0, Lcom/abq/qba/e/s;->f:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 81
    iget-object v0, p0, Lcom/abq/qba/e/s;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 82
    .local v3, "resource":I
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 81
    .end local v3    # "resource":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 66
    sget-object v0, Lcom/abq/qba/e/a$a;->m:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->b(Ljava/nio/ByteBuffer;)V

    .line 74
    iget v0, p0, Lcom/abq/qba/e/s;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/abq/qba/e/s;->f:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method public final f()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/abq/qba/e/s;->e:I

    return v0
.end method
