.class public abstract Lcom/abq/qba/e/o$b;
.super Ljava/lang/Object;
.source "StringPoolChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/o;)Lcom/abq/qba/e/o$b;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "parent"    # Lcom/abq/qba/e/o;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "spans":Ljava/util/List;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 296
    .local v1, "nameIndex":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 297
    invoke-static {p0, p1, p2}, Lcom/abq/qba/e/o$a;->a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/o;)Lcom/abq/qba/e/o$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 p1, p1, 0xc

    .line 299
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    .line 301
    :cond_0
    new-instance v2, Lcom/abq/qba/e/q;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/abq/qba/e/q;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$a;",
            ">;"
        }
    .end annotation
.end method

.method public final b()[B
    .locals 6

    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/abq/qba/c/c;

    invoke-direct {v1, v0}, Lcom/abq/qba/c/c;-><init>(Ljava/io/OutputStream;)V

    .line 314
    .local v1, "payload":Lcom/abq/qba/c/c;
    :try_start_0
    invoke-virtual {p0}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/o$a;

    .line 315
    invoke-virtual {v4}, Lcom/abq/qba/e/o$a;->e()[B

    move-result-object v4

    .line 316
    .local v3, "encodedSpan":[B
    move-object v3, v4

    array-length v4, v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 319
    invoke-virtual {v1, v3}, Lcom/abq/qba/c/c;->write([B)V

    .line 320
    .end local v3    # "encodedSpan":[B
    goto :goto_0

    .line 317
    .restart local v3    # "encodedSpan":[B
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Encountered a span of invalid length."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "payload":Lcom/abq/qba/c/c;
    throw v2

    .line 321
    .end local v3    # "encodedSpan":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "payload":Lcom/abq/qba/c/c;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/abq/qba/c/c;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v1}, Lcom/abq/qba/c/c;->close()V

    .line 324
    .end local v1    # "payload":Lcom/abq/qba/c/c;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 313
    .restart local v1    # "payload":Lcom/abq/qba/c/c;
    :catchall_0
    move-exception v2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "payload":Lcom/abq/qba/c/c;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "payload":Lcom/abq/qba/c/c;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Lcom/abq/qba/c/c;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "StringPoolStyle{spans=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
