.class Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;
.super Ljava/lang/Object;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[S

.field b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

.field c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

.field d:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

.field final synthetic e:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V
    .locals 5
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->e:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    .line 168
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    .line 169
    new-array v1, v0, [Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    .line 170
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->d:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    .line 175
    const/4 v1, 0x0

    .local v1, "posState":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "posState":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "numPosStates"    # I

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([S)V

    .line 186
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a()V

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a()V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "posState":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->d:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a()V

    .line 192
    return-void
.end method

.method public final a(II[II)V
    .locals 9
    .param p1, "posState"    # I
    .param p2, "numSymbols"    # I
    .param p3, "prices"    # [I
    .param p4, "st"    # I

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v0

    .line 221
    .local v0, "a0":I
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v2

    move v3, v1

    .line 222
    .local v3, "a1":I
    move v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    const/4 v5, 0x1

    aget-short v4, v4, v5

    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 223
    .local v2, "b0":I
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    aget-short v4, v4, v5

    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->b(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 225
    .local v1, "i":I
    .local v4, "b1":I
    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    .line 227
    if-lt v1, p2, :cond_0

    .line 228
    return-void

    .line 229
    :cond_0
    add-int v5, p4, v1

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(I)I

    move-result v6

    add-int/2addr v6, v0

    aput v6, p3, v5

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    :goto_1
    const/16 v6, 0x10

    if-ge v1, v6, :cond_3

    .line 233
    if-lt v1, p2, :cond_2

    .line 234
    return-void

    .line 235
    :cond_2
    add-int v6, p4, v1

    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v7, v7, p1

    add-int/lit8 v8, v1, -0x8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(I)I

    move-result v7

    add-int/2addr v7, v2

    aput v7, p3, v6

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_3
    :goto_2
    if-ge v1, p2, :cond_4

    .line 238
    add-int v6, p4, v1

    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->d:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    add-int/lit8 v8, v1, -0x8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(I)I

    move-result v7

    add-int/2addr v7, v4

    aput v7, p3, v6

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    :cond_4
    return-void
.end method

.method public a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I

    .line 196
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    invoke-virtual {p1, v0, v1, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->b:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    return-void

    .line 203
    :cond_0
    add-int/lit8 p2, p2, -0x8

    .line 204
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 205
    if-ge p2, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    invoke-virtual {p1, v0, v3, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->c:[Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a:[S

    invoke-virtual {p1, v0, v3, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;->a([SII)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->d:Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;

    add-int/lit8 v1, p2, -0x8

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_BitTreeEncoder;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;I)V

    .line 216
    return-void
.end method
