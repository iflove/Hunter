.class public abstract Lcom/abq/qba/e/o$a;
.super Ljava/lang/Object;
.source "StringPoolChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/o;)Lcom/abq/qba/e/o$a;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "parent"    # Lcom/abq/qba/e/o;

    .line 353
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 354
    .local v0, "nameIndex":I
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 355
    .local v1, "start":I
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 356
    .local v2, "stop":I
    new-instance v3, Lcom/abq/qba/e/p;

    invoke-direct {v3, v0, v1, v2, p2}, Lcom/abq/qba/e/p;-><init>(IIILcom/abq/qba/e/o;)V

    return-object v3
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)I
.end method

.method public abstract a(Lcom/abq/qba/e/o;)V
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/abq/qba/e/o;
.end method

.method public final e()[B
    .locals 3

    .line 366
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 367
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 382
    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->d()Lcom/abq/qba/e/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/o$a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 381
    const-string v1, "StringPoolSpan{%s, start=%d, stop=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
