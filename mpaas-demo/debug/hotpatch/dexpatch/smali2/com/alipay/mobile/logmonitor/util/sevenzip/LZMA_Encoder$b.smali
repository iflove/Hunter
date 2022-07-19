.class final Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;
.super Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field f:[I

.field g:I

.field h:[I

.field final synthetic i:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->i:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V

    .line 246
    const/16 v0, 0x1100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->f:[I

    .line 248
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->h:[I

    return-void
.end method

.method private d(I)V
    .locals 3
    .param p1, "posState"    # I

    .line 259
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->g:I

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->f:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->a(II[II)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->h:[I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->g:I

    aput v1, v0, p1

    .line 261
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "posState"    # I

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->f:[I

    mul-int/lit16 v1, p2, 0x110

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V
    .locals 2
    .param p1, "rangeEncoder"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$a;->a(Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Encoder;II)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->h:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p3

    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0, p3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->d(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "tableSize"    # I

    .line 250
    iput p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->g:I

    return-void
.end method

.method public final c(I)V
    .locals 1
    .param p1, "numPosStates"    # I

    .line 265
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$b;->d(I)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "posState":I
    :cond_0
    return-void
.end method
