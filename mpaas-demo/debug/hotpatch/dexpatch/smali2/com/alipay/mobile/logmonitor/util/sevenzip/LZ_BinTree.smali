.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;
.super Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;
.source "LZ_BinTree.java"


# static fields
.field private static final x:[I


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[I

.field e:[I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:I

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 367
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->x:[I

    .line 371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 373
    move v2, v1

    .line 374
    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 375
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 376
    ushr-int/lit8 v4, v2, 0x1

    const v5, -0x12477ce0

    xor-int v2, v4, v5

    goto :goto_2

    .line 378
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    .line 374
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->x:[I

    aput v2, v3, v1

    .line 371
    .end local v2    # "r":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    .line 16
    const/16 v1, 0xff

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->f:I

    .line 18
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->h:I

    .line 20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    .line 30
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->k:I

    .line 32
    const v0, 0x10400

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    return-void
.end method

.method private static a([III)V
    .locals 3
    .param p0, "items"    # [I
    .param p1, "numItems"    # I
    .param p2, "subValue"    # I

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 348
    aget v2, p0, v0

    .line 349
    .local v1, "value":I
    move v1, v2

    if-gt v2, p2, :cond_0

    .line 350
    const/4 v1, 0x0

    goto :goto_1

    .line 352
    :cond_0
    sub-int/2addr v1, p2

    .line 353
    :goto_1
    aput v1, p0, v0

    .line 346
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .line 359
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    sub-int/2addr v0, v1

    .line 360
    .local v0, "subValue":I
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a([III)V

    .line 361
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->h:I

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a([III)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d(I)V

    .line 363
    return-void
.end method


# virtual methods
.method public final a([I)I
    .locals 23
    .param p1, "distances"    # [I

    .line 121
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->w:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    .line 122
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c:I

    .local v1, "lenLimit":I
    goto :goto_0

    .line 125
    .end local v1    # "lenLimit":I
    :cond_0
    iget v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->w:I

    iget v2, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v1, v2

    move v2, v3

    .line 126
    .local v2, "lenLimit":I
    move v2, v1

    iget v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->k:I

    if-ge v1, v4, :cond_1

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b()V

    .line 129
    return v3

    .line 126
    :cond_1
    move v1, v2

    .line 133
    .end local v2    # "lenLimit":I
    .restart local v1    # "lenLimit":I
    :goto_0
    const/4 v2, 0x0

    .line 134
    .local v2, "offset":I
    iget v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    if-le v4, v5, :cond_2

    iget v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 135
    .local v4, "matchMinPos":I
    :goto_1
    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    add-int/2addr v5, v6

    .line 136
    .local v5, "cur":I
    const/4 v6, 0x1

    .line 137
    .local v6, "maxLen":I
    const/4 v7, 0x0

    .local v7, "hash2Value":I
    const/4 v8, 0x0

    .line 139
    .local v8, "hash3Value":I
    iget-boolean v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    if-eqz v9, :cond_3

    .line 141
    sget-object v9, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->x:[I

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v12, v5, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    xor-int/2addr v10, v11

    move v11, v3

    .line 142
    .local v11, "temp":I
    move v11, v10

    and-int/lit16 v7, v10, 0x3ff

    .line 143
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v12, v5, 0x2

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v10, v11

    .line 144
    move v11, v10

    const v12, 0xffff

    and-int v8, v10, v12

    .line 145
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v12, v5, 0x3

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0x5

    xor-int/2addr v9, v11

    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->g:I

    and-int/2addr v9, v10

    .line 146
    .end local v11    # "temp":I
    .local v9, "hashValue":I
    goto :goto_2

    .line 148
    .end local v9    # "hashValue":I
    :cond_3
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    .line 150
    .restart local v9    # "hashValue":I
    :goto_2
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    iget v11, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    add-int/2addr v11, v9

    aget v11, v10, v11

    .line 151
    .local v11, "curMatch":I
    iget-boolean v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    if-eqz v12, :cond_7

    .line 153
    aget v12, v10, v7

    .line 154
    .local v12, "curMatch2":I
    add-int/lit16 v14, v8, 0x400

    aget v14, v10, v14

    .line 155
    .local v14, "curMatch3":I
    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v15, v10, v7

    .line 156
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    add-int/lit16 v15, v8, 0x400

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v13, v10, v15

    .line 157
    if-le v12, v4, :cond_4

    .line 158
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    add-int/2addr v13, v12

    aget-byte v10, v10, v13

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v13, v13, v5

    if-ne v10, v13, :cond_4

    .line 160
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    move v6, v10

    aput v10, p1, v3

    .line 161
    const/4 v10, 0x1

    add-int/2addr v2, v10

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v13, v12

    sub-int/2addr v13, v10

    aput v13, p1, v10

    .line 163
    :cond_4
    if-le v14, v4, :cond_6

    .line 164
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    add-int/2addr v13, v14

    aget-byte v10, v10, v13

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v13, v13, v5

    if-ne v10, v13, :cond_6

    .line 166
    if-ne v14, v12, :cond_5

    .line 167
    add-int/lit8 v2, v2, -0x2

    .line 168
    :cond_5
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "offset":I
    .local v10, "offset":I
    const/4 v13, 0x3

    move v6, v13

    aput v13, p1, v2

    .line 169
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "offset":I
    .restart local v2    # "offset":I
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v13, v14

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    aput v13, p1, v10

    .line 170
    move v12, v14

    .line 172
    :cond_6
    if-eqz v2, :cond_7

    if-ne v12, v11, :cond_7

    .line 174
    add-int/lit8 v2, v2, -0x2

    .line 175
    const/4 v6, 0x1

    .line 179
    .end local v12    # "curMatch2":I
    .end local v14    # "curMatch3":I
    :cond_7
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    add-int/2addr v12, v9

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v13, v10, v12

    .line 181
    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    shl-int/lit8 v12, v10, 0x1

    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 182
    .local v12, "ptr0":I
    shl-int/2addr v10, v13

    .line 185
    .local v10, "ptr1":I
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    move v14, v13

    .local v14, "len1":I
    move v15, v13

    .line 187
    .local v15, "len0":I
    if-eqz v13, :cond_9

    .line 189
    if-le v11, v4, :cond_8

    .line 191
    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    add-int/2addr v3, v11

    move/from16 v17, v6

    .end local v6    # "maxLen":I
    .local v17, "maxLen":I
    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    add-int/2addr v3, v6

    aget-byte v3, v13, v3

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    add-int v18, v5, v13

    aget-byte v6, v6, v18

    if-eq v3, v6, :cond_a

    .line 194
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    move v6, v13

    .end local v17    # "maxLen":I
    .restart local v6    # "maxLen":I
    aput v13, p1, v2

    .line 195
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v13, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v13, v11

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    aput v13, p1, v3

    goto :goto_4

    .line 189
    :cond_8
    move/from16 v17, v6

    .end local v6    # "maxLen":I
    .restart local v17    # "maxLen":I
    goto :goto_3

    .line 187
    .end local v17    # "maxLen":I
    .restart local v6    # "maxLen":I
    :cond_9
    move/from16 v17, v6

    .line 200
    .end local v6    # "maxLen":I
    .restart local v17    # "maxLen":I
    :cond_a
    :goto_3
    move/from16 v6, v17

    .end local v17    # "maxLen":I
    .restart local v6    # "maxLen":I
    :goto_4
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->f:I

    const/4 v13, 0x0

    .line 204
    .local v3, "count":I
    :goto_5
    if-le v11, v4, :cond_13

    add-int/lit8 v17, v3, -0x1

    .end local v3    # "count":I
    .local v17, "count":I
    if-nez v3, :cond_b

    move/from16 v18, v4

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v3, v17

    goto/16 :goto_a

    .line 209
    :cond_b
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v3, v11

    .line 210
    .local v13, "delta":I
    move v13, v3

    move/from16 v18, v4

    .end local v4    # "matchMinPos":I
    .local v18, "matchMinPos":I
    iget v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    if-gt v3, v4, :cond_c

    sub-int/2addr v4, v13

    goto :goto_6

    :cond_c
    sub-int/2addr v4, v13

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    add-int/2addr v4, v3

    :goto_6
    const/4 v3, 0x1

    shl-int/2addr v4, v3

    .line 214
    .local v4, "cyclicPos":I
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    add-int/2addr v3, v11

    .line 215
    .local v3, "pby1":I
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 216
    .local v19, "len":I
    move/from16 v20, v7

    .end local v7    # "hash2Value":I
    .local v20, "hash2Value":I
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v21, v3, v19

    aget-byte v7, v7, v21

    move/from16 v21, v8

    .end local v8    # "hash3Value":I
    .local v21, "hash3Value":I
    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v22, v5, v19

    aget-byte v8, v8, v22

    if-ne v7, v8, :cond_11

    .line 218
    :goto_7
    const/4 v7, 0x1

    add-int/lit8 v8, v19, 0x1

    .end local v19    # "len":I
    .local v8, "len":I
    if-eq v8, v1, :cond_e

    .line 219
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v19, v3, v8

    aget-byte v7, v7, v19

    move/from16 v22, v9

    .end local v9    # "hashValue":I
    .local v22, "hashValue":I
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v19, v5, v8

    aget-byte v9, v9, v19

    if-eq v7, v9, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v19, v8

    move/from16 v9, v22

    goto :goto_7

    .line 218
    .end local v22    # "hashValue":I
    .restart local v9    # "hashValue":I
    :cond_e
    move/from16 v22, v9

    .line 221
    .end local v9    # "hashValue":I
    .restart local v22    # "hashValue":I
    :goto_8
    if-ge v6, v8, :cond_10

    .line 223
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    move v6, v8

    aput v8, p1, v2

    .line 224
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v9, v13, -0x1

    aput v9, p1, v7

    .line 225
    if-ne v8, v1, :cond_f

    .line 227
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aget v9, v7, v4

    aput v9, v7, v10

    .line 228
    add-int/lit8 v9, v4, 0x1

    aget v9, v7, v9

    aput v9, v7, v12

    .line 229
    goto :goto_b

    .line 225
    :cond_f
    move/from16 v19, v8

    goto :goto_9

    .line 221
    :cond_10
    move/from16 v19, v8

    goto :goto_9

    .line 216
    .end local v8    # "len":I
    .end local v22    # "hashValue":I
    .restart local v9    # "hashValue":I
    .restart local v19    # "len":I
    :cond_11
    move/from16 v22, v9

    .line 233
    .end local v9    # "hashValue":I
    .restart local v22    # "hashValue":I
    :goto_9
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v8, v3, v19

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v9, v5, v19

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    if-ge v7, v8, :cond_12

    .line 235
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aput v11, v7, v10

    .line 236
    add-int/lit8 v10, v4, 0x1

    .line 237
    aget v11, v7, v10

    .line 238
    move/from16 v14, v19

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    goto/16 :goto_5

    .line 242
    :cond_12
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aput v11, v7, v12

    .line 243
    move v12, v4

    .line 244
    aget v11, v7, v12

    .line 245
    move/from16 v15, v19

    .line 247
    .end local v3    # "pby1":I
    .end local v4    # "cyclicPos":I
    .end local v13    # "delta":I
    .end local v19    # "len":I
    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    goto/16 :goto_5

    .line 204
    .end local v17    # "count":I
    .end local v18    # "matchMinPos":I
    .end local v20    # "hash2Value":I
    .end local v21    # "hash3Value":I
    .end local v22    # "hashValue":I
    .local v3, "count":I
    .local v4, "matchMinPos":I
    .local v7, "hash2Value":I
    .local v8, "hash3Value":I
    .restart local v9    # "hashValue":I
    :cond_13
    move/from16 v18, v4

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    .line 206
    .end local v4    # "matchMinPos":I
    .end local v7    # "hash2Value":I
    .end local v8    # "hash3Value":I
    .end local v9    # "hashValue":I
    .restart local v18    # "matchMinPos":I
    .restart local v20    # "hash2Value":I
    .restart local v21    # "hash3Value":I
    .restart local v22    # "hashValue":I
    :goto_a
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    const/4 v7, 0x0

    aput v7, v4, v10

    aput v7, v4, v12

    .line 207
    move/from16 v17, v3

    .line 248
    .end local v3    # "count":I
    .restart local v17    # "count":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b()V

    .line 249
    return v2
.end method

.method public final a()V
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->a()V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->h:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d(I)V

    .line 61
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "numHashBytes"    # I

    .line 36
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->k:I

    .line 41
    const v0, 0x10400

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    return-void

    .line 45
    :cond_1
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->k:I

    .line 47
    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    .line 49
    return-void
.end method

.method public final a(II)Z
    .locals 6
    .param p1, "historySize"    # I
    .param p2, "matchMaxLen"    # I

    .line 82
    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    shr-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->f:I

    .line 86
    add-int/lit16 v0, p1, 0x1000

    add-int/2addr v0, p2

    add-int/lit16 v0, v0, 0x112

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    .line 89
    .local v0, "windowReservSize":I
    add-int/lit16 v1, p1, 0x1000

    add-int/lit16 v2, p2, 0x112

    invoke-super {p0, v1, v2, v0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->a(III)V

    .line 91
    iput p2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c:I

    .line 93
    add-int/lit8 v1, p1, 0x1

    .line 94
    .local v1, "cyclicBufferSize":I
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    if-eq v2, v1, :cond_1

    .line 95
    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    .line 97
    :cond_1
    const/high16 v2, 0x10000

    .line 99
    .local v2, "hs":I
    iget-boolean v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 101
    add-int/lit8 v3, p1, -0x1

    .line 102
    shr-int/lit8 v5, v3, 0x1

    or-int/2addr v3, v5

    .line 103
    shr-int/lit8 v5, v3, 0x2

    or-int/2addr v3, v5

    .line 104
    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v3, v5

    .line 105
    shr-int/lit8 v5, v3, 0x8

    or-int/2addr v3, v5

    .line 106
    shr-int/2addr v3, v4

    .line 107
    const v5, 0xffff

    or-int/2addr v3, v5

    .line 108
    move v2, v3

    const/high16 v5, 0x1000000

    if-le v3, v5, :cond_2

    .line 109
    shr-int/lit8 v2, v2, 0x1

    .line 110
    :cond_2
    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->g:I

    .line 111
    add-int/2addr v2, v4

    .line 112
    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    add-int/2addr v2, v3

    .line 114
    :cond_3
    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->h:I

    if-eq v2, v3, :cond_4

    .line 115
    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->h:I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    .line 116
    :cond_4
    return v4
.end method

.method public final b()V
    .locals 2

    .line 65
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    if-lt v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->b()V

    .line 68
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e()V

    .line 70
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 18
    .param p1, "num"    # I

    move-object/from16 v0, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 257
    .end local p1    # "num":I
    .local v2, "num":I
    :goto_0
    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c:I

    add-int/2addr v14, v15

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->w:I

    if-gt v14, v15, :cond_0

    .line 258
    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->c:I

    .local v3, "lenLimit":I
    goto :goto_1

    .line 261
    .end local v3    # "lenLimit":I
    :cond_0
    iget v14, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->w:I

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v14, v15

    .line 262
    .restart local v3    # "lenLimit":I
    move v3, v14

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->k:I

    if-lt v14, v15, :cond_b

    .line 269
    :goto_1
    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    if-le v5, v6, :cond_1

    iget v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 270
    .local v5, "matchMinPos":I
    :goto_2
    iget v6, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    add-int/2addr v6, v7

    .line 274
    .local v6, "cur":I
    iget-boolean v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->i:Z

    if-eqz v7, :cond_2

    .line 276
    sget-object v7, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->x:[I

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    .line 277
    .local v4, "temp":I
    move v4, v8

    and-int/lit16 v8, v8, 0x3ff

    .line 278
    .local v8, "hash2Value":I
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v10, v9, v8

    .line 279
    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v10, v6, 0x2

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v9, v4

    .line 280
    move v4, v9

    const v10, 0xffff

    and-int/2addr v9, v10

    .line 281
    .local v9, "hash3Value":I
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    add-int/lit16 v11, v9, 0x400

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v12, v10, v11

    .line 282
    iget-object v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x5

    xor-int/2addr v7, v4

    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->g:I

    and-int v4, v7, v10

    .line 283
    .end local v8    # "hash2Value":I
    .end local v9    # "hash3Value":I
    .local v4, "hashValue":I
    goto :goto_3

    .line 285
    .end local v4    # "hashValue":I
    :cond_2
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v4, v7

    .line 287
    .restart local v4    # "hashValue":I
    :goto_3
    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->e:[I

    iget v8, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->l:I

    add-int v9, v8, v4

    aget v9, v7, v9

    .line 288
    .local v9, "curMatch":I
    add-int/2addr v8, v4

    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    aput v10, v7, v8

    .line 290
    iget v7, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 291
    .local v8, "ptr0":I
    shl-int/lit8 v7, v7, 0x1

    .line 294
    .local v7, "ptr1":I
    iget v10, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->j:I

    move v11, v10

    .line 296
    .local v10, "len0":I
    .local v11, "len1":I
    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->f:I

    .line 299
    .local v12, "count":I
    :goto_4
    if-le v9, v5, :cond_a

    add-int/lit8 v14, v12, -0x1

    .end local v12    # "count":I
    .local v14, "count":I
    if-nez v12, :cond_3

    move/from16 p1, v4

    move/from16 v17, v5

    move v12, v14

    goto/16 :goto_9

    .line 305
    :cond_3
    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->t:I

    sub-int/2addr v12, v9

    .line 306
    .local v13, "delta":I
    move v13, v12

    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->a:I

    if-gt v12, v15, :cond_4

    sub-int/2addr v15, v13

    goto :goto_5

    :cond_4
    sub-int/2addr v15, v13

    iget v12, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b:I

    add-int/2addr v15, v12

    :goto_5
    shl-int/lit8 v12, v15, 0x1

    .line 310
    .local v12, "cyclicPos":I
    iget v15, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->r:I

    add-int/2addr v15, v9

    .line 311
    .local v15, "pby1":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 312
    .local v16, "len":I
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v17, v15, v16

    aget-byte v1, v1, v17

    move/from16 p1, v4

    .end local v4    # "hashValue":I
    .local p1, "hashValue":I
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v17, v6, v16

    aget-byte v4, v4, v17

    if-ne v1, v4, :cond_8

    .line 314
    :goto_6
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "len":I
    .local v1, "len":I
    if-eq v1, v3, :cond_6

    .line 315
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v16, v15, v1

    aget-byte v4, v4, v16

    move/from16 v17, v5

    .end local v5    # "matchMinPos":I
    .local v17, "matchMinPos":I
    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v16, v6, v1

    aget-byte v5, v5, v16

    if-eq v4, v5, :cond_5

    goto :goto_7

    :cond_5
    move/from16 v16, v1

    move/from16 v5, v17

    goto :goto_6

    .line 314
    .end local v17    # "matchMinPos":I
    .restart local v5    # "matchMinPos":I
    :cond_6
    move/from16 v17, v5

    .line 317
    .end local v5    # "matchMinPos":I
    .restart local v17    # "matchMinPos":I
    :goto_7
    if-ne v1, v3, :cond_7

    .line 319
    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aget v5, v4, v12

    aput v5, v4, v7

    .line 320
    add-int/lit8 v5, v12, 0x1

    aget v5, v4, v5

    aput v5, v4, v8

    .line 321
    move/from16 v12, p1

    move v5, v6

    move v6, v7

    move v4, v9

    move v7, v10

    move v9, v11

    move/from16 v10, v17

    move v11, v8

    move v8, v14

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 317
    :cond_7
    move/from16 v16, v1

    goto :goto_8

    .line 312
    .end local v1    # "len":I
    .end local v17    # "matchMinPos":I
    .restart local v5    # "matchMinPos":I
    .restart local v16    # "len":I
    :cond_8
    move/from16 v17, v5

    .line 324
    .end local v5    # "matchMinPos":I
    .restart local v17    # "matchMinPos":I
    :goto_8
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v4, v15, v16

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->m:[B

    add-int v5, v6, v16

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ge v1, v4, :cond_9

    .line 326
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aput v9, v1, v7

    .line 327
    add-int/lit8 v7, v12, 0x1

    .line 328
    aget v9, v1, v7

    .line 329
    move/from16 v11, v16

    move/from16 v4, p1

    move v12, v14

    move/from16 v5, v17

    goto/16 :goto_4

    .line 333
    :cond_9
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    aput v9, v1, v8

    .line 334
    move v8, v12

    .line 335
    aget v9, v1, v8

    .line 336
    move/from16 v10, v16

    .line 338
    .end local v12    # "cyclicPos":I
    .end local v13    # "delta":I
    .end local v15    # "pby1":I
    .end local v16    # "len":I
    move/from16 v4, p1

    move v12, v14

    move/from16 v5, v17

    goto/16 :goto_4

    .line 299
    .end local v14    # "count":I
    .end local v17    # "matchMinPos":I
    .end local p1    # "hashValue":I
    .restart local v4    # "hashValue":I
    .restart local v5    # "matchMinPos":I
    .local v12, "count":I
    :cond_a
    move/from16 p1, v4

    move/from16 v17, v5

    .line 301
    .end local v4    # "hashValue":I
    .end local v5    # "matchMinPos":I
    .restart local v17    # "matchMinPos":I
    .restart local p1    # "hashValue":I
    :goto_9
    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->d:[I

    const/4 v14, 0x0

    aput v14, v1, v7

    aput v14, v1, v8

    .line 302
    move v5, v6

    move v6, v7

    move v4, v9

    move v7, v10

    move v9, v11

    move/from16 v10, v17

    move v11, v8

    move v8, v12

    move/from16 v12, p1

    goto :goto_a

    .line 262
    .end local v6    # "cur":I
    .end local v7    # "ptr1":I
    .end local v8    # "ptr0":I
    .end local v9    # "curMatch":I
    .end local v10    # "len0":I
    .end local v11    # "len1":I
    .end local v12    # "count":I
    .end local v17    # "matchMinPos":I
    .end local p1    # "hashValue":I
    :cond_b
    const/4 v14, 0x0

    move v1, v4

    .local v1, "curMatch":I
    move v4, v5

    .local v4, "cur":I
    move v5, v6

    .local v5, "ptr1":I
    move v6, v7

    .local v6, "len0":I
    move v7, v8

    .local v7, "count":I
    move v8, v9

    .local v8, "len1":I
    move v9, v10

    .local v9, "matchMinPos":I
    move v10, v11

    .local v10, "ptr0":I
    move v11, v12

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v1

    .line 339
    .end local v1    # "curMatch":I
    .local v4, "curMatch":I
    .local v5, "cur":I
    .local v6, "ptr1":I
    .local v7, "len0":I
    .local v8, "count":I
    .local v9, "len1":I
    .local v10, "matchMinPos":I
    .local v11, "ptr0":I
    .local v12, "hashValue":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_BinTree;->b()V

    .line 341
    .end local v3    # "lenLimit":I
    .end local v4    # "curMatch":I
    .end local v5    # "cur":I
    .end local v6    # "ptr1":I
    .end local v7    # "len0":I
    .end local v8    # "count":I
    .end local v9    # "len1":I
    .end local v10    # "matchMinPos":I
    .end local v11    # "ptr0":I
    .end local v12    # "hashValue":I
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_c

    .line 342
    return-void

    .line 341
    :cond_c
    goto/16 :goto_0
.end method
