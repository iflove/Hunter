.class final Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;
.super Ljava/lang/Object;
.source "LZMA_Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;
    }
.end annotation


# instance fields
.field a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->e:Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IB)Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "prevByte"    # B

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->d:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->b:I

    shl-int/2addr v1, v2

    and-int/lit16 v3, p2, 0xff

    rsub-int/lit8 v2, v2, 0x8

    ushr-int v2, v3, v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 156
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->b:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 157
    .local v0, "numStates":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;->a()V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 4
    .param p1, "numPosBits"    # I
    .param p2, "numPrevBits"    # I

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->b:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->c:I

    if-ne v0, p1, :cond_0

    .line 144
    return-void

    .line 145
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->c:I

    .line 146
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->d:I

    .line 147
    iput p2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->b:I

    .line 148
    add-int v1, p2, p1

    shl-int/2addr v0, v1

    .line 149
    .local v0, "numStates":I
    new-array v1, v0, [Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;->a:[Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c$a;-><init>(Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder$c;)V

    aput-object v3, v2, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
