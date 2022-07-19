.class final Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;
.super Ljava/lang/Object;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[S

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->b:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    return-void
.end method


# virtual methods
.method public final a(ZBB)I
    .locals 7
    .param p1, "matchMode"    # Z
    .param p2, "matchByte"    # B
    .param p3, "symbol"    # B

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "price":I
    const/4 v1, 0x1

    .line 110
    .local v1, "context":I
    const/4 v2, 0x7

    .line 111
    .local v2, "i":I
    if-eqz p1, :cond_1

    .line 113
    :goto_0
    if-ltz v2, :cond_1

    .line 115
    shr-int v3, p2, v2

    and-int/lit8 v3, v3, 0x1

    .line 116
    .local v3, "matchBit":I
    shr-int v4, p3, v2

    and-int/lit8 v4, v4, 0x1

    .line 117
    .local v4, "bit":I
    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v1

    aget-short v5, v5, v6

    invoke-static {v5, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 118
    shl-int/lit8 v5, v1, 0x1

    or-int v1, v5, v4

    .line 119
    if-eq v3, v4, :cond_0

    .line 121
    add-int/lit8 v2, v2, -0x1

    .line 122
    goto :goto_1

    .line 113
    .end local v3    # "matchBit":I
    .end local v4    # "bit":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 126
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 128
    shr-int v3, p3, v2

    and-int/lit8 v3, v3, 0x1

    .line 129
    .local v3, "bit":I
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 130
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v3

    .line 126
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 132
    :cond_2
    return v0
.end method

.method public final a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;B)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "symbol"    # B

    .line 78
    const/4 v0, 0x1

    .line 79
    .local v0, "context":I
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 81
    shr-int v2, p2, v1

    and-int/lit8 v2, v2, 0x1

    .line 82
    .local v2, "bit":I
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    invoke-virtual {p1, v3, v0, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 83
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 79
    .end local v2    # "bit":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;BB)V
    .locals 8
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "matchByte"    # B
    .param p3, "symbol"    # B

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "context":I
    const/4 v1, 0x1

    .line 91
    .local v1, "same":Z
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 93
    shr-int v3, p3, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    .line 94
    .local v3, "bit":I
    move v5, v0

    .line 95
    .local v5, "state":I
    if-eqz v1, :cond_1

    .line 97
    shr-int v6, p2, v2

    and-int/2addr v6, v4

    .line 98
    .local v6, "matchBit":I
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    .line 99
    if-ne v6, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    .line 101
    .end local v6    # "matchBit":I
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a:[S

    invoke-virtual {p1, v4, v5, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 102
    shl-int/lit8 v4, v0, 0x1

    or-int v0, v4, v3

    .line 91
    .end local v3    # "bit":I
    .end local v5    # "state":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
