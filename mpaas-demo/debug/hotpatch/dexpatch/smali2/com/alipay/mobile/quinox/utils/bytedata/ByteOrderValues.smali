.class public final Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;
.super Ljava/lang/Object;
.source "ByteOrderValues.java"


# static fields
.field public static final BIG_ENDIAN:I = 0x1

.field public static final LITTLE_ENDIAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getBoolean([B)Z
    .locals 2
    .param p0, "buf"    # [B

    .line 17
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getByte([B)B
    .locals 1
    .param p0, "buf"    # [B

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getByte([BI)B

    move-result v0

    return v0
.end method

.method public static getByte([BI)B
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 29
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static getDouble([B)D
    .locals 2
    .param p0, "buf"    # [B

    .line 167
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble([BI)D
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 171
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getLong([BI)J

    move-result-wide v0

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat([B)F
    .locals 1
    .param p0, "buf"    # [B

    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getFloat([BI)F

    move-result v0

    return v0
.end method

.method public static getFloat([BI)F
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 105
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getInt([BI)I

    move-result v0

    .line 106
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getInt([B)I
    .locals 1
    .param p0, "buf"    # [B

    .line 67
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public static getInt([BI)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 72
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 76
    :cond_0
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static getLong([B)J
    .locals 2
    .param p0, "buf"    # [B

    .line 145
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BI)J
    .locals 16
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 149
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, 0x3

    const/16 v6, 0x20

    const/4 v7, 0x4

    const/16 v8, 0x28

    const/4 v9, 0x5

    const/16 v10, 0x30

    const/4 v11, 0x6

    const/16 v12, 0x38

    const/4 v14, 0x1

    move/from16 v15, p1

    if-ne v15, v14, :cond_0

    .line 150
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v1, v0

    shl-long v0, v1, v12

    aget-byte v2, p0, v14

    and-int/lit16 v2, v2, 0xff

    int-to-long v13, v2

    shl-long v12, v13, v10

    or-long/2addr v0, v12

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v9

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v11

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0

    .line 157
    :cond_0
    const/4 v2, 0x7

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    shl-long/2addr v1, v12

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    shl-long v10, v11, v10

    or-long/2addr v1, v10

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    shl-long v8, v9, v8

    or-long/2addr v1, v8

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    shl-long v6, v7, v6

    or-long/2addr v1, v6

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, p0, v14

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static getShort([B)S
    .locals 1
    .param p0, "buf"    # [B

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getShort([BI)S

    move-result v0

    return v0
.end method

.method public static getShort([BI)S
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "byteOrder"    # I

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 46
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 48
    :cond_0
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static putBoolean(Z[B)V
    .locals 2
    .param p0, "boolValue"    # Z
    .param p1, "buf"    # [B

    .line 21
    int-to-byte v0, p0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 22
    return-void
.end method

.method public static putByte(B[B)V
    .locals 1
    .param p0, "byteValue"    # B
    .param p1, "buf"    # [B

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putByte(B[BI)V

    .line 34
    return-void
.end method

.method public static putByte(B[BI)V
    .locals 1
    .param p0, "byteValue"    # B
    .param p1, "buf"    # [B
    .param p2, "byteOrder"    # I

    .line 37
    const/4 v0, 0x0

    aput-byte p0, p1, v0

    .line 38
    return-void
.end method

.method public static putDouble(D[B)V
    .locals 1
    .param p0, "doubleValue"    # D
    .param p2, "buf"    # [B

    .line 176
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putDouble(D[BI)V

    .line 177
    return-void
.end method

.method public static putDouble(D[BI)V
    .locals 2
    .param p0, "doubleValue"    # D
    .param p2, "buf"    # [B
    .param p3, "byteOrder"    # I

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 181
    invoke-static {v0, v1, p2, p3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putLong(J[BI)V

    .line 182
    return-void
.end method

.method public static putFloat(F[B)V
    .locals 1
    .param p0, "floatValue"    # F
    .param p1, "buf"    # [B

    .line 110
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putFloat(F[BI)V

    .line 111
    return-void
.end method

.method public static putFloat(F[BI)V
    .locals 1
    .param p0, "floatValue"    # F
    .param p1, "buf"    # [B
    .param p2, "byteOrder"    # I

    .line 114
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 115
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putInt(I[BI)V

    .line 116
    return-void
.end method

.method public static putInt(I[B)V
    .locals 1
    .param p0, "intValue"    # I
    .param p1, "buf"    # [B

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putInt(I[BI)V

    .line 84
    return-void
.end method

.method public static putInt(I[BI)V
    .locals 5
    .param p0, "intValue"    # I
    .param p1, "buf"    # [B
    .param p2, "byteOrder"    # I

    .line 87
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 88
    shr-int/lit8 v4, p0, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 89
    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 90
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 91
    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void

    .line 93
    :cond_0
    int-to-byte v4, p0

    aput-byte v4, p1, v2

    .line 94
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 95
    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 96
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 98
    return-void
.end method

.method public static putLong(J[B)V
    .locals 1
    .param p0, "longValue"    # J
    .param p2, "buf"    # [B

    .line 119
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putLong(J[BI)V

    .line 120
    return-void
.end method

.method public static putLong(J[BI)V
    .locals 16
    .param p0, "longValue"    # J
    .param p2, "buf"    # [B
    .param p3, "byteOrder"    # I

    .line 123
    move-wide/from16 v0, p0

    const/16 v2, 0x38

    const/16 v4, 0x30

    const/16 v6, 0x28

    const/4 v7, 0x5

    const/16 v8, 0x20

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v3, 0x1

    move/from16 v5, p3

    if-ne v5, v3, :cond_0

    .line 124
    shr-long v9, v0, v2

    long-to-int v2, v9

    int-to-byte v2, v2

    aput-byte v2, p2, v15

    .line 125
    shr-long v9, v0, v4

    long-to-int v2, v9

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    .line 126
    shr-long v2, v0, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v13

    .line 127
    shr-long v2, v0, v8

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v11

    .line 128
    const/16 v2, 0x18

    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x4

    aput-byte v2, p2, v3

    .line 129
    shr-long v2, v0, v12

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v7

    .line 130
    shr-long v2, v0, v14

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x6

    aput-byte v2, p2, v3

    .line 131
    long-to-int v2, v0

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, p2, v3

    return-void

    .line 133
    :cond_0
    long-to-int v9, v0

    int-to-byte v9, v9

    aput-byte v9, p2, v15

    .line 134
    shr-long v9, v0, v14

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, p2, v3

    .line 135
    shr-long v9, v0, v12

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, p2, v13

    .line 136
    const/16 v3, 0x18

    shr-long v9, v0, v3

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, p2, v11

    .line 137
    shr-long v8, v0, v8

    long-to-int v3, v8

    int-to-byte v3, v3

    const/4 v8, 0x4

    aput-byte v3, p2, v8

    .line 138
    shr-long v8, v0, v6

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, p2, v7

    .line 139
    shr-long v3, v0, v4

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x6

    aput-byte v3, p2, v4

    .line 140
    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x7

    aput-byte v2, p2, v3

    .line 142
    return-void
.end method

.method public static putShort(S[B)V
    .locals 1
    .param p0, "shortValue"    # S
    .param p1, "buf"    # [B

    .line 53
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putShort(S[BI)V

    .line 54
    return-void
.end method

.method public static putShort(S[BI)V
    .locals 3
    .param p0, "shortValue"    # S
    .param p1, "buf"    # [B
    .param p2, "byteOrder"    # I

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 58
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 59
    int-to-byte v0, p0

    aput-byte v0, p1, v1

    return-void

    .line 61
    :cond_0
    int-to-byte v2, p0

    aput-byte v2, p1, v0

    .line 62
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 64
    return-void
.end method
