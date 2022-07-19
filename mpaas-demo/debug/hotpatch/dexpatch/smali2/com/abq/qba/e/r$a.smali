.class public abstract Lcom/abq/qba/e/r$a;
.super Ljava/lang/Object;
.source "TypeChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;IILcom/abq/qba/e/r;)Lcom/abq/qba/e/r$a;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "baseOffset"    # I
    .param p2, "index"    # I
    .param p3, "parent"    # Lcom/abq/qba/e/r;

    .line 322
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x0

    .line 323
    .local v1, "offset":I
    move v1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 327
    .local v0, "position":I
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    invoke-static {p0, p2, p3}, Lcom/abq/qba/e/r$a;->a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/r;)Lcom/abq/qba/e/r$a;

    move-result-object v2

    .line 329
    .local v2, "result":Lcom/abq/qba/e/r$a;
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    return-object v2
.end method

.method private static a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/r;)Lcom/abq/qba/e/r$a;
    .locals 16
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "parent"    # Lcom/abq/qba/e/r;

    .line 334
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 335
    .local v0, "headerSize":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int/2addr v1, v2

    .line 336
    .local v1, "flags":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 337
    .local v11, "keyIndex":I
    const/4 v2, 0x0

    .line 338
    .local v2, "value":Lcom/abq/qba/e/m;
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v3

    .line 339
    .local v12, "values":Ljava/util/Map;
    const/4 v3, 0x0

    .line 340
    .local v3, "parentEntry":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 342
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 343
    .local v4, "valueCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 344
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/abq/qba/e/m;->a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/m;

    move-result-object v7

    invoke-interface {v12, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    .end local v4    # "valueCount":I
    .end local v5    # "i":I
    :cond_0
    move-object v13, v2

    move v14, v3

    goto :goto_1

    .line 347
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/abq/qba/e/m;->a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/m;

    move-result-object v2

    move-object v13, v2

    move v14, v3

    .line 349
    .end local v2    # "value":Lcom/abq/qba/e/m;
    .end local v3    # "parentEntry":I
    .local v13, "value":Lcom/abq/qba/e/m;
    .local v14, "parentEntry":I
    :goto_1
    new-instance v15, Lcom/abq/qba/e/c;

    move-object v2, v15

    move v3, v0

    move v4, v1

    move v5, v11

    move-object v6, v13

    move-object v7, v12

    move v8, v14

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/abq/qba/e/c;-><init>(IIILcom/abq/qba/e/m;Ljava/util/Map;IILcom/abq/qba/e/r;)V

    return-object v15
.end method

.method private k()I
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->h()Lcom/abq/qba/e/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/abq/qba/e/r;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public abstract b(I)V
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/abq/qba/e/m;
.end method

.method public abstract e()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()Lcom/abq/qba/e/r;
.end method

.method public final i()Z
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->b()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()[B
    .locals 4

    .line 360
    invoke-direct {p0}, Lcom/abq/qba/e/r$a;->k()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 361
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-object v2, v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 362
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->a()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->b()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 367
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 369
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/m;

    invoke-virtual {v3}, Lcom/abq/qba/e/m;->e()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 371
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->d()Lcom/abq/qba/e/m;

    move-result-object v0

    .line 374
    .local v1, "value":Lcom/abq/qba/e/m;
    move-object v1, v0

    const-string v3, "A non-complex TypeChunk entry must have a value."

    invoke-static {v0, v3}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v1}, Lcom/abq/qba/e/m;->d()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 377
    .end local v1    # "value":Lcom/abq/qba/e/m;
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/abq/qba/e/r$a;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Entry{key=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
