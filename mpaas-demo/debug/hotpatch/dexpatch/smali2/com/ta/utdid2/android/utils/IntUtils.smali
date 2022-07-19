.class public Lcom/ta/utdid2/android/utils/IntUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(I)[B
    .locals 6
    .param p0, "i"    # I

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .local v2, "value":I
    const/4 v3, 0x0

    .line 8
    .local v3, "bInt":[B
    move-object v3, v0

    rem-int/lit16 v4, p0, 0x100

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    .line 9
    shr-int/lit8 v0, p0, 0x8

    .line 10
    .end local v2    # "value":I
    .local v0, "value":I
    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    .line 11
    shr-int/lit8 v0, v0, 0x8

    .line 12
    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    .line 13
    shr-int/lit8 v0, v0, 0x8

    .line 14
    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 15
    return-object v3
.end method

.method public static getBytes([BI)[B
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "i"    # I

    .line 19
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 21
    .local v1, "value":I
    const/4 v2, 0x3

    rem-int/lit16 v3, p1, 0x100

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 22
    shr-int/lit8 v1, p1, 0x8

    .line 23
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 24
    shr-int/lit8 v1, v1, 0x8

    .line 25
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 26
    shr-int/lit8 v1, v1, 0x8

    .line 27
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 28
    return-object p0

    .line 30
    .end local v1    # "value":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
