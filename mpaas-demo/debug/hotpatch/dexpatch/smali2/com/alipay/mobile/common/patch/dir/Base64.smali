.class public final Lcom/alipay/mobile/common/patch/dir/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    .line 32
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 39
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 41
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 42
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 45
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 46
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 49
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 50
    const/16 v3, 0x2f

    const/16 v4, 0x3f

    aput-byte v4, v0, v3

    .line 52
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    const/16 v5, 0x19

    if-gt v0, v5, :cond_4

    .line 53
    sget-object v5, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v6, v0, 0x41

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 56
    .end local v0    # "i":I
    :cond_4
    const/16 v0, 0x1a

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    const/16 v6, 0x33

    if-gt v0, v6, :cond_5

    .line 57
    sget-object v6, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v7, v5, 0x61

    int-to-char v7, v7

    aput-char v7, v6, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 60
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_5
    const/16 v0, 0x34

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_6

    .line 61
    sget-object v6, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v7, v5, 0x30

    int-to-char v7, v7

    aput-char v7, v6, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 63
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aput-char v1, v0, v2

    .line 64
    aput-char v3, v0, v4

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)I
    .locals 5
    .param p0, "data"    # [C

    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 291
    .local v0, "newSize":I
    array-length v1, p0

    .line 292
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 293
    aget-char v3, p0, v2

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/Base64;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "newSize":I
    .local v3, "newSize":I
    aget-char v4, p0, v2

    aput-char v4, p0, v0

    move v0, v3

    .line 292
    .end local v3    # "newSize":I
    .restart local v0    # "newSize":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private static a(C)Z
    .locals 1
    .param p0, "octect"    # C

    .line 69
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static b(C)Z
    .locals 1
    .param p0, "octect"    # C

    .line 73
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(C)Z
    .locals 2
    .param p0, "octect"    # C

    .line 77
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 20
    .param p0, "encoded"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 187
    return-object v0

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v2, v0

    .line 192
    .local v2, "base64Data":[C
    move-object v2, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/Base64;->a([C)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    .line 194
    .local v4, "len":I
    move v4, v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 195
    return-object v0

    .line 198
    :cond_1
    div-int/lit8 v1, v4, 0x4

    move v5, v3

    .line 200
    .local v5, "numberQuadruple":I
    move v5, v1

    if-nez v1, :cond_2

    .line 201
    new-array v0, v3, [B

    return-object v0

    .line 200
    :cond_2
    move v1, v3

    .local v1, "b2":B
    move-object v6, v0

    .local v6, "decodedData":[B
    move v7, v3

    .local v7, "d4":C
    move v8, v3

    .local v8, "b4":B
    move v9, v3

    .local v9, "d1":C
    move v10, v3

    .local v10, "d3":C
    move v11, v3

    .local v11, "d2":C
    move v12, v3

    .local v12, "b3":B
    move v13, v3

    .line 208
    .local v13, "b1":B
    const/4 v14, 0x0

    .line 209
    .local v14, "i":I
    const/4 v15, 0x0

    .line 210
    .local v15, "encodedIndex":I
    const/16 v16, 0x0

    .line 211
    .local v16, "dataIndex":I
    mul-int/lit8 v3, v5, 0x3

    new-array v3, v3, [B

    .line 213
    .end local v6    # "decodedData":[B
    .local v3, "decodedData":[B
    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-ge v14, v6, :cond_6

    .line 215
    add-int/lit8 v6, v16, 0x1

    .end local v16    # "dataIndex":I
    .local v6, "dataIndex":I
    aget-char v16, v2, v16

    move/from16 v9, v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v16

    if-eqz v16, :cond_5

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    aget-char v6, v2, v6

    move v11, v6

    .line 216
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v16, 0x1

    .end local v16    # "dataIndex":I
    .restart local v6    # "dataIndex":I
    aget-char v16, v2, v16

    move/from16 v10, v16

    .line 217
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v16

    if-eqz v16, :cond_5

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    aget-char v6, v2, v6

    move v7, v6

    .line 218
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v6

    if-nez v6, :cond_3

    move/from16 v6, v16

    goto :goto_1

    .line 222
    :cond_3
    sget-object v6, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v13, v6, v9

    .line 223
    aget-byte v1, v6, v11

    .line 224
    aget-byte v12, v6, v10

    .line 225
    aget-byte v8, v6, v7

    .line 227
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v6, "encodedIndex":I
    shl-int/lit8 v18, v13, 0x2

    shr-int/lit8 v19, v1, 0x4

    or-int v0, v18, v19

    int-to-byte v0, v0

    aput-byte v0, v3, v15

    .line 228
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "encodedIndex":I
    .local v0, "encodedIndex":I
    and-int/lit8 v15, v1, 0xf

    shl-int/lit8 v15, v15, 0x4

    shr-int/lit8 v18, v12, 0x2

    and-int/lit8 v18, v18, 0xf

    or-int v15, v15, v18

    int-to-byte v15, v15

    aput-byte v15, v3, v6

    .line 229
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "encodedIndex":I
    .restart local v15    # "encodedIndex":I
    shl-int/lit8 v6, v12, 0x6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 213
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_4
    move/from16 v6, v16

    .line 219
    .end local v16    # "dataIndex":I
    .local v6, "dataIndex":I
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 232
    .end local v6    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    :cond_6
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "dataIndex":I
    .local v0, "dataIndex":I
    aget-char v6, v2, v16

    move v9, v6

    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v6

    if-eqz v6, :cond_e

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "dataIndex":I
    .restart local v6    # "dataIndex":I
    aget-char v0, v2, v0

    move v11, v0

    .line 233
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v18, v2

    move v0, v6

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 237
    :cond_7
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v13, v0, v9

    .line 238
    aget-byte v1, v0, v11

    .line 240
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    aget-char v6, v2, v6

    .line 241
    .end local v10    # "d3":C
    .local v6, "d3":C
    aget-char v7, v2, v16

    .line 242
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Base64;->c(C)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_2

    .line 267
    :cond_8
    aget-byte v10, v0, v6

    .line 268
    .end local v12    # "b3":B
    .local v10, "b3":B
    aget-byte v0, v0, v7

    .line 269
    .end local v8    # "b4":B
    .local v0, "b4":B
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v8, "encodedIndex":I
    shl-int/lit8 v12, v13, 0x2

    shr-int/lit8 v17, v1, 0x4

    or-int v12, v12, v17

    int-to-byte v12, v12

    aput-byte v12, v3, v15

    .line 270
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "encodedIndex":I
    .local v12, "encodedIndex":I
    and-int/lit8 v15, v1, 0xf

    shl-int/lit8 v15, v15, 0x4

    shr-int/lit8 v17, v10, 0x2

    and-int/lit8 v17, v17, 0xf

    or-int v15, v15, v17

    int-to-byte v15, v15

    aput-byte v15, v3, v8

    .line 271
    shl-int/lit8 v8, v10, 0x6

    or-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v3, v12

    .line 275
    return-object v3

    .line 243
    .end local v0    # "b4":B
    .end local v10    # "b3":B
    .local v8, "b4":B
    .local v12, "b3":B
    .restart local v15    # "encodedIndex":I
    :cond_9
    :goto_2
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 244
    and-int/lit8 v0, v1, 0xf

    if-eqz v0, :cond_a

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_a
    mul-int/lit8 v0, v14, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 249
    .local v0, "tmp":[B
    mul-int/lit8 v10, v14, 0x3

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "base64Data":[C
    .local v18, "base64Data":[C
    invoke-static {v3, v2, v0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    shl-int/lit8 v2, v13, 0x2

    shr-int/lit8 v10, v1, 0x4

    or-int/2addr v2, v10

    int-to-byte v2, v2

    aput-byte v2, v0, v15

    .line 251
    return-object v0

    .line 243
    .end local v0    # "tmp":[B
    .end local v18    # "base64Data":[C
    .restart local v2    # "base64Data":[C
    :cond_b
    move-object/from16 v18, v2

    .line 252
    .end local v2    # "base64Data":[C
    .restart local v18    # "base64Data":[C
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 253
    aget-byte v0, v0, v6

    .line 254
    move v2, v0

    .end local v12    # "b3":B
    .local v2, "b3":B
    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_c

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_c
    mul-int/lit8 v0, v14, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 259
    .restart local v0    # "tmp":[B
    mul-int/lit8 v10, v14, 0x3

    const/4 v12, 0x0

    invoke-static {v3, v12, v0, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    add-int/lit8 v10, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v10, "encodedIndex":I
    shl-int/lit8 v12, v13, 0x2

    shr-int/lit8 v17, v1, 0x4

    or-int v12, v12, v17

    int-to-byte v12, v12

    aput-byte v12, v0, v15

    .line 261
    and-int/lit8 v12, v1, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v0, v10

    .line 262
    return-object v0

    .line 264
    .end local v0    # "tmp":[B
    .end local v2    # "b3":B
    .end local v10    # "encodedIndex":I
    .restart local v12    # "b3":B
    .restart local v15    # "encodedIndex":I
    :cond_d
    const/4 v2, 0x0

    return-object v2

    .line 232
    .end local v6    # "d3":C
    .end local v16    # "dataIndex":I
    .end local v18    # "base64Data":[C
    .local v0, "dataIndex":I
    .local v2, "base64Data":[C
    .local v10, "d3":C
    :cond_e
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 234
    .end local v2    # "base64Data":[C
    .restart local v18    # "base64Data":[C
    :goto_3
    return-object v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 20
    .param p0, "binaryData"    # [B

    .line 88
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 92
    :cond_0
    array-length v2, v0

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    const/4 v4, 0x0

    move v5, v4

    .line 93
    .local v5, "lengthDataBits":I
    move v5, v2

    if-nez v2, :cond_1

    .line 94
    const-string v1, ""

    return-object v1

    .line 97
    :cond_1
    rem-int/lit8 v2, v5, 0x18

    .line 98
    .local v2, "fewerThan24bits":I
    div-int/lit8 v6, v5, 0x18

    .line 99
    .local v6, "numberTriplets":I
    if-eqz v2, :cond_2

    add-int/lit8 v7, v6, 0x1

    goto :goto_0

    :cond_2
    move v7, v6

    .line 103
    .local v1, "encodedData":[C
    :goto_0
    mul-int/lit8 v7, v7, 0x4

    new-array v1, v7, [C

    move v7, v4

    .local v7, "l":B
    move v8, v4

    .local v8, "b2":B
    move v9, v4

    .local v9, "b3":B
    move v10, v4

    .line 107
    .local v4, "k":B
    .local v10, "b1":B
    const/4 v11, 0x0

    .line 108
    .local v11, "encodedIndex":I
    const/4 v12, 0x0

    .line 113
    .local v12, "dataIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_6

    .line 114
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "dataIndex":I
    .local v14, "dataIndex":I
    aget-byte v10, v0, v12

    .line 115
    add-int/lit8 v12, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v12    # "dataIndex":I
    aget-byte v8, v0, v14

    .line 116
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-byte v9, v0, v12

    .line 122
    and-int/lit8 v12, v8, 0xf

    int-to-byte v7, v12

    .line 123
    and-int/lit8 v12, v10, 0x3

    int-to-byte v4, v12

    .line 125
    and-int/lit8 v12, v10, -0x80

    if-nez v12, :cond_3

    shr-int/lit8 v12, v10, 0x2

    goto :goto_2

    :cond_3
    shr-int/lit8 v12, v10, 0x2

    xor-int/lit16 v12, v12, 0xc0

    :goto_2
    int-to-byte v12, v12

    .line 127
    .local v12, "val1":B
    and-int/lit8 v15, v8, -0x80

    if-nez v15, :cond_4

    shr-int/lit8 v15, v8, 0x4

    goto :goto_3

    :cond_4
    shr-int/lit8 v15, v8, 0x4

    xor-int/lit16 v15, v15, 0xf0

    :goto_3
    int-to-byte v15, v15

    .line 129
    .local v15, "val2":B
    and-int/lit8 v16, v9, -0x80

    shr-int/lit8 v3, v9, 0x6

    if-nez v16, :cond_5

    goto :goto_4

    :cond_5
    xor-int/lit16 v3, v3, 0xfc

    :goto_4
    int-to-byte v3, v3

    .line 138
    .local v3, "val3":B
    add-int/lit8 v17, v11, 0x1

    .end local v11    # "encodedIndex":I
    .local v17, "encodedIndex":I
    sget-object v18, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v19, v18, v12

    aput-char v19, v1, v11

    .line 139
    add-int/lit8 v11, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    shl-int/lit8 v19, v4, 0x4

    or-int v19, v15, v19

    aget-char v19, v18, v19

    aput-char v19, v1, v17

    .line 140
    add-int/lit8 v17, v11, 0x1

    .end local v11    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    shl-int/lit8 v19, v7, 0x2

    or-int v19, v19, v3

    aget-char v19, v18, v19

    aput-char v19, v1, v11

    .line 141
    add-int/lit8 v11, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    and-int/lit8 v19, v9, 0x3f

    aget-char v18, v18, v19

    aput-char v18, v1, v17

    .line 113
    .end local v3    # "val3":B
    .end local v12    # "val1":B
    .end local v15    # "val2":B
    add-int/lit8 v13, v13, 0x1

    move v12, v14

    const/16 v3, 0x8

    goto :goto_1

    .line 145
    .end local v13    # "i":I
    .end local v14    # "dataIndex":I
    .local v12, "dataIndex":I
    :cond_6
    const/16 v3, 0x3d

    const/16 v13, 0x8

    if-ne v2, v13, :cond_8

    .line 146
    aget-byte v13, v0, v12

    .line 147
    move v10, v13

    and-int/lit8 v13, v13, 0x3

    int-to-byte v4, v13

    .line 152
    and-int/lit8 v13, v10, -0x80

    if-nez v13, :cond_7

    shr-int/lit8 v13, v10, 0x2

    goto :goto_5

    :cond_7
    shr-int/lit8 v13, v10, 0x2

    xor-int/lit16 v13, v13, 0xc0

    :goto_5
    int-to-byte v13, v13

    .line 154
    .local v13, "val1":B
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "encodedIndex":I
    .local v14, "encodedIndex":I
    sget-object v15, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v16, v15, v13

    aput-char v16, v1, v11

    .line 155
    add-int/lit8 v11, v14, 0x1

    .end local v14    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    shl-int/lit8 v16, v4, 0x4

    aget-char v15, v15, v16

    aput-char v15, v1, v14

    .line 156
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "encodedIndex":I
    .restart local v14    # "encodedIndex":I
    aput-char v3, v1, v11

    .line 157
    aput-char v3, v1, v14

    .line 158
    .end local v13    # "val1":B
    move v11, v14

    goto :goto_8

    .end local v14    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    :cond_8
    const/16 v13, 0x10

    if-ne v2, v13, :cond_b

    .line 159
    aget-byte v10, v0, v12

    .line 160
    add-int/lit8 v13, v12, 0x1

    aget-byte v13, v0, v13

    .line 161
    move v8, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v7, v13

    .line 162
    and-int/lit8 v13, v10, 0x3

    int-to-byte v4, v13

    .line 164
    and-int/lit8 v13, v10, -0x80

    if-nez v13, :cond_9

    shr-int/lit8 v13, v10, 0x2

    goto :goto_6

    :cond_9
    shr-int/lit8 v13, v10, 0x2

    xor-int/lit16 v13, v13, 0xc0

    :goto_6
    int-to-byte v13, v13

    .line 166
    .restart local v13    # "val1":B
    and-int/lit8 v14, v8, -0x80

    if-nez v14, :cond_a

    shr-int/lit8 v14, v8, 0x4

    goto :goto_7

    :cond_a
    shr-int/lit8 v14, v8, 0x4

    xor-int/lit16 v14, v14, 0xf0

    :goto_7
    int-to-byte v14, v14

    .line 169
    .local v14, "val2":B
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "encodedIndex":I
    .local v15, "encodedIndex":I
    sget-object v16, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v17, v16, v13

    aput-char v17, v1, v11

    .line 170
    add-int/lit8 v11, v15, 0x1

    .end local v15    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    shl-int/lit8 v17, v4, 0x4

    or-int v17, v14, v17

    aget-char v17, v16, v17

    aput-char v17, v1, v15

    .line 171
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "encodedIndex":I
    .restart local v15    # "encodedIndex":I
    shl-int/lit8 v17, v7, 0x2

    aget-char v16, v16, v17

    aput-char v16, v1, v11

    .line 172
    aput-char v3, v1, v15

    move v11, v15

    .line 175
    .end local v13    # "val1":B
    .end local v14    # "val2":B
    .end local v15    # "encodedIndex":I
    .restart local v11    # "encodedIndex":I
    :cond_b
    :goto_8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
