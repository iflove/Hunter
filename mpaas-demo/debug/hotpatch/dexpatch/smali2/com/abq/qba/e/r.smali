.class public final Lcom/abq/qba/e/r;
.super Lcom/abq/qba/e/a;
.source "TypeChunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/r$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field private final g:I

.field private h:Lcom/abq/qba/e/h;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/r$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/r;->i:Ljava/util/Map;

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/abq/qba/d/c;->a(B)I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/r;->e:I

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/r;->f:I

    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/r;->g:I

    .line 63
    invoke-static {p1}, Lcom/abq/qba/e/h;->a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/abq/qba/e/r;->h:Lcom/abq/qba/e/h;

    .line 64
    return-void
.end method

.method private a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "payload"    # Ljava/io/DataOutput;
    .param p2, "offsets"    # Ljava/nio/ByteBuffer;

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "entryOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/abq/qba/e/r;->f:I

    if-ge v1, v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/abq/qba/e/r;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/r$a;

    .line 204
    .local v2, "entry":Lcom/abq/qba/e/r$a;
    move-object v2, v3

    if-nez v3, :cond_0

    .line 205
    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {v2}, Lcom/abq/qba/e/r$a;->j()[B

    move-result-object v3

    .line 208
    .local v3, "encodedEntry":[B
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 209
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    array-length v4, v3

    add-int/2addr v0, v4

    .line 202
    .end local v2    # "entry":Lcom/abq/qba/e/r$a;
    .end local v3    # "encodedEntry":[B
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1, v0}, Lcom/abq/qba/e/r;->a(Ljava/io/DataOutput;I)I

    move-result v1

    .line 214
    return v1
.end method

.method private h()Lcom/abq/qba/e/f;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/abq/qba/e/r;->a()Lcom/abq/qba/e/a;

    move-result-object v0

    .line 183
    .local v0, "chunk":Lcom/abq/qba/e/a;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/abq/qba/e/f;

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/abq/qba/e/a;->a()Lcom/abq/qba/e/a;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/abq/qba/e/f;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/abq/qba/e/f;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private i()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/abq/qba/e/r;->f:I

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 6
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0}, Lcom/abq/qba/e/r;->i()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 231
    .local v1, "offsets":Ljava/nio/ByteBuffer;
    new-instance v2, Lcom/abq/qba/c/c;

    invoke-direct {v2, v0}, Lcom/abq/qba/c/c;-><init>(Ljava/io/OutputStream;)V

    .line 232
    .local v2, "payload":Lcom/abq/qba/c/c;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/abq/qba/e/r;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v2}, Lcom/abq/qba/c/c;->close()V

    .line 234
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 236
    return-void

    .line 231
    .restart local v2    # "payload":Lcom/abq/qba/c/c;
    :catchall_0
    move-exception v3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "offsets":Ljava/nio/ByteBuffer;
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    .end local p1    # "output":Ljava/io/DataOutput;
    .end local p2    # "header":Ljava/nio/ByteBuffer;
    .end local p3    # "shrink":Z
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "offsets":Ljava/nio/ByteBuffer;
    .restart local v2    # "payload":Lcom/abq/qba/c/c;
    .restart local p1    # "output":Ljava/io/DataOutput;
    .restart local p2    # "header":Ljava/nio/ByteBuffer;
    .restart local p3    # "shrink":Z
    :catchall_1
    move-exception v4

    :try_start_2
    invoke-virtual {v2}, Lcom/abq/qba/c/c;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 68
    iget v0, p0, Lcom/abq/qba/e/r;->d:I

    iget v1, p0, Lcom/abq/qba/e/r;->g:I

    add-int/2addr v0, v1

    .line 69
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/abq/qba/e/r;->f:I

    if-ge v1, v3, :cond_1

    .line 70
    invoke-static {p1, v0, v1, p0}, Lcom/abq/qba/e/r$a;->a(Ljava/nio/ByteBuffer;IILcom/abq/qba/e/r;)Lcom/abq/qba/e/r$a;

    move-result-object v3

    .line 71
    .local v2, "entry":Lcom/abq/qba/e/r$a;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/abq/qba/e/r;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v2    # "entry":Lcom/abq/qba/e/r$a;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 191
    sget-object v0, Lcom/abq/qba/e/a$a;->l:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .line 165
    invoke-direct {p0}, Lcom/abq/qba/e/r;->h()Lcom/abq/qba/e/f;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 166
    .local v2, "packageChunk":Lcom/abq/qba/e/f;
    move-object v2, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "%s has no parent package."

    invoke-static {v0, v4, v3}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v2}, Lcom/abq/qba/e/f;->h()Lcom/abq/qba/e/o;

    move-result-object v0

    .line 168
    .local v1, "keyPool":Lcom/abq/qba/e/o;
    move-object v1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "%s\'s parent package has no key pool."

    invoke-static {v0, v4, v3}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v1, p1}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {p0}, Lcom/abq/qba/e/r;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/abq/qba/e/r;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    .local v0, "entriesStart":I
    iget v1, p0, Lcom/abq/qba/e/r;->e:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 221
    iget v1, p0, Lcom/abq/qba/e/r;->f:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    iget-object v1, p0, Lcom/abq/qba/e/r;->h:Lcom/abq/qba/e/h;

    invoke-virtual {v1}, Lcom/abq/qba/e/h;->y()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    return-void
.end method

.method public final f()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/abq/qba/e/r;->e:I

    return v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/r$a;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/abq/qba/e/r;->i:Ljava/util/Map;

    return-object v0
.end method
