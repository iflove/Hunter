.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;
.super Ljava/lang/Object;
.source "RangeCoder_BitTreeEncoder.java"


# instance fields
.field a:[S

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBitLevels"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b:I

    .line 12
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    .line 13
    return-void
.end method

.method public static a([SIII)I
    .locals 5
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "NumBitLevels"    # I
    .param p3, "symbol"    # I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "price":I
    const/4 v1, 0x1

    .line 77
    .local v1, "m":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-eqz v2, :cond_0

    .line 79
    and-int/lit8 v3, p3, 0x1

    .line 80
    .local v3, "bit":I
    ushr-int/lit8 p3, p3, 0x1

    .line 81
    add-int v4, p1, v1

    aget-short v4, p0, v4

    invoke-static {v4, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 82
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v3

    .line 77
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public static a([SILcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V
    .locals 4
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p3, "NumBitLevels"    # I
    .param p4, "symbol"    # I

    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 93
    and-int/lit8 v2, p4, 0x1

    .line 94
    .local v2, "bit":I
    add-int v3, p1, v0

    invoke-virtual {p2, p0, v3, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 95
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 96
    shr-int/lit8 p4, p4, 0x1

    .line 91
    .end local v2    # "bit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5
    .param p1, "symbol"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "price":I
    const/4 v1, 0x1

    .line 48
    .local v1, "m":I
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b:I

    .local v2, "bitIndex":I
    :goto_0
    if-eqz v2, :cond_0

    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    ushr-int v3, p1, v2

    and-int/lit8 v3, v3, 0x1

    .line 52
    .local v3, "bit":I
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 53
    shl-int/lit8 v4, v1, 0x1

    add-int v1, v4, v3

    .line 54
    .end local v3    # "bit":I
    goto :goto_0

    .line 55
    .end local v2    # "bitIndex":I
    :cond_0
    return v0
.end method

.method public final a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Decoder;->a([S)V

    .line 18
    return-void
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "symbol"    # I

    .line 22
    const/4 v0, 0x1

    .line 23
    .local v0, "m":I
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b:I

    .local v1, "bitIndex":I
    :goto_0
    if-eqz v1, :cond_0

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    ushr-int v2, p2, v1

    and-int/lit8 v2, v2, 0x1

    .line 27
    .local v2, "bit":I
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    invoke-virtual {p1, v3, v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 28
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 29
    .end local v2    # "bit":I
    goto :goto_0

    .line 30
    .end local v1    # "bitIndex":I
    :cond_0
    return-void
.end method

.method public final b(I)I
    .locals 5
    .param p1, "symbol"    # I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "price":I
    const/4 v1, 0x1

    .line 62
    .local v1, "m":I
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b:I

    .local v2, "i":I
    :goto_0
    if-eqz v2, :cond_0

    .line 64
    and-int/lit8 v3, p1, 0x1

    .line 65
    .local v3, "bit":I
    ushr-int/lit8 p1, p1, 0x1

    .line 66
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 67
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v3

    .line 62
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public final b(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "symbol"    # I

    .line 34
    const/4 v0, 0x1

    .line 35
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->b:I

    if-ge v1, v2, :cond_0

    .line 37
    and-int/lit8 v2, p2, 0x1

    .line 38
    .local v2, "bit":I
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a:[S

    invoke-virtual {p1, v3, v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 39
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 40
    shr-int/lit8 p2, p2, 0x1

    .line 35
    .end local v2    # "bit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
