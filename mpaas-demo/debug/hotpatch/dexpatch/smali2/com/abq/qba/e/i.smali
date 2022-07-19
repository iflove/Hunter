.class final Lcom/abq/qba/e/i;
.super Lcom/abq/qba/e/h;
.source "ResourceConfigurationImpl.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[B

.field private final e:[B

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:[B

.field private final v:[B

.field private final w:I

.field private final x:[B


# direct methods
.method constructor <init>(III[B[BIIIIIIIIIIIIIII[B[BI[B)V
    .locals 16
    .param p1, "size"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "language"    # [B
    .param p5, "region"    # [B
    .param p6, "orientation"    # I
    .param p7, "touchscreen"    # I
    .param p8, "density"    # I
    .param p9, "keyboard"    # I
    .param p10, "navigation"    # I
    .param p11, "inputFlags"    # I
    .param p12, "screenWidth"    # I
    .param p13, "screenHeight"    # I
    .param p14, "sdkVersion"    # I
    .param p15, "minorVersion"    # I
    .param p16, "screenLayout"    # I
    .param p17, "uiMode"    # I
    .param p18, "smallestScreenWidthDp"    # I
    .param p19, "screenWidthDp"    # I
    .param p20, "screenHeightDp"    # I
    .param p21, "localeScript"    # [B
    .param p22, "localeVariant"    # [B
    .param p23, "screenLayout2"    # I
    .param p24, "unknown"    # [B

    .line 57
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/abq/qba/e/h;-><init>()V

    .line 58
    move/from16 v1, p1

    iput v1, v0, Lcom/abq/qba/e/i;->a:I

    .line 59
    move/from16 v2, p2

    iput v2, v0, Lcom/abq/qba/e/i;->b:I

    .line 60
    move/from16 v3, p3

    iput v3, v0, Lcom/abq/qba/e/i;->c:I

    .line 64
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/abq/qba/e/i;->d:[B

    .line 68
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/abq/qba/e/i;->e:[B

    .line 69
    move/from16 v6, p6

    iput v6, v0, Lcom/abq/qba/e/i;->f:I

    .line 70
    move/from16 v7, p7

    iput v7, v0, Lcom/abq/qba/e/i;->g:I

    .line 71
    move/from16 v8, p8

    iput v8, v0, Lcom/abq/qba/e/i;->h:I

    .line 72
    move/from16 v9, p9

    iput v9, v0, Lcom/abq/qba/e/i;->i:I

    .line 73
    move/from16 v10, p10

    iput v10, v0, Lcom/abq/qba/e/i;->j:I

    .line 74
    move/from16 v11, p11

    iput v11, v0, Lcom/abq/qba/e/i;->k:I

    .line 75
    move/from16 v12, p12

    iput v12, v0, Lcom/abq/qba/e/i;->l:I

    .line 76
    move/from16 v13, p13

    iput v13, v0, Lcom/abq/qba/e/i;->m:I

    .line 77
    move/from16 v14, p14

    iput v14, v0, Lcom/abq/qba/e/i;->n:I

    .line 78
    move/from16 v15, p15

    iput v15, v0, Lcom/abq/qba/e/i;->o:I

    .line 79
    move/from16 v1, p16

    iput v1, v0, Lcom/abq/qba/e/i;->p:I

    .line 80
    move/from16 v1, p17

    iput v1, v0, Lcom/abq/qba/e/i;->q:I

    .line 81
    move/from16 v1, p18

    iput v1, v0, Lcom/abq/qba/e/i;->r:I

    .line 82
    move/from16 v1, p19

    iput v1, v0, Lcom/abq/qba/e/i;->s:I

    .line 83
    move/from16 v1, p20

    iput v1, v0, Lcom/abq/qba/e/i;->t:I

    .line 87
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/abq/qba/e/i;->u:[B

    .line 91
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/abq/qba/e/i;->v:[B

    .line 92
    move/from16 v1, p23

    iput v1, v0, Lcom/abq/qba/e/i;->w:I

    .line 96
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/abq/qba/e/i;->x:[B

    .line 97
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/abq/qba/e/i;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/abq/qba/e/i;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/abq/qba/e/i;->c:I

    return v0
.end method

.method public final d()[B
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/abq/qba/e/i;->d:[B

    return-object v0
.end method

.method public final e()[B
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/abq/qba/e/i;->e:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Lcom/abq/qba/e/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 230
    move-object v1, p1

    check-cast v1, Lcom/abq/qba/e/h;

    .line 231
    .local v1, "that":Lcom/abq/qba/e/h;
    iget v3, p0, Lcom/abq/qba/e/i;->a:I

    invoke-virtual {v1}, Lcom/abq/qba/e/h;->a()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->b:I

    .line 232
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->b()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->c:I

    .line 233
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->c()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/abq/qba/e/i;->d:[B

    instance-of v4, v1, Lcom/abq/qba/e/i;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/abq/qba/e/i;

    iget-object v4, v4, Lcom/abq/qba/e/i;->d:[B

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->d()[B

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/abq/qba/e/i;->e:[B

    instance-of v4, v1, Lcom/abq/qba/e/i;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/abq/qba/e/i;

    iget-object v4, v4, Lcom/abq/qba/e/i;->e:[B

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->e()[B

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->f:I

    .line 236
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->f()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->g:I

    .line 237
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->g()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->h:I

    .line 238
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->h()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->i:I

    .line 239
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->i()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->j:I

    .line 240
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->j()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->k:I

    .line 241
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->k()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->l:I

    .line 242
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->l()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->m:I

    .line 243
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->m()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->n:I

    .line 244
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->n()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->o:I

    .line 245
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->o()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->p:I

    .line 246
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->p()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->q:I

    .line 247
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->q()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->r:I

    .line 248
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->r()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->s:I

    .line 249
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->s()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->t:I

    .line 250
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->t()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/abq/qba/e/i;->u:[B

    instance-of v4, v1, Lcom/abq/qba/e/i;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lcom/abq/qba/e/i;

    iget-object v4, v4, Lcom/abq/qba/e/i;->u:[B

    goto :goto_2

    .line 251
    :cond_3
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->u()[B

    move-result-object v4

    :goto_2
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/abq/qba/e/i;->v:[B

    instance-of v4, v1, Lcom/abq/qba/e/i;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Lcom/abq/qba/e/i;

    iget-object v4, v4, Lcom/abq/qba/e/i;->v:[B

    goto :goto_3

    .line 252
    :cond_4
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->v()[B

    move-result-object v4

    :goto_3
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/abq/qba/e/i;->w:I

    .line 253
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->w()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/abq/qba/e/i;->x:[B

    instance-of v4, v1, Lcom/abq/qba/e/i;

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Lcom/abq/qba/e/i;

    iget-object v4, v4, Lcom/abq/qba/e/i;->x:[B

    goto :goto_4

    .line 254
    :cond_5
    invoke-virtual {v1}, Lcom/abq/qba/e/h;->x()[B

    move-result-object v4

    :goto_4
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    return v0

    :cond_6
    nop

    .line 231
    return v2

    .line 256
    .end local v1    # "that":Lcom/abq/qba/e/h;
    :cond_7
    return v2
.end method

.method public final f()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/abq/qba/e/i;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/abq/qba/e/i;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/abq/qba/e/i;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 263
    iget v0, p0, Lcom/abq/qba/e/i;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 264
    mul-int v0, v0, v1

    .line 265
    iget v2, p0, Lcom/abq/qba/e/i;->b:I

    xor-int/2addr v0, v2

    .line 266
    mul-int v0, v0, v1

    .line 267
    iget v2, p0, Lcom/abq/qba/e/i;->c:I

    xor-int/2addr v0, v2

    .line 268
    mul-int v0, v0, v1

    .line 269
    iget-object v2, p0, Lcom/abq/qba/e/i;->d:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    .line 270
    mul-int v0, v0, v1

    .line 271
    iget-object v2, p0, Lcom/abq/qba/e/i;->e:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    .line 272
    mul-int v0, v0, v1

    .line 273
    iget v2, p0, Lcom/abq/qba/e/i;->f:I

    xor-int/2addr v0, v2

    .line 274
    mul-int v0, v0, v1

    .line 275
    iget v2, p0, Lcom/abq/qba/e/i;->g:I

    xor-int/2addr v0, v2

    .line 276
    mul-int v0, v0, v1

    .line 277
    iget v2, p0, Lcom/abq/qba/e/i;->h:I

    xor-int/2addr v0, v2

    .line 278
    mul-int v0, v0, v1

    .line 279
    iget v2, p0, Lcom/abq/qba/e/i;->i:I

    xor-int/2addr v0, v2

    .line 280
    mul-int v0, v0, v1

    .line 281
    iget v2, p0, Lcom/abq/qba/e/i;->j:I

    xor-int/2addr v0, v2

    .line 282
    mul-int v0, v0, v1

    .line 283
    iget v2, p0, Lcom/abq/qba/e/i;->k:I

    xor-int/2addr v0, v2

    .line 284
    mul-int v0, v0, v1

    .line 285
    iget v2, p0, Lcom/abq/qba/e/i;->l:I

    xor-int/2addr v0, v2

    .line 286
    mul-int v0, v0, v1

    .line 287
    iget v2, p0, Lcom/abq/qba/e/i;->m:I

    xor-int/2addr v0, v2

    .line 288
    mul-int v0, v0, v1

    .line 289
    iget v2, p0, Lcom/abq/qba/e/i;->n:I

    xor-int/2addr v0, v2

    .line 290
    mul-int v0, v0, v1

    .line 291
    iget v2, p0, Lcom/abq/qba/e/i;->o:I

    xor-int/2addr v0, v2

    .line 292
    mul-int v0, v0, v1

    .line 293
    iget v2, p0, Lcom/abq/qba/e/i;->p:I

    xor-int/2addr v0, v2

    .line 294
    mul-int v0, v0, v1

    .line 295
    iget v2, p0, Lcom/abq/qba/e/i;->q:I

    xor-int/2addr v0, v2

    .line 296
    mul-int v0, v0, v1

    .line 297
    iget v2, p0, Lcom/abq/qba/e/i;->r:I

    xor-int/2addr v0, v2

    .line 298
    mul-int v0, v0, v1

    .line 299
    iget v2, p0, Lcom/abq/qba/e/i;->s:I

    xor-int/2addr v0, v2

    .line 300
    mul-int v0, v0, v1

    .line 301
    iget v2, p0, Lcom/abq/qba/e/i;->t:I

    xor-int/2addr v0, v2

    .line 302
    mul-int v0, v0, v1

    .line 303
    iget-object v2, p0, Lcom/abq/qba/e/i;->u:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    .line 304
    mul-int v0, v0, v1

    .line 305
    iget-object v2, p0, Lcom/abq/qba/e/i;->v:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    .line 306
    mul-int v0, v0, v1

    .line 307
    iget v2, p0, Lcom/abq/qba/e/i;->w:I

    xor-int/2addr v0, v2

    .line 308
    mul-int v0, v0, v1

    .line 309
    iget-object v1, p0, Lcom/abq/qba/e/i;->x:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    .line 310
    return v0
.end method

.method public final i()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/abq/qba/e/i;->i:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/abq/qba/e/i;->j:I

    return v0
.end method

.method public final k()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/abq/qba/e/i;->k:I

    return v0
.end method

.method public final l()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/abq/qba/e/i;->l:I

    return v0
.end method

.method public final m()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/abq/qba/e/i;->m:I

    return v0
.end method

.method public final n()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/abq/qba/e/i;->n:I

    return v0
.end method

.method public final o()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/abq/qba/e/i;->o:I

    return v0
.end method

.method public final p()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/abq/qba/e/i;->p:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/abq/qba/e/i;->q:I

    return v0
.end method

.method public final r()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/abq/qba/e/i;->r:I

    return v0
.end method

.method public final s()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/abq/qba/e/i;->s:I

    return v0
.end method

.method public final t()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/abq/qba/e/i;->t:I

    return v0
.end method

.method public final u()[B
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/abq/qba/e/i;->u:[B

    return-object v0
.end method

.method public final v()[B
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/abq/qba/e/i;->v:[B

    return-object v0
.end method

.method public final w()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/abq/qba/e/i;->w:I

    return v0
.end method

.method public final x()[B
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/abq/qba/e/i;->x:[B

    return-object v0
.end method
