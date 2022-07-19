.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Base;
.super Ljava/lang/Object;
.source "LZMA_Base.java"


# direct methods
.method public static final a(I)I
    .locals 1
    .param p0, "index"    # I

    .line 17
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 18
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 20
    add-int/lit8 v0, p0, -0x3

    return v0

    .line 21
    :cond_1
    add-int/lit8 v0, p0, -0x6

    return v0
.end method

.method public static final b(I)I
    .locals 1
    .param p0, "index"    # I

    .line 26
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static final c(I)I
    .locals 1
    .param p0, "index"    # I

    .line 31
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/16 v0, 0xb

    return v0
.end method

.method public static final d(I)I
    .locals 1
    .param p0, "index"    # I

    .line 36
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 v0, 0x9

    return v0

    :cond_0
    const/16 v0, 0xb

    return v0
.end method

.method public static final e(I)Z
    .locals 1
    .param p0, "index"    # I

    .line 41
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final f(I)I
    .locals 1
    .param p0, "len"    # I

    .line 56
    add-int/lit8 p0, p0, -0x2

    .line 57
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 58
    return p0

    .line 59
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
