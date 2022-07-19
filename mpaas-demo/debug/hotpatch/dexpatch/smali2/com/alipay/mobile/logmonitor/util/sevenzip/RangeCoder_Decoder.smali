.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/RangeCoder_Decoder;
.super Ljava/lang/Object;
.source "RangeCoder_Decoder.java"


# direct methods
.method public static a([S)V
    .locals 2
    .param p0, "probs"    # [S

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 86
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
