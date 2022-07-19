.class public abstract Lcom/abq/qba/e/a;
.super Ljava/lang/Object;
.source "Chunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/abq/qba/e/a;

.field protected b:I

.field protected c:I

.field public final d:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/abq/qba/e/a;->a:Lcom/abq/qba/e/a;

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/abq/qba/e/a;->d:I

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/abq/qba/e/a;->b:I

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/a;->c:I

    .line 103
    return-void
.end method

.method protected static a(Ljava/io/DataOutput;I)I
    .locals 1
    .param p0, "output"    # Ljava/io/DataOutput;
    .param p1, "currentLength"    # I

    .line 205
    :goto_0
    rem-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 207
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return p1
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)Lcom/abq/qba/e/a;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "parent"    # Lcom/abq/qba/e/a;

    .line 261
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/abq/qba/e/a$a;->a(S)Lcom/abq/qba/e/a$a;

    move-result-object v0

    .line 262
    .local v0, "type":Lcom/abq/qba/e/a$a;
    sget-object v1, Lcom/abq/qba/e/a$1;->a:[I

    invoke-virtual {v0}, Lcom/abq/qba/e/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 303
    new-instance v1, Lcom/abq/qba/e/t;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/t;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .local v1, "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 300
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_0
    new-instance v1, Lcom/abq/qba/e/d;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/d;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 301
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 297
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_1
    new-instance v1, Lcom/abq/qba/e/s;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/s;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 298
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 294
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_2
    new-instance v1, Lcom/abq/qba/e/r;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/r;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 295
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 291
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_3
    new-instance v1, Lcom/abq/qba/e/f;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/f;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 292
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 288
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_4
    new-instance v1, Lcom/abq/qba/e/ad;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/ad;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 289
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 285
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_5
    new-instance v1, Lcom/abq/qba/e/w;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/w;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 286
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 282
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_6
    new-instance v1, Lcom/abq/qba/e/y;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/y;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 283
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 279
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_7
    new-instance v1, Lcom/abq/qba/e/ae;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/ae;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 280
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 276
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_8
    new-instance v1, Lcom/abq/qba/e/aa;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/aa;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 277
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 273
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_9
    new-instance v1, Lcom/abq/qba/e/ab;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/ab;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 274
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 270
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_a
    new-instance v1, Lcom/abq/qba/e/x;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/x;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 271
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 267
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_b
    new-instance v1, Lcom/abq/qba/e/l;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/l;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 268
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 264
    .end local v1    # "result":Lcom/abq/qba/e/a;
    :pswitch_c
    new-instance v1, Lcom/abq/qba/e/o;

    invoke-direct {v1, p0, p1}, Lcom/abq/qba/e/o;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 265
    .restart local v1    # "result":Lcom/abq/qba/e/a;
    nop

    .line 305
    :goto_0
    invoke-virtual {v1, p0}, Lcom/abq/qba/e/a;->a(Ljava/nio/ByteBuffer;)V

    .line 306
    invoke-direct {v1, p0}, Lcom/abq/qba/e/a;->d(Ljava/nio/ByteBuffer;)V

    .line 307
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/a;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/abq/qba/e/a;->a(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)Lcom/abq/qba/e/a;

    move-result-object v0

    return-object v0
.end method

.method private final d(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 156
    iget v0, p0, Lcom/abq/qba/e/a;->d:I

    iget v1, p0, Lcom/abq/qba/e/a;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 168
    .local v0, "start":I
    invoke-virtual {p0}, Lcom/abq/qba/e/a;->b()Lcom/abq/qba/e/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/abq/qba/e/a$a;->a()S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    iget v1, p0, Lcom/abq/qba/e/a;->b:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {p0, p1}, Lcom/abq/qba/e/a;->b(Ljava/nio/ByteBuffer;)V

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v0

    move v3, v1

    .line 173
    .local v3, "headerBytes":I
    move v3, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/a;->c()I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v1, 0x1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/a;->c()I

    move-result v2

    .line 173
    const-string v4, "Written header is wrong size. Got %s, want %s"

    invoke-static {v1, v4, v3, v2}, Lcom/abq/qba/b/b;->a(ZLjava/lang/String;II)V

    .line 175
    return-void
.end method


# virtual methods
.method public final a()Lcom/abq/qba/e/a;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/abq/qba/e/a;->a:Lcom/abq/qba/e/a;

    return-object v0
.end method

.method protected final a(I)V
    .locals 0
    .param p1, "size"    # I

    .line 148
    iput p1, p0, Lcom/abq/qba/e/a;->c:I

    .line 149
    return-void
.end method

.method public final a(Lcom/abq/qba/e/a;)V
    .locals 0
    .param p1, "parent"    # Lcom/abq/qba/e/a;

    .line 123
    iput-object p1, p0, Lcom/abq/qba/e/a;->a:Lcom/abq/qba/e/a;

    .line 124
    return-void
.end method

.method protected a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 194
    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 112
    return-void
.end method

.method public final a(Z)[B
    .locals 7
    .param p1, "shrink"    # Z

    .line 223
    invoke-virtual {p0}, Lcom/abq/qba/e/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lcom/abq/qba/e/a;->e(Ljava/nio/ByteBuffer;)V

    .line 225
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/abq/qba/c/c;

    invoke-direct {v2, v1}, Lcom/abq/qba/c/c;-><init>(Ljava/io/OutputStream;)V

    .line 228
    .local v2, "payload":Lcom/abq/qba/c/c;
    :try_start_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/abq/qba/e/a;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v2}, Lcom/abq/qba/c/c;->close()V

    .line 231
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 232
    .local v2, "payloadBytes":[B
    invoke-virtual {p0}, Lcom/abq/qba/e/a;->c()I

    move-result v3

    array-length v4, v2

    add-int/2addr v3, v4

    .line 233
    .local v3, "chunkSize":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 236
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 237
    .local v5, "result":Ljava/nio/ByteBuffer;
    move-object v5, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 238
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 239
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 227
    .end local v3    # "chunkSize":I
    .end local v5    # "result":Ljava/nio/ByteBuffer;
    .local v2, "payload":Lcom/abq/qba/c/c;
    :catchall_0
    move-exception v3

    .end local v0    # "header":Ljava/nio/ByteBuffer;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "payload":Lcom/abq/qba/c/c;
    .end local p1    # "shrink":Z
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    .restart local v0    # "header":Ljava/nio/ByteBuffer;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "payload":Lcom/abq/qba/c/c;
    .restart local p1    # "shrink":Z
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

.method protected abstract b()Lcom/abq/qba/e/a$a;
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 182
    return-void
.end method

.method public final c()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/abq/qba/e/a;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/abq/qba/e/a;->c:I

    return v0
.end method

.method public final e()[B
    .locals 1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/a;->a(Z)[B

    move-result-object v0

    return-object v0
.end method
