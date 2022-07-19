.class public final Lcom/abq/qba/e/o;
.super Lcom/abq/qba/e/a;
.source "StringPoolChunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/o$a;,
        Lcom/abq/qba/e/o$b;
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Z


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/abq/qba/e/o;->l:Z

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/o;->j:I

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/o;->k:I

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/o;->g:I

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/o;->h:I

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/o;->i:I

    .line 90
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;II)Ljava/util/List;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "result":Ljava/util/List;
    const/4 v1, -0x1

    .line 177
    .local v1, "previousOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    add-int/2addr v3, p2

    .line 179
    .local v3, "stringOffset":I
    invoke-direct {p0}, Lcom/abq/qba/e/o;->h()Lcom/abq/qba/e/k$a;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/abq/qba/e/k;->a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/k$a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    if-gt v3, v1, :cond_0

    .line 181
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/abq/qba/e/o;->l:Z

    .line 183
    :cond_0
    move v1, v3

    .line 177
    .end local v3    # "stringOffset":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private b(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)I
    .locals 6
    .param p1, "payload"    # Ljava/io/DataOutput;
    .param p2, "offsets"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "stringOffset":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v1, "used":Ljava/util/Map;
    iget-object v2, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .local v3, "string":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_0

    iget-boolean v4, p0, Lcom/abq/qba/e/o;->l:Z

    if-eqz v4, :cond_2

    .line 206
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 207
    .local v4, "offset":Ljava/lang/Integer;
    if-nez v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    .end local v4    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/abq/qba/e/o;->h()Lcom/abq/qba/e/k$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/abq/qba/e/k;->a(Ljava/lang/String;Lcom/abq/qba/e/k$a;)[B

    move-result-object v4

    .line 210
    .local v4, "encodedString":[B
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write([B)V

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 213
    array-length v5, v4

    add-int/2addr v0, v5

    .line 215
    .end local v3    # "string":Ljava/lang/String;
    .end local v4    # "encodedString":[B
    goto :goto_0

    .line 218
    :cond_3
    invoke-static {p1, v0}, Lcom/abq/qba/e/o;->a(Ljava/io/DataOutput;I)I

    move-result v2

    .line 219
    return v2
.end method

.method private b(Ljava/nio/ByteBuffer;II)Ljava/util/List;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$b;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 193
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    add-int/2addr v2, p2

    .line 194
    .local v2, "styleOffset":I
    invoke-static {p1, v2, p0}, Lcom/abq/qba/e/o$b;->a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/o;)Lcom/abq/qba/e/o$b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v2    # "styleOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private c(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)I
    .locals 6
    .param p1, "payload"    # Ljava/io/DataOutput;
    .param p2, "offsets"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "styleOffset":I
    iget-object v1, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v1, "used":Ljava/util/Map;
    iget-object v2, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/o$b;

    .line 228
    .local v3, "style":Lcom/abq/qba/e/o$b;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 236
    .local v4, "offset":Ljava/lang/Integer;
    if-nez v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    .end local v3    # "style":Lcom/abq/qba/e/o$b;
    .end local v4    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 229
    .restart local v3    # "style":Lcom/abq/qba/e/o$b;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/abq/qba/e/o$b;->b()[B

    move-result-object v4

    .line 230
    .local v4, "encodedStyle":[B
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write([B)V

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    array-length v5, v4

    add-int/2addr v0, v5

    .line 234
    .end local v4    # "encodedStyle":[B
    goto :goto_0

    .line 240
    .end local v3    # "style":Lcom/abq/qba/e/o$b;
    :cond_3
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 241
    add-int/lit8 v0, v0, 0x4

    .line 243
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 244
    add-int/lit8 v0, v0, 0x4

    .line 246
    invoke-static {p1, v0}, Lcom/abq/qba/e/o;->a(Ljava/io/DataOutput;I)I

    move-result v0

    .line 248
    .end local v1    # "used":Ljava/util/Map;
    :cond_4
    return v0
.end method

.method private h()Lcom/abq/qba/e/k$a;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/abq/qba/e/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    return-object v0

    :cond_0
    sget-object v0, Lcom/abq/qba/e/k$a;->b:Lcom/abq/qba/e/k$a;

    return-object v0
.end method

.method private i()I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private j()Z
    .locals 1

    .line 161
    iget v0, p0, Lcom/abq/qba/e/o;->g:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 7
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 264
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 266
    .local v1, "stringOffset":I
    invoke-direct {p0}, Lcom/abq/qba/e/o;->i()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 267
    .local v3, "offsets":Ljava/nio/ByteBuffer;
    move-object v3, v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 270
    new-instance v2, Lcom/abq/qba/c/c;

    invoke-direct {v2, v0}, Lcom/abq/qba/c/c;-><init>(Ljava/io/OutputStream;)V

    .line 271
    .local v2, "payload":Lcom/abq/qba/c/c;
    :try_start_0
    invoke-direct {p0, v2, v3, p3}, Lcom/abq/qba/e/o;->b(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)I

    move-result v4

    move v1, v4

    .line 272
    invoke-direct {p0, v2, v3, p3}, Lcom/abq/qba/e/o;->c(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v2}, Lcom/abq/qba/c/c;->close()V

    .line 275
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 277
    iget-object v2, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/abq/qba/e/o;->c()I

    move-result v4

    invoke-direct {p0}, Lcom/abq/qba/e/o;->i()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {p2, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 280
    :cond_0
    return-void

    .line 270
    .restart local v2    # "payload":Lcom/abq/qba/c/c;
    :catchall_0
    move-exception v4

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "stringOffset":I
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    .end local v3    # "offsets":Ljava/nio/ByteBuffer;
    .end local p1    # "output":Ljava/io/DataOutput;
    .end local p2    # "header":Ljava/nio/ByteBuffer;
    .end local p3    # "shrink":Z
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "stringOffset":I
    .restart local v2    # "payload":Lcom/abq/qba/c/c;
    .restart local v3    # "offsets":Ljava/nio/ByteBuffer;
    .restart local p1    # "output":Ljava/io/DataOutput;
    .restart local p2    # "header":Ljava/nio/ByteBuffer;
    .restart local p3    # "shrink":Z
    :catchall_1
    move-exception v5

    :try_start_2
    invoke-virtual {v2}, Lcom/abq/qba/c/c;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 94
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->a(Ljava/nio/ByteBuffer;)V

    .line 95
    iget-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    iget v1, p0, Lcom/abq/qba/e/o;->d:I

    iget v2, p0, Lcom/abq/qba/e/o;->h:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/abq/qba/e/o;->j:I

    invoke-direct {p0, p1, v1, v2}, Lcom/abq/qba/e/o;->a(Ljava/nio/ByteBuffer;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    iget v1, p0, Lcom/abq/qba/e/o;->d:I

    iget v2, p0, Lcom/abq/qba/e/o;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/abq/qba/e/o;->k:I

    invoke-direct {p0, p1, v1, v2}, Lcom/abq/qba/e/o;->b(Ljava/nio/ByteBuffer;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 147
    sget-object v0, Lcom/abq/qba/e/a$a;->b:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p0}, Lcom/abq/qba/e/o;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/abq/qba/e/o;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    .local v0, "stringsStart":I
    iget-object v1, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 256
    iget v1, p0, Lcom/abq/qba/e/o;->g:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 257
    iget-object v1, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 259
    return-void
.end method

.method public final c(I)Lcom/abq/qba/e/o$b;
    .locals 1
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/o$b;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
