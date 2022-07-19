.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;
.super Ljava/lang/Object;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;,
        Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;,
        Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;,
        Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;
    }
.end annotation


# static fields
.field static a:[B


# instance fields
.field A:Z

.field B:[I

.field C:[I

.field D:[I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:J

.field O:Z

.field P:Ljava/io/InputStream;

.field Q:I

.field R:Z

.field S:Z

.field T:[I

.field U:[I

.field V:I

.field W:[J

.field X:[J

.field Y:[Z

.field Z:[B

.field aa:[I

.field ab:I

.field b:I

.field c:B

.field d:[I

.field e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

.field f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

.field g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

.field h:[S

.field i:[S

.field j:[S

.field k:[S

.field l:[S

.field m:[S

.field n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

.field o:[S

.field p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

.field q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

.field r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

.field s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

.field t:[I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    .line 22
    const/4 v1, 0x2

    .line 23
    .local v1, "c":I
    const/4 v2, 0x0

    aput-byte v2, v0, v2

    .line 24
    const/4 v2, 0x1

    aput-byte v2, v0, v2

    .line 25
    const/4 v0, 0x2

    .local v0, "slotFast":I
    :goto_0
    const/16 v3, 0x16

    if-ge v0, v3, :cond_1

    .line 27
    shr-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v2

    shl-int v3, v2, v3

    .line 28
    .local v3, "k":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 29
    sget-object v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v1

    .line 28
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    .end local v3    # "k":I
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "slotFast":I
    .end local v1    # "c":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 53
    const/4 v1, 0x4

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    .line 301
    const/16 v2, 0x1000

    new-array v3, v2, [Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    .line 302
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    .line 303
    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-direct {v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    .line 305
    const/16 v3, 0xc0

    new-array v4, v3, [S

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    .line 306
    const/16 v4, 0xc

    new-array v5, v4, [S

    iput-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    .line 307
    new-array v5, v4, [S

    iput-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    .line 308
    new-array v5, v4, [S

    iput-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    .line 309
    new-array v4, v4, [S

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->l:[S

    .line 310
    new-array v3, v3, [S

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    .line 312
    new-array v3, v1, [Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    .line 314
    const/16 v3, 0x72

    new-array v3, v3, [S

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->o:[S

    .line 315
    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;-><init>(I)V

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    .line 317
    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    .line 318
    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    .line 320
    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    .line 322
    const/16 v3, 0x224

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    .line 324
    const/16 v3, 0x20

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    .line 335
    const/16 v3, 0x100

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    .line 336
    const/16 v3, 0x200

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->C:[I

    .line 337
    const/16 v3, 0x10

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->D:[I

    .line 340
    const/16 v3, 0x2c

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->F:I

    .line 342
    const/4 v3, 0x2

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    .line 343
    const/4 v3, 0x3

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    .line 344
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->I:I

    .line 345
    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->J:I

    .line 347
    const/high16 v3, 0x400000

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->K:I

    .line 348
    const/4 v3, -0x1

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->L:I

    .line 349
    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->M:I

    .line 355
    const/4 v3, 0x1

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Q:I

    .line 356
    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->R:Z

    .line 358
    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->S:Z

    .line 533
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    .line 534
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    .line 1270
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->W:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->X:[J

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Y:[Z

    .line 1299
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Z:[B

    .line 1309
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->aa:[I

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V

    aput-object v4, v3, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static a(I)I
    .locals 2
    .param p0, "pos"    # I

    .line 35
    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    aget-byte v0, v0, p0

    return v0

    .line 37
    :cond_0
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_1

    .line 38
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    shr-int/lit8 v1, p0, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x14

    return v0

    .line 39
    :cond_1
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    shr-int/lit8 v1, p0, 0x14

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method private a(II)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "posState"    # I

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    shl-int/lit8 v2, p1, 0x4

    add-int/2addr v2, p2

    aget-short v1, v1, v2

    .line 456
    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    return v0
.end method

.method private a(III)I
    .locals 4
    .param p1, "repIndex"    # I
    .param p2, "state"    # I
    .param p3, "posState"    # I

    .line 462
    if-nez p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v0

    const/4 v1, 0x0

    .line 465
    .local v1, "price":I
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    shl-int/lit8 v3, p2, 0x4

    add-int/2addr v3, p3

    aget-short v2, v2, v3

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v2

    add-int/2addr v0, v2

    .end local v1    # "price":I
    .local v0, "price":I
    goto :goto_0

    .line 469
    .end local v0    # "price":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v0

    .line 470
    .restart local v0    # "price":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 475
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->l:[S

    aget-short v2, v2, p2

    add-int/lit8 v3, p1, -0x2

    invoke-static {v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v2

    add-int v0, v1, v2

    .line 478
    :goto_0
    return v0
.end method

.method private a(IIII)I
    .locals 2
    .param p1, "repIndex"    # I
    .param p2, "len"    # I
    .param p3, "state"    # I
    .param p4, "posState"    # I

    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1, p4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(II)I

    move-result v0

    .line 484
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private a([J[J[Z)V
    .locals 17
    .param p1, "inSize"    # [J
    .param p2, "outSize"    # [J
    .param p3, "finished"    # [Z

    .line 1063
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    .line 1064
    aput-wide v2, p2, v1

    .line 1065
    const/4 v4, 0x1

    aput-boolean v4, p3, v1

    .line 1067
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->P:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 1069
    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a(Ljava/io/InputStream;)V

    .line 1070
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a()V

    .line 1071
    iput-boolean v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->S:Z

    .line 1072
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->P:Ljava/io/InputStream;

    .line 1075
    :cond_0
    iget-boolean v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->O:Z

    if-eqz v5, :cond_1

    .line 1076
    return-void

    .line 1077
    :cond_1
    iput-boolean v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->O:Z

    .line 1080
    iget-wide v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    .line 1081
    .local v5, "progressPosValuePrev":J
    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    const/4 v9, 0x4

    cmp-long v10, v7, v2

    if-nez v10, :cond_3

    .line 1083
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d()I

    move-result v2

    if-nez v2, :cond_2

    .line 1085
    iget-wide v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v2, v1

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g(I)V

    .line 1086
    return-void

    .line 1089
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e()I

    .line 1090
    iget-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v3, v2

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v2, v3

    .line 1091
    .local v2, "posState":I
    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    iget v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    shl-int/2addr v8, v9

    add-int/2addr v8, v2

    invoke-virtual {v3, v7, v8, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1092
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v3

    iput v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 1093
    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    rsub-int/lit8 v7, v7, 0x0

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v3

    .line 1094
    .local v3, "curByte":B
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-wide v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v8, v10

    iget-byte v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    invoke-virtual {v7, v8, v10}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v7

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v7, v8, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;B)V

    .line 1095
    iput-byte v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    .line 1096
    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    sub-int/2addr v7, v4

    iput v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    .line 1097
    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    .line 1099
    .end local v2    # "posState":I
    .end local v3    # "curByte":B
    :cond_3
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d()I

    move-result v2

    if-nez v2, :cond_4

    .line 1101
    iget-wide v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v2, v1

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g(I)V

    .line 1102
    return-void

    .line 1099
    :cond_4
    const/4 v2, 0x0

    .line 1107
    :goto_0
    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v3, v7

    invoke-direct {v0, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e(I)I

    move-result v3

    .line 1108
    .local v3, "len":I
    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 1109
    .local v7, "pos":I
    iget-wide v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v8, v10

    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v8, v10

    .line 1110
    .local v8, "posState":I
    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    shl-int/2addr v10, v9

    add-int/2addr v10, v8

    .line 1111
    .local v10, "complexState":I
    if-ne v3, v4, :cond_6

    const/4 v11, -0x1

    if-ne v7, v11, :cond_6

    .line 1113
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    invoke-virtual {v11, v12, v10, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1114
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    rsub-int/lit8 v12, v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v11

    .line 1115
    .local v11, "curByte":B
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-wide v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v14, v13

    iget-byte v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    invoke-virtual {v12, v14, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v12

    .line 1116
    .local v12, "subCoder":Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->e(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1118
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aget v13, v13, v1

    rsub-int/lit8 v13, v13, 0x0

    sub-int/2addr v13, v4

    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    sub-int/2addr v13, v14

    invoke-virtual {v2, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v2

    .line 1119
    .local v2, "matchByte":B
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v12, v13, v2, v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;BB)V

    .line 1120
    .end local v2    # "matchByte":B
    goto :goto_1

    .line 1122
    :cond_5
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v12, v13, v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;B)V

    .line 1123
    :goto_1
    iput-byte v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    .line 1124
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v13

    iput v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 1125
    .end local v11    # "curByte":B
    .end local v12    # "subCoder":Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;
    goto/16 :goto_8

    .line 1128
    :cond_6
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    invoke-virtual {v11, v12, v10, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1129
    if-ge v7, v9, :cond_d

    .line 1131
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1132
    if-nez v7, :cond_8

    .line 1134
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1135
    if-ne v3, v4, :cond_7

    .line 1136
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    invoke-virtual {v11, v12, v10, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    goto :goto_2

    .line 1138
    :cond_7
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    invoke-virtual {v11, v12, v10, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    goto :goto_2

    .line 1142
    :cond_8
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1143
    if-ne v7, v4, :cond_9

    .line 1144
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    goto :goto_2

    .line 1147
    :cond_9
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1148
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->l:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    add-int/lit8 v14, v7, -0x2

    invoke-virtual {v11, v12, v13, v14}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1151
    :goto_2
    if-ne v3, v4, :cond_a

    .line 1152
    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->d(I)I

    move-result v11

    iput v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    goto :goto_3

    .line 1155
    :cond_a
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v11, v12, v13, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V

    .line 1156
    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->c(I)I

    move-result v11

    iput v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 1158
    :goto_3
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aget v11, v11, v7

    .line 1159
    .local v11, "distance":I
    if-eqz v7, :cond_c

    .line 1161
    move v12, v7

    .local v12, "i":I
    :goto_4
    if-lez v12, :cond_b

    .line 1162
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    add-int/lit8 v14, v12, -0x1

    aget v14, v13, v14

    aput v14, v13, v12

    .line 1161
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1163
    .end local v12    # "i":I
    :cond_b
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aput v11, v12, v1

    .line 1165
    .end local v11    # "distance":I
    :cond_c
    goto/16 :goto_7

    .line 1168
    :cond_d
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-virtual {v11, v12, v13, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1169
    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->b(I)I

    move-result v11

    iput v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 1170
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v11, v12, v13, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V

    .line 1171
    add-int/lit8 v7, v7, -0x4

    .line 1172
    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(I)I

    move-result v11

    .line 1173
    .local v11, "posSlot":I
    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->f(I)I

    move-result v12

    .line 1174
    .local v12, "lenToPosState":I
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v13, v13, v12

    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v13, v14, v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    .line 1176
    if-lt v11, v9, :cond_f

    .line 1178
    shr-int/lit8 v2, v11, 0x1

    sub-int/2addr v2, v4

    .line 1179
    .local v2, "footerBits":I
    and-int/lit8 v13, v11, 0x1

    or-int/lit8 v13, v13, 0x2

    shl-int/2addr v13, v2

    .line 1180
    .local v13, "baseVal":I
    sub-int v14, v7, v13

    .line 1182
    .local v14, "posReduced":I
    const/16 v15, 0xe

    if-ge v11, v15, :cond_e

    .line 1183
    iget-object v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->o:[S

    sub-int v16, v13, v11

    add-int/lit8 v9, v16, -0x1

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-static {v15, v9, v1, v2, v14}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a([SILcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V

    move v1, v2

    .end local v2    # "footerBits":I
    .end local v13    # "baseVal":I
    .end local v14    # "posReduced":I
    .local v1, "distance":I
    goto :goto_5

    .line 1187
    .end local v1    # "distance":I
    .restart local v2    # "footerBits":I
    .restart local v13    # "baseVal":I
    .restart local v14    # "posReduced":I
    :cond_e
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    shr-int/lit8 v9, v14, 0x4

    add-int/lit8 v15, v2, -0x4

    invoke-virtual {v1, v9, v15}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(II)V

    .line 1188
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    and-int/lit8 v15, v14, 0xf

    invoke-virtual {v1, v9, v15}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    .line 1189
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->E:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->E:I

    move v1, v2

    .end local v2    # "footerBits":I
    .end local v13    # "baseVal":I
    .end local v14    # "posReduced":I
    .restart local v1    # "distance":I
    goto :goto_5

    .line 1176
    .end local v1    # "distance":I
    :cond_f
    move v1, v2

    .line 1193
    .local v2, "distance":I
    :goto_5
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_6
    if-lez v1, :cond_10

    .line 1194
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    add-int/lit8 v13, v1, -0x1

    aget v13, v9, v13

    aput v13, v9, v1

    .line 1193
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1195
    .end local v1    # "i":I
    :cond_10
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    const/4 v9, 0x0

    aput v7, v1, v9

    .line 1196
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->ab:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->ab:I

    .line 1198
    .end local v2    # "distance":I
    .end local v11    # "posSlot":I
    .end local v12    # "lenToPosState":I
    :goto_7
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    add-int/lit8 v9, v3, -0x1

    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    sub-int/2addr v9, v11

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v1

    iput-byte v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    .line 1200
    :goto_8
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    .line 1201
    iget-wide v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    int-to-long v13, v3

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    .line 1202
    if-nez v1, :cond_15

    .line 1205
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->ab:I

    const/16 v9, 0x80

    if-lt v1, v9, :cond_11

    .line 1206
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i()V

    .line 1207
    :cond_11
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->E:I

    const/16 v9, 0x10

    if-lt v1, v9, :cond_12

    .line 1208
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j()V

    .line 1209
    :cond_12
    iget-wide v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    const/4 v1, 0x0

    aput-wide v11, p1, v1

    .line 1210
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->e()J

    move-result-wide v11

    aput-wide v11, p2, v1

    .line 1211
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d()I

    move-result v1

    if-nez v1, :cond_13

    .line 1213
    iget-wide v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    long-to-int v2, v1

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g(I)V

    .line 1214
    return-void

    .line 1217
    :cond_13
    iget-wide v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    sub-long/2addr v11, v5

    const-wide/16 v13, 0x1000

    cmp-long v1, v11, v13

    if-ltz v1, :cond_14

    .line 1219
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->O:Z

    .line 1220
    aput-boolean v1, p3, v1

    .line 1221
    return-void

    .line 1217
    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    .line 1202
    :cond_15
    const/4 v1, 0x0

    .line 1224
    .end local v3    # "len":I
    .end local v7    # "pos":I
    .end local v8    # "posState":I
    .end local v10    # "complexState":I
    :goto_9
    const/4 v9, 0x4

    goto/16 :goto_0
.end method

.method private static b(I)I
    .locals 2
    .param p0, "pos"    # I

    .line 44
    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_0

    .line 45
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    shr-int/lit8 v1, p0, 0x6

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 46
    :cond_0
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1

    .line 47
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    shr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x20

    return v0

    .line 48
    :cond_1
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a:[B

    shr-int/lit8 v1, p0, 0x1a

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x34

    return v0
.end method

.method private b(III)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I

    .line 490
    invoke-static {p2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->f(I)I

    move-result v0

    .line 491
    .local v0, "lenToPosState":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->C:[I

    mul-int/lit16 v2, v0, 0x80

    add-int/2addr v2, p1

    aget v1, v1, v2

    .local v1, "price":I
    goto :goto_0

    .line 494
    .end local v1    # "price":I
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    shl-int/lit8 v2, v0, 0x6

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->D:[I

    and-int/lit8 v3, p1, 0xf

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 496
    .restart local v1    # "price":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v2, v3, p3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private b()V
    .locals 3

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 58
    iput-byte v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aput v0, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .line 1250
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->P:Ljava/io/InputStream;

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->O:Z

    .line 1252
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c()V

    .line 1253
    invoke-direct {p0, p2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b(Ljava/io/OutputStream;)V

    .line 1254
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d()V

    .line 1258
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i()V

    .line 1259
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j()V

    .line 1262
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->b(I)V

    .line 1263
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->c(I)V

    .line 1264
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->b(I)V

    .line 1265
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->c(I)V

    .line 1267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->N:J

    .line 1268
    return-void
.end method

.method private b(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 1237
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;-><init>()V

    .line 365
    .local v0, "bt":Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;
    const/4 v1, 0x4

    .line 366
    .local v1, "numHashBytes":I
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Q:I

    if-nez v2, :cond_0

    .line 367
    const/4 v1, 0x2

    .line 368
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a(I)V

    .line 369
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    .line 371
    .end local v0    # "bt":Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;
    .end local v1    # "numHashBytes":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->I:I

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->J:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(II)V

    .line 373
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->K:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->L:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->M:I

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    if-ne v1, v2, :cond_2

    .line 374
    return-void

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a(II)Z

    .line 376
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->K:I

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->L:I

    .line 377
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->M:I

    .line 378
    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1, "num"    # I

    .line 446
    if-lez p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(I)V

    .line 449
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    .line 451
    :cond_0
    return-void
.end method

.method private d(I)I
    .locals 6
    .param p1, "cur"    # I

    .line 501
    iput p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->y:I

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 503
    .local v0, "posMem":I
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 506
    .local v1, "backMem":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a()V

    .line 509
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, v0

    add-int/lit8 v4, v0, -0x1

    iput v4, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 510
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v4, v0, -0x1

    aget-object v2, v2, v4

    iput-boolean v3, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 513
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    aget-object v2, v2, p1

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->d:I

    iput v2, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 514
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    aget-object v2, v2, p1

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->e:I

    iput v2, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 517
    :cond_0
    move v2, v0

    .line 518
    .local v2, "posPrev":I
    move v4, v1

    .line 520
    .local v4, "backCur":I
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v2

    iget v1, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 521
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v2

    iget v0, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 523
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v2

    iput v4, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 524
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v2

    iput p1, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 525
    nop

    .line 527
    .end local v2    # "posPrev":I
    .end local v4    # "backCur":I
    move p1, v2

    if-gtz v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 529
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    .line 530
    return v2

    .line 527
    :cond_1
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .line 395
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b()V

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b()V

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->m:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->j:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->k:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->l:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->o:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a()V

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a()V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(I)V

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(I)V

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a()V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->A:Z

    .line 424
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->y:I

    .line 425
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    .line 426
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    .line 427
    return-void
.end method

.method private e()I
    .locals 5

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "lenRes":I
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a([I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->w:I

    .line 433
    if-lez v1, :cond_0

    .line 435
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    add-int/lit8 v3, v1, -0x2

    aget v3, v2, v3

    .line 436
    move v0, v3

    iget v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    if-ne v3, v4, :cond_0

    .line 437
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    rsub-int v2, v0, 0x111

    invoke-virtual {v3, v4, v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->x:I

    .line 441
    return v0
.end method

.method private e(I)I
    .locals 23

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->y:I

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    if-eq v2, v3, :cond_0

    .line 541
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    sub-int/2addr v1, v2

    .line 542
    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    iput v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 543
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    iput v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    .line 544
    return v1

    .line 546
    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->y:I

    iput v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->z:I

    .line 549
    iget-boolean v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->A:Z

    if-nez v3, :cond_1

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e()I

    move-result v3

    goto :goto_0

    .line 555
    :cond_1
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->v:I

    .line 556
    iput-boolean v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->A:Z

    .line 558
    :goto_0
    iget v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->w:I

    .line 560
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 561
    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2

    .line 563
    iput v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 564
    return v6

    .line 569
    :cond_2
    nop

    .line 571
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x4

    if-ge v5, v10, :cond_4

    .line 573
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aget v11, v11, v5

    aput v11, v10, v5

    .line 574
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    aget v10, v10, v5

    const/16 v13, 0x111

    invoke-virtual {v12, v7, v10, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v10

    aput v10, v11, v5

    .line 575
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v11, v10, v5

    aget v10, v10, v9

    if-le v11, v10, :cond_3

    .line 576
    move v9, v5

    .line 571
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 578
    :cond_4
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v11, v5, v9

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    if-lt v11, v12, :cond_5

    .line 580
    iput v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 581
    aget v1, v5, v9

    .line 582
    add-int/lit8 v2, v1, -0x1

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c(I)V

    .line 583
    return v1

    .line 586
    :cond_5
    if-lt v3, v12, :cond_6

    .line 588
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    sub-int/2addr v4, v6

    aget v1, v1, v4

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 589
    add-int/lit8 v1, v3, -0x1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c(I)V

    .line 590
    return v3

    .line 593
    :cond_6
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v5

    .line 594
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d:[I

    aget v12, v12, v2

    rsub-int/lit8 v12, v12, 0x0

    sub-int/2addr v12, v6

    sub-int/2addr v12, v6

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v11

    .line 596
    if-ge v3, v8, :cond_7

    if-eq v5, v11, :cond_7

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v12, v12, v9

    if-ge v12, v8, :cond_7

    .line 598
    iput v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 599
    return v6

    .line 602
    :cond_7
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v12, v12, v2

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    iput v13, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a:I

    .line 604
    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v12, v1

    .line 606
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v13, v13, v6

    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    shl-int/2addr v15, v10

    add-int/2addr v15, v12

    aget-short v14, v14, v15

    invoke-static {v14}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v14

    iget-object v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-byte v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->c:B

    .line 607
    invoke-virtual {v15, v1, v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v7

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v15}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->e(I)Z

    move-result v15

    xor-int/2addr v15, v6

    invoke-virtual {v7, v15, v11, v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(ZBB)I

    move-result v7

    add-int/2addr v14, v7

    iput v14, v13, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 608
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a()V

    .line 610
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    shl-int/2addr v13, v10

    add-int/2addr v13, v12

    aget-short v7, v7, v13

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v7

    .line 611
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    aget-short v13, v13, v14

    invoke-static {v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v13

    add-int/2addr v13, v7

    .line 613
    if-ne v11, v5, :cond_8

    .line 615
    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-direct {v0, v5, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(II)I

    move-result v5

    add-int/2addr v5, v13

    .line 616
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v11, v11, v6

    iget v11, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v5, v11, :cond_8

    .line 618
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v11, v11, v6

    iput v5, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 619
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b()V

    .line 623
    :cond_8
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v11, v5, v9

    if-lt v3, v11, :cond_9

    move v5, v3

    goto :goto_2

    :cond_9
    aget v5, v5, v9

    .line 625
    :goto_2
    if-ge v5, v8, :cond_a

    .line 627
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    iput v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->V:I

    .line 628
    return v6

    .line 631
    :cond_a
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v6

    iput v2, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 633
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v2

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v11, v11, v2

    iput v11, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    .line 634
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v2

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v11, v11, v6

    iput v11, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    .line 635
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v2

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v11, v11, v8

    iput v11, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    .line 636
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v2

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    const/4 v14, 0x3

    aget v11, v11, v14

    iput v11, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    .line 638
    move v9, v5

    .line 640
    :goto_3
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v15, v9, -0x1

    aget-object v9, v11, v9

    const v11, 0xfffffff

    iput v11, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 641
    if-ge v15, v8, :cond_42

    .line 643
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_e

    .line 645
    iget-object v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v15, v15, v9

    .line 646
    if-lt v15, v8, :cond_d

    .line 648
    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-direct {v0, v9, v11, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(III)I

    move-result v11

    add-int/2addr v11, v13

    .line 651
    :goto_5
    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->r:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    add-int/lit8 v10, v15, -0x2

    invoke-virtual {v14, v10, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(II)I

    move-result v10

    add-int/2addr v10, v11

    .line 652
    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v14, v14, v15

    .line 653
    iget v6, v14, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v10, v6, :cond_b

    .line 655
    iput v10, v14, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 656
    iput v2, v14, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 657
    iput v9, v14, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 658
    iput-boolean v2, v14, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 661
    :cond_b
    add-int/lit8 v15, v15, -0x1

    if-ge v15, v8, :cond_c

    goto :goto_6

    :cond_c
    const/4 v6, 0x1

    const/4 v10, 0x4

    const/4 v14, 0x3

    goto :goto_5

    .line 643
    :cond_d
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x4

    const v11, 0xfffffff

    const/4 v14, 0x3

    goto :goto_4

    .line 664
    :cond_e
    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    iget v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    aget-short v6, v6, v9

    invoke-static {v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v6

    add-int/2addr v7, v6

    .line 666
    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->U:[I

    aget v9, v6, v2

    if-lt v9, v8, :cond_f

    aget v6, v6, v2

    const/4 v9, 0x1

    add-int/2addr v6, v9

    goto :goto_7

    :cond_f
    const/4 v6, 0x2

    .line 667
    :goto_7
    if-gt v6, v3, :cond_13

    .line 669
    const/4 v3, 0x0

    .line 670
    :goto_8
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    aget v9, v9, v3

    if-le v6, v9, :cond_10

    .line 671
    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    .line 674
    :cond_10
    :goto_9
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    .line 675
    invoke-direct {v0, v9, v6, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b(III)I

    move-result v10

    add-int/2addr v10, v7

    .line 676
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v11, v11, v6

    .line 677
    iget v13, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v10, v13, :cond_11

    .line 679
    iput v10, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 680
    iput v2, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 681
    add-int/lit8 v9, v9, 0x4

    iput v9, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 682
    iput-boolean v2, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 684
    :cond_11
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    aget v9, v9, v3

    if-ne v6, v9, :cond_12

    .line 686
    add-int/lit8 v3, v3, 0x2

    .line 687
    if-eq v3, v4, :cond_13

    .line 672
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 693
    :cond_13
    const/4 v3, 0x0

    .line 697
    :goto_a
    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 698
    if-ne v3, v5, :cond_14

    .line 699
    invoke-direct {v0, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d(I)I

    move-result v1

    return v1

    .line 700
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e()I

    move-result v4

    .line 701
    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->w:I

    .line 702
    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    if-lt v4, v7, :cond_15

    .line 705
    iput v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->v:I

    .line 706
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->A:Z

    .line 707
    invoke-direct {v0, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->d(I)I

    move-result v1

    return v1

    .line 709
    :cond_15
    const/4 v7, 0x1

    add-int/2addr v1, v7

    .line 710
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 712
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-boolean v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    if-eqz v9, :cond_18

    .line 714
    add-int/lit8 v7, v7, -0x1

    .line 715
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-boolean v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    if-eqz v9, :cond_17

    .line 717
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v9, v3

    iget v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->d:I

    aget-object v9, v9, v10

    iget v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a:I

    .line 718
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->e:I

    const/4 v11, 0x4

    if-ge v10, v11, :cond_16

    .line 719
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->c(I)I

    move-result v9

    goto :goto_b

    .line 721
    :cond_16
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->b(I)I

    move-result v9

    goto :goto_b

    .line 724
    :cond_17
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a:I

    .line 725
    :goto_b
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v9

    goto :goto_c

    .line 728
    :cond_18
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a:I

    .line 729
    :goto_c
    add-int/lit8 v10, v3, -0x1

    if-ne v7, v10, :cond_1a

    .line 731
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 732
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->d(I)I

    move-result v7

    goto/16 :goto_f

    .line 734
    :cond_19
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v7

    goto/16 :goto_f

    .line 739
    :cond_1a
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v10, v3

    iget-boolean v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    if-eqz v10, :cond_1b

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v10, v3

    iget-boolean v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    if-eqz v10, :cond_1b

    .line 741
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->d:I

    .line 742
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->e:I

    .line 743
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->c(I)I

    move-result v9

    const/4 v11, 0x4

    goto :goto_d

    .line 747
    :cond_1b
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 748
    const/4 v11, 0x4

    if-ge v10, v11, :cond_1c

    .line 749
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->c(I)I

    move-result v9

    goto :goto_d

    .line 751
    :cond_1c
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->b(I)I

    move-result v9

    .line 753
    :goto_d
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v7, v12, v7

    .line 754
    if-ge v10, v11, :cond_20

    .line 756
    if-nez v10, :cond_1d

    .line 758
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    aput v11, v10, v2

    .line 759
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 760
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    aput v11, v10, v8

    .line 761
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    const/4 v11, 0x3

    aput v7, v10, v11

    goto :goto_e

    .line 763
    :cond_1d
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1e

    .line 765
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    aput v11, v10, v2

    .line 766
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    aput v11, v10, v12

    .line 767
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    aput v11, v10, v8

    .line 768
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    const/4 v11, 0x3

    aput v7, v10, v11

    goto :goto_e

    .line 770
    :cond_1e
    if-ne v10, v8, :cond_1f

    .line 772
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    aput v11, v10, v2

    .line 773
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 774
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    aput v11, v10, v8

    .line 775
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    const/4 v11, 0x3

    aput v7, v10, v11

    goto :goto_e

    .line 779
    :cond_1f
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    aput v11, v10, v2

    .line 780
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 781
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    aput v11, v10, v8

    .line 782
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    const/4 v11, 0x3

    aput v7, v10, v11

    goto :goto_e

    .line 787
    :cond_20
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    add-int/lit8 v10, v10, -0x4

    aput v10, v11, v2

    .line 788
    iget v10, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    const/4 v12, 0x1

    aput v10, v11, v12

    .line 789
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v11, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    aput v11, v10, v8

    .line 790
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    iget v7, v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    const/4 v11, 0x3

    aput v7, v10, v11

    .line 793
    :goto_e
    move v7, v9

    :goto_f
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iput v7, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a:I

    .line 794
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v10, v10, v2

    iput v10, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->i:I

    .line 795
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iput v10, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->j:I

    .line 796
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v10, v10, v8

    iput v10, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->k:I

    .line 797
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    iput v10, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->l:I

    .line 798
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 800
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    const/4 v12, -0x1

    invoke-virtual {v10, v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v10

    .line 801
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v13, v13, v2

    rsub-int/lit8 v13, v13, 0x0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v12

    .line 803
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v13, v1

    .line 805
    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v15, v7, 0x4

    add-int/2addr v15, v13

    aget-short v14, v14, v15

    .line 806
    invoke-static {v14}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v14

    add-int/2addr v14, v9

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    const/4 v8, -0x2

    .line 807
    invoke-virtual {v2, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v2

    .line 808
    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->e(I)Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    invoke-virtual {v2, v8, v12, v10}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(ZBB)I

    move-result v2

    add-int/2addr v14, v2

    .line 810
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v8, v3, 0x1

    aget-object v2, v2, v8

    .line 812
    nop

    .line 813
    iget v11, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v14, v11, :cond_21

    .line 815
    iput v14, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 816
    iput v3, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 817
    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->a()V

    .line 818
    const/4 v11, 0x1

    goto :goto_10

    .line 813
    :cond_21
    const/4 v11, 0x0

    .line 821
    :goto_10
    move/from16 p1, v5

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    aget-short v5, v5, v15

    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v5

    add-int/2addr v9, v5

    .line 822
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    aget-short v5, v5, v7

    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v5

    add-int/2addr v5, v9

    .line 824
    if-ne v12, v10, :cond_24

    iget v15, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    if-ge v15, v3, :cond_23

    iget v15, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    if-eqz v15, :cond_22

    goto :goto_11

    :cond_22
    move/from16 v16, v6

    goto :goto_12

    .line 827
    :cond_23
    :goto_11
    invoke-direct {v0, v7, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(II)I

    move-result v15

    add-int/2addr v15, v5

    .line 828
    move/from16 v16, v6

    iget v6, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-gt v15, v6, :cond_25

    .line 830
    iput v15, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 831
    iput v3, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 832
    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b()V

    .line 833
    const/4 v11, 0x1

    goto :goto_12

    .line 824
    :cond_24
    move/from16 v16, v6

    .line 837
    :cond_25
    :goto_12
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d()I

    move-result v2

    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 838
    rsub-int v6, v3, 0xfff

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 839
    nop

    .line 841
    const/4 v6, 0x2

    if-lt v2, v6, :cond_41

    .line 843
    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    if-le v2, v6, :cond_26

    .line 844
    move v15, v6

    goto :goto_13

    .line 843
    :cond_26
    move v15, v2

    .line 845
    :goto_13
    if-nez v11, :cond_29

    if-eq v12, v10, :cond_29

    .line 848
    add-int/lit8 v10, v2, -0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 849
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v12, v11, v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v6

    .line 850
    const/4 v10, 0x2

    if-lt v6, v10, :cond_28

    .line 852
    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v10

    .line 854
    add-int/lit8 v11, v1, 0x1

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v11, v12

    .line 855
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v17, v10, 0x4

    add-int v17, v17, v11

    aget-short v12, v12, v17

    .line 856
    invoke-static {v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v12

    add-int/2addr v14, v12

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    aget-short v12, v12, v10

    .line 857
    invoke-static {v12}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v12

    add-int/2addr v14, v12

    .line 859
    add-int v12, v8, v6

    move/from16 v17, v9

    move/from16 v9, p1

    .line 860
    :goto_14
    if-ge v9, v12, :cond_27

    .line 861
    move/from16 v18, v4

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v4, v4, v9

    move/from16 p1, v9

    const v9, 0xfffffff

    iput v9, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    move/from16 v9, p1

    move/from16 v4, v18

    goto :goto_14

    .line 862
    :cond_27
    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v6, v10, v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(IIII)I

    move-result v6

    add-int/2addr v14, v6

    .line 864
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v4, v4, v12

    .line 865
    iget v6, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v14, v6, :cond_2a

    .line 867
    iput v14, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 868
    iput v8, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 869
    const/4 v6, 0x0

    iput v6, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 870
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 871
    iput-boolean v6, v4, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    goto :goto_16

    .line 850
    :cond_28
    move/from16 v18, v4

    move/from16 v17, v9

    goto :goto_15

    .line 845
    :cond_29
    move/from16 v18, v4

    move/from16 v17, v9

    .line 877
    :goto_15
    move/from16 v9, p1

    :cond_2a
    :goto_16
    nop

    .line 879
    const/4 v4, 0x0

    const/4 v6, 0x2

    :goto_17
    const/4 v8, 0x4

    if-ge v4, v8, :cond_34

    .line 881
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v11, v11, v4

    const/4 v14, -0x1

    invoke-virtual {v10, v14, v11, v15}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v10

    .line 882
    const/4 v11, 0x2

    if-lt v10, v11, :cond_33

    .line 884
    move v11, v10

    .line 887
    :goto_18
    add-int v12, v3, v11

    if-ge v9, v12, :cond_2b

    .line 888
    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v12, v12, v9

    const v8, 0xfffffff

    iput v8, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    const/4 v8, 0x4

    goto :goto_18

    .line 889
    :cond_2b
    invoke-direct {v0, v4, v11, v7, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(IIII)I

    move-result v8

    add-int/2addr v8, v5

    .line 890
    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v12, v14, v12

    .line 891
    iget v14, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v8, v14, :cond_2c

    .line 893
    iput v8, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 894
    iput v3, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 895
    iput v4, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 896
    const/4 v8, 0x0

    iput-boolean v8, v12, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 899
    :cond_2c
    add-int/lit8 v11, v11, -0x1

    const/4 v8, 0x2

    if-ge v11, v8, :cond_32

    .line 900
    nop

    .line 902
    if-nez v4, :cond_2d

    .line 903
    add-int/lit8 v6, v10, 0x1

    .line 906
    :cond_2d
    if-ge v10, v2, :cond_31

    .line 908
    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v10

    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 909
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v12, v12, v4

    invoke-virtual {v11, v10, v12, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v8

    .line 910
    const/4 v11, 0x2

    if-lt v8, v11, :cond_30

    .line 912
    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->c(I)I

    move-result v11

    .line 914
    add-int v12, v1, v10

    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v14, v12

    .line 915
    nop

    .line 916
    invoke-direct {v0, v4, v10, v7, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(IIII)I

    move-result v19

    add-int v19, v5, v19

    move/from16 v20, v5

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v21, v11, 0x4

    add-int v21, v21, v14

    aget-short v5, v5, v21

    .line 917
    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v5

    add-int v19, v19, v5

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    move/from16 p1, v6

    add-int/lit8 v6, v10, -0x1

    move/from16 v21, v9

    add-int/lit8 v9, v6, -0x1

    .line 919
    invoke-virtual {v14, v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v9

    .line 918
    invoke-virtual {v5, v12, v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v5

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->T:[I

    aget v14, v14, v4

    move/from16 v22, v1

    const/4 v1, 0x1

    add-int/2addr v14, v1

    sub-int v14, v6, v14

    .line 920
    invoke-virtual {v9, v14}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v9

    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    .line 921
    invoke-virtual {v14, v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v6

    .line 919
    invoke-virtual {v5, v1, v9, v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(ZBB)I

    move-result v5

    add-int v19, v19, v5

    .line 922
    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v5

    .line 923
    add-int/2addr v12, v1

    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v1, v12

    .line 924
    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v1

    aget-short v6, v6, v9

    invoke-static {v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v6

    add-int v19, v19, v6

    .line 925
    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    aget-short v6, v6, v5

    invoke-static {v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v6

    add-int v19, v19, v6

    .line 929
    add-int/lit8 v6, v10, 0x1

    add-int/2addr v6, v8

    move/from16 v9, v21

    .line 930
    :goto_19
    add-int v11, v3, v6

    if-ge v9, v11, :cond_2e

    .line 931
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v11, v11, v9

    const v12, 0xfffffff

    iput v12, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    goto :goto_19

    .line 932
    :cond_2e
    const/4 v6, 0x0

    invoke-direct {v0, v6, v8, v5, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(IIII)I

    move-result v1

    add-int v1, v19, v1

    .line 933
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v5, v5, v11

    .line 934
    iget v6, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v1, v6, :cond_2f

    .line 936
    iput v1, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 937
    add-int/2addr v10, v3

    const/4 v1, 0x1

    add-int/2addr v10, v1

    iput v10, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 938
    const/4 v6, 0x0

    iput v6, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 939
    iput-boolean v1, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 940
    iput-boolean v1, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    .line 941
    iput v3, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->d:I

    .line 942
    iput v4, v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->e:I

    .line 879
    :cond_2f
    move/from16 v6, p1

    goto :goto_1b

    .line 910
    :cond_30
    move/from16 v22, v1

    move/from16 v20, v5

    move/from16 p1, v6

    move/from16 v21, v9

    goto :goto_1a

    .line 906
    :cond_31
    move/from16 v22, v1

    move/from16 v20, v5

    move/from16 p1, v6

    move/from16 v21, v9

    .line 879
    :goto_1a
    move/from16 v6, p1

    move/from16 v9, v21

    goto :goto_1b

    .line 899
    :cond_32
    move/from16 v22, v1

    move/from16 v20, v5

    move/from16 v21, v9

    const/4 v8, 0x4

    const/4 v14, -0x1

    goto/16 :goto_18

    .line 882
    :cond_33
    move/from16 v22, v1

    move/from16 v20, v5

    .line 879
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v20

    move/from16 v1, v22

    goto/16 :goto_17

    .line 949
    :cond_34
    move/from16 v22, v1

    move/from16 v1, v18

    if-le v1, v15, :cond_36

    .line 951
    nop

    .line 952
    const/4 v1, 0x0

    :goto_1c
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    aget v5, v4, v1

    if-le v15, v5, :cond_35

    add-int/lit8 v1, v1, 0x2

    goto :goto_1c

    .line 953
    :cond_35
    aput v15, v4, v1

    .line 954
    add-int/lit8 v1, v1, 0x2

    move v4, v15

    goto :goto_1d

    .line 949
    :cond_36
    move v4, v1

    move/from16 v1, v16

    .line 956
    :goto_1d
    if-lt v4, v6, :cond_40

    .line 958
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    aget-short v5, v5, v7

    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v5

    add-int v5, v17, v5

    .line 959
    :goto_1e
    add-int v8, v3, v4

    if-ge v9, v8, :cond_37

    .line 960
    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    const v10, 0xfffffff

    iput v10, v8, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    goto :goto_1e

    .line 962
    :cond_37
    const/4 v4, 0x0

    .line 963
    :goto_1f
    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    aget v8, v8, v4

    if-le v6, v8, :cond_38

    .line 964
    add-int/lit8 v4, v4, 0x2

    goto :goto_1f

    .line 966
    :cond_38
    nop

    .line 968
    :goto_20
    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    add-int/lit8 v10, v4, 0x1

    aget v8, v8, v10

    .line 969
    invoke-direct {v0, v8, v6, v13}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b(III)I

    move-result v10

    add-int/2addr v10, v5

    .line 970
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int v12, v3, v6

    aget-object v11, v11, v12

    .line 971
    iget v14, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v10, v14, :cond_39

    .line 973
    iput v10, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 974
    iput v3, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 975
    add-int/lit8 v14, v8, 0x4

    iput v14, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 976
    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 979
    :cond_39
    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->t:[I

    aget v11, v11, v4

    if-ne v6, v11, :cond_3f

    .line 981
    if-ge v6, v2, :cond_3d

    .line 983
    add-int/lit8 v11, v2, -0x1

    sub-int/2addr v11, v6

    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->u:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 984
    iget-object v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    invoke-virtual {v14, v6, v8, v11}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b(III)I

    move-result v11

    .line 985
    const/4 v14, 0x2

    if-lt v11, v14, :cond_3c

    .line 987
    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->b(I)I

    move-result v15

    .line 989
    add-int v14, v22, v6

    move/from16 v16, v2

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v2, v14

    .line 990
    move/from16 p1, v5

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v17, v15, 0x4

    add-int v17, v17, v2

    aget-short v2, v5, v17

    .line 991
    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v2

    add-int/2addr v10, v2

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->s:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    move/from16 v17, v7

    add-int/lit8 v7, v6, -0x1

    move/from16 v18, v9

    add-int/lit8 v9, v7, -0x1

    .line 993
    invoke-virtual {v5, v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v5

    .line 992
    invoke-virtual {v2, v14, v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    move-result-object v2

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    add-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    move/from16 v19, v13

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    .line 995
    invoke-virtual {v5, v9}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v5

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    .line 996
    invoke-virtual {v9, v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c(I)B

    move-result v7

    .line 994
    invoke-virtual {v2, v13, v5, v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a(ZBB)I

    move-result v2

    add-int/2addr v10, v2

    .line 997
    invoke-static {v15}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->a(I)I

    move-result v2

    .line 998
    add-int/2addr v14, v13

    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v5, v14

    .line 999
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v5

    aget-short v7, v7, v9

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v7

    add-int/2addr v10, v7

    .line 1000
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    aget-short v7, v7, v2

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v7

    add-int/2addr v10, v7

    .line 1002
    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, v11

    move/from16 v9, v18

    .line 1003
    :goto_21
    add-int v13, v3, v7

    if-ge v9, v13, :cond_3a

    .line 1004
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v13, v13, v9

    const v14, 0xfffffff

    iput v14, v13, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    goto :goto_21

    .line 1005
    :cond_3a
    const v14, 0xfffffff

    const/4 v7, 0x0

    invoke-direct {v0, v7, v11, v2, v5}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(IIII)I

    move-result v2

    add-int/2addr v10, v2

    .line 1006
    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->e:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;

    aget-object v2, v2, v13

    .line 1007
    iget v5, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    if-ge v10, v5, :cond_3b

    .line 1009
    iput v10, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->f:I

    .line 1010
    add-int/lit8 v12, v12, 0x1

    iput v12, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->g:I

    .line 1011
    const/4 v10, 0x0

    iput v10, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->h:I

    .line 1012
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->b:Z

    .line 1013
    iput-boolean v11, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->c:Z

    .line 1014
    iput v3, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->d:I

    .line 1015
    add-int/lit8 v8, v8, 0x4

    iput v8, v2, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$d;->e:I

    goto :goto_23

    .line 1007
    :cond_3b
    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_23

    .line 985
    :cond_3c
    move/from16 v16, v2

    move/from16 p1, v5

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v13

    const/4 v10, 0x0

    const/4 v11, 0x1

    const v14, 0xfffffff

    goto :goto_22

    .line 981
    :cond_3d
    move/from16 v16, v2

    move/from16 p1, v5

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v13

    const/4 v10, 0x0

    const/4 v11, 0x1

    const v14, 0xfffffff

    .line 1019
    :goto_22
    move/from16 v9, v18

    :goto_23
    add-int/lit8 v4, v4, 0x2

    .line 1020
    if-eq v4, v1, :cond_3e

    goto :goto_24

    :cond_3e
    move v5, v9

    goto :goto_25

    .line 979
    :cond_3f
    move/from16 v16, v2

    move/from16 p1, v5

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v13

    const/4 v10, 0x0

    const/4 v11, 0x1

    const v14, 0xfffffff

    .line 966
    :goto_24
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p1

    move/from16 v2, v16

    move/from16 v7, v17

    move/from16 v13, v19

    goto/16 :goto_20

    .line 956
    :cond_40
    const/4 v10, 0x0

    const/4 v11, 0x1

    const v14, 0xfffffff

    move v5, v9

    .line 1025
    :goto_25
    move/from16 v1, v22

    const/4 v2, 0x0

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 841
    :cond_41
    move/from16 v22, v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const v14, 0xfffffff

    move/from16 v5, p1

    const/4 v2, 0x0

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 641
    :cond_42
    const/4 v10, 0x0

    const/4 v11, 0x1

    move v9, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x4

    const/4 v14, 0x3

    goto/16 :goto_3
.end method

.method private f()V
    .locals 2

    .line 1229
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->S:Z

    if-eqz v1, :cond_0

    .line 1231
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c()V

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->S:Z

    .line 1234
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 4
    .param p1, "posState"    # I

    .line 1036
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->R:Z

    if-nez v0, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h:[S

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1040
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->i:[S

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 1041
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b:I

    .line 1043
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->q:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0, v1, v3, p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V

    .line 1045
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;->f(I)I

    move-result v0

    .line 1046
    .local v0, "lenToPosState":I
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    const/16 v3, 0x3f

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    .line 1049
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    const v2, 0x3ffffff

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(II)V

    .line 1050
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    .line 1051
    return-void
.end method

.method private g()V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a()V

    return-void
.end method

.method private g(I)V
    .locals 1
    .param p1, "nowPos"    # I

    .line 1055
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f()V

    .line 1056
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->H:I

    and-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f(I)V

    .line 1057
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c()V

    .line 1058
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d()V

    .line 1059
    return-void
.end method

.method private h()V
    .locals 0

    .line 1243
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->f()V

    .line 1244
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->g()V

    .line 1245
    return-void
.end method

.method private i()V
    .locals 13

    .line 1314
    const/4 v0, 0x4

    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    .line 1316
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(I)I

    move-result v3

    .line 1317
    .local v2, "posSlot":I
    move v2, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 1318
    .local v3, "footerBits":I
    and-int/lit8 v4, v2, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int/2addr v4, v3

    .line 1319
    .local v4, "baseVal":I
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->aa:[I

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->o:[S

    sub-int v7, v4, v2

    add-int/lit8 v7, v7, -0x1

    sub-int v8, v0, v4

    invoke-static {v6, v7, v3, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a([SIII)I

    move-result v6

    aput v6, v5, v0

    .line 1314
    .end local v2    # "posSlot":I
    .end local v3    # "footerBits":I
    .end local v4    # "baseVal":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "lenToPosState":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    .line 1326
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->n:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v4, v4, v0

    .line 1328
    .local v4, "encoder":Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;
    shl-int/lit8 v5, v0, 0x6

    .line 1329
    .local v5, "st":I
    const/4 v6, 0x0

    .local v6, "posSlot":I
    :goto_2
    iget v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->F:I

    if-ge v6, v7, :cond_1

    .line 1330
    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    add-int v8, v5, v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(I)I

    move-result v9

    aput v9, v7, v8

    .line 1329
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1331
    :cond_1
    const/16 v6, 0xe

    :goto_3
    iget v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->F:I

    if-ge v6, v7, :cond_2

    .line 1332
    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    add-int v8, v5, v6

    aget v9, v7, v8

    shr-int/lit8 v10, v6, 0x1

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v2

    shl-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1331
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1334
    :cond_2
    mul-int/lit16 v7, v0, 0x80

    .line 1336
    .local v7, "st2":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v2, :cond_3

    .line 1337
    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->C:[I

    add-int v10, v7, v8

    iget-object v11, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    add-int v12, v5, v8

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1336
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1338
    :cond_3
    :goto_5
    if-ge v8, v3, :cond_4

    .line 1339
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->C:[I

    add-int v9, v7, v8

    iget-object v10, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->B:[I

    invoke-static {v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(I)I

    move-result v11

    add-int/2addr v11, v5

    aget v10, v10, v11

    iget-object v11, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->aa:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    aput v10, v2, v9

    .line 1338
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1323
    .end local v4    # "encoder":Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;
    .end local v5    # "st":I
    .end local v6    # "posSlot":I
    .end local v7    # "st2":I
    .end local v8    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1341
    .end local v0    # "lenToPosState":I
    :cond_5
    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->ab:I

    .line 1342
    return-void
.end method

.method private j()V
    .locals 3

    .line 1346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->D:[I

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->p:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b(I)I

    move-result v2

    aput v2, v1, v0

    .line 1346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1348
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->E:I

    .line 1349
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->R:Z

    .line 1412
    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .line 1274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->S:Z

    .line 1277
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1283
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->W:[J

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->X:[J

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Y:[Z

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a([J[J[Z)V

    .line 1284
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Y:[Z

    aget-boolean v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h()V

    .line 1285
    return-void

    .line 1286
    :cond_0
    goto :goto_0

    .line 1294
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->h()V

    throw v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 1303
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Z:[B

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->G:I

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->I:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->J:I

    add-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 1304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Z:[B

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->K:I

    mul-int/lit8 v6, v0, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1306
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->Z:[B

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1307
    return-void
.end method
