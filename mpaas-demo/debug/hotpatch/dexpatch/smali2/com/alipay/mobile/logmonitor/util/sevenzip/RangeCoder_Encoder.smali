.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
.super Ljava/lang/Object;
.source "RangeCoder_Encoder.java"


# static fields
.field private static g:[I


# instance fields
.field a:Ljava/io/OutputStream;

.field b:J

.field c:I

.field d:I

.field e:I

.field f:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 124
    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->g:[I

    .line 129
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 131
    rsub-int/lit8 v1, v0, 0x9

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int v1, v2, v1

    .line 132
    .local v1, "start":I
    rsub-int/lit8 v3, v0, 0x9

    shl-int v3, v2, v3

    .line 133
    .local v3, "end":I
    move v4, v1

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 134
    sget-object v5, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->g:[I

    shl-int/lit8 v6, v0, 0x6

    sub-int v7, v3, v4

    shl-int/lit8 v7, v7, 0x6

    rsub-int/lit8 v8, v0, 0x9

    sub-int/2addr v8, v2

    ushr-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "start":I
    .end local v3    # "end":I
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2
    .param p0, "Prob"    # I

    .line 145
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->g:[I

    ushr-int/lit8 v1, p0, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static a([S)V
    .locals 2
    .param p0, "probs"    # [S

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 99
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static b(I)I
    .locals 2
    .param p0, "Prob"    # I

    .line 149
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->g:[I

    rsub-int v1, p0, 0x800

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static b(II)I
    .locals 3
    .param p0, "Prob"    # I
    .param p1, "symbol"    # I

    .line 141
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->g:[I

    sub-int v1, p0, p1

    neg-int v2, p1

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x7ff

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private f()V
    .locals 6

    .line 53
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v3, v2

    const/4 v2, 0x0

    .line 54
    .local v2, "LowHi":I
    move v2, v3

    if-nez v3, :cond_0

    const-wide v3, 0xff000000L

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f:J

    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f:J

    .line 57
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->e:I

    .line 60
    .local v0, "temp":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a:Ljava/io/OutputStream;

    add-int v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    const/16 v0, 0xff

    .line 63
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    if-nez v1, :cond_2

    .line 64
    iget-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    long-to-int v1, v3

    ushr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->e:I

    .line 66
    .end local v0    # "temp":I
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    .line 67
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    const-wide/32 v3, 0xffffff

    and-long/2addr v0, v3

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    .line 68
    return-void

    .line 63
    .restart local v0    # "temp":I
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a:Ljava/io/OutputStream;

    .line 29
    return-void
.end method

.method public final a(II)V
    .locals 6
    .param p1, "v"    # I
    .param p2, "numTotalBits"    # I

    .line 72
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 74
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 75
    ushr-int v3, p1, v0

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    .line 76
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    .line 77
    :cond_0
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 79
    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f()V

    .line 72
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a:Ljava/io/OutputStream;

    .line 24
    return-void
.end method

.method public final a([SII)V
    .locals 9
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .param p3, "symbol"    # I

    .line 104
    aget-short v0, p1, p2

    .line 105
    .local v0, "prob":I
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int v2, v2, v0

    .line 106
    .local v2, "newBound":I
    if-nez p3, :cond_0

    .line 108
    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 109
    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    int-to-short v1, v1

    aput-short v1, p1, p2

    goto :goto_0

    .line 113
    :cond_0
    iget-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    .line 114
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 115
    ushr-int/lit8 v1, v0, 0x5

    sub-int v1, v0, v1

    int-to-short v1, v1

    aput-short v1, p1, p2

    .line 117
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    if-nez v3, :cond_1

    .line 119
    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f()V

    .line 122
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f:J

    .line 34
    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b:J

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->c:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->e:I

    .line 38
    return-void
.end method

.method public final c()V
    .locals 2

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f()V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 49
    return-void
.end method

.method public final e()J
    .locals 4

    .line 88
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->d:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->f:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method
