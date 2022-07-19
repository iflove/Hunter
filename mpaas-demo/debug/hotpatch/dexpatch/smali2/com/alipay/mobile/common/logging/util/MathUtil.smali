.class public Lcom/alipay/mobile/common/logging/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToByteBigEndian(I)[B
    .locals 4
    .param p0, "number"    # I

    .line 51
    move v0, p0

    .line 52
    .local v0, "tmp":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 53
    .local v1, "array":[B
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 54
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 55
    shr-int/lit8 v0, v0, 0x8

    .line 53
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static intToByteLittleEndian(I)[B
    .locals 5
    .param p0, "number"    # I

    .line 38
    move v0, p0

    .line 39
    .local v0, "tmp":I
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 40
    .local v2, "array":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 41
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 42
    shr-int/lit8 v0, v0, 0x8

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static longToByteBigEndian(J)[B
    .locals 7
    .param p0, "number"    # J

    .line 25
    move-wide v0, p0

    .line 26
    .local v0, "tmp":J
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 27
    .local v3, "array":[B
    const/4 v4, 0x7

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 28
    const-wide/16 v5, 0xff

    and-long/2addr v5, v0

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v3, v4

    .line 29
    shr-long/2addr v0, v2

    .line 27
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 31
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public static longToByteLittleEndian(J)[B
    .locals 7
    .param p0, "number"    # J

    .line 12
    move-wide v0, p0

    .line 13
    .local v0, "tmp":J
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 14
    .local v3, "array":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    const-wide/16 v5, 0xff

    and-long/2addr v5, v0

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v3, v4

    .line 16
    shr-long/2addr v0, v2

    .line 14
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public static shortToByteBigEndian(S)[B
    .locals 4
    .param p0, "number"    # S

    .line 77
    move v0, p0

    .line 78
    .local v0, "tmp":I
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 79
    .local v1, "array":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 80
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 81
    shr-int/lit8 v0, v0, 0x8

    .line 79
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static shortToByteLittleEndian(S)[B
    .locals 5
    .param p0, "number"    # S

    .line 64
    move v0, p0

    .line 65
    .local v0, "tmp":I
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 66
    .local v2, "array":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 67
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 68
    shr-int/lit8 v0, v0, 0x8

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method
