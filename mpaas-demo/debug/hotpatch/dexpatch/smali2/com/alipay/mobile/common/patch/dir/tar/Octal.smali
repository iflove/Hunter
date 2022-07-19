.class public Lcom/alipay/mobile/common/patch/dir/tar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    .line 62
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 63
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 64
    add-int v0, p3, p4

    return v0
.end method

.method public static getLongOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 69
    add-int/lit8 v0, p4, 0x1

    new-array v0, v0, [B

    .line 70
    .local v0, "temp":[B
    add-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    .line 71
    invoke-static {v0, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int v1, p3, p4

    return v1
.end method

.method public static getOctalBytes(J[BII)I
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 35
    add-int/lit8 v0, p4, -0x1

    .line 37
    .local v0, "idx":I
    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    const/16 v1, 0x30

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-nez v5, :cond_0

    .line 43
    add-int v3, p3, v0

    aput-byte v1, p2, v3

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 46
    :cond_0
    move-wide v5, p0

    .local v5, "val":J
    :goto_0
    if-ltz v0, :cond_1

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 47
    add-int v7, p3, v0

    const-wide/16 v8, 0x7

    and-long/2addr v8, v5

    long-to-int v9, v8

    int-to-byte v8, v9

    add-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 48
    const/4 v7, 0x3

    shr-long/2addr v5, v7

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    .end local v5    # "val":J
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 53
    add-int v1, p3, v0

    aput-byte v2, p2, v1

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 56
    :cond_2
    add-int v1, p3, p4

    return v1
.end method

.method public static parseOctal([BII)J
    .locals 9
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .local v0, "result":J
    const/4 v2, 0x1

    .line 9
    .local v2, "stillPadding":Z
    add-int v3, p1, p2

    .line 10
    .local v3, "end":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 11
    aget-byte v5, p0, v4

    if-eqz v5, :cond_3

    .line 15
    aget-byte v5, p0, v4

    const/16 v6, 0x30

    const/16 v7, 0x20

    if-eq v5, v7, :cond_0

    aget-byte v5, p0, v4

    if-ne v5, v6, :cond_1

    .line 16
    :cond_0
    if-nez v2, :cond_2

    .line 20
    aget-byte v5, p0, v4

    if-eq v5, v7, :cond_3

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 27
    const/4 v5, 0x3

    shl-long v7, v0, v5

    aget-byte v5, p0, v4

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v7, v5

    move-wide v0, v7

    .line 10
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v4    # "i":I
    :cond_3
    return-wide v0
.end method
