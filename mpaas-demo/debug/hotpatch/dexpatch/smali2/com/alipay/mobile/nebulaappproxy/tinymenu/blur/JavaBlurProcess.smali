.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;
.super Ljava/lang/Object;
.source "JavaBlurProcess.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;
    }
.end annotation


# static fields
.field private static final stackblur_mul:[S

.field private static final stackblur_shr:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const/16 v0, 0xff

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->stackblur_mul:[S

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->stackblur_shr:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIIIIII)V
    .locals 0
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .line 30
    invoke-static/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->blurIteration([IIIIIII)V

    return-void
.end method

.method private static blurIteration([IIIIIII)V
    .locals 47
    .param p0, "src"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "radius"    # I
    .param p4, "cores"    # I
    .param p5, "core"    # I
    .param p6, "step"    # I

    .line 116
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    add-int/lit8 v4, v0, -0x1

    .line 117
    .local v4, "wm":I
    add-int/lit8 v5, v1, -0x1

    .line 118
    .local v5, "hm":I
    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 119
    .local v6, "div":I
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->stackblur_mul:[S

    aget-short v8, v8, v2

    .line 120
    .local v8, "mul_sum":I
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->stackblur_shr:[B

    aget-byte v9, v9, v2

    .line 121
    .local v9, "shr_sum":B
    new-array v10, v6, [I

    .line 123
    .local v10, "stack":[I
    const-wide/16 v12, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x10

    const/16 v18, 0x0

    if-ne v3, v7, :cond_9

    .line 124
    mul-int v7, p5, v1

    div-int v7, v7, p4

    .line 125
    .local v7, "minY":I
    add-int/lit8 v19, p5, 0x1

    mul-int v19, v19, v1

    div-int v14, v19, p4

    .line 127
    .local v14, "maxY":I
    move v15, v7

    .local v15, "y":I
    :goto_0
    if-ge v15, v14, :cond_8

    .line 128
    move-wide/from16 v22, v12

    .local v22, "sum_out_b":J
    move-wide/from16 v24, v12

    .local v24, "sum_out_g":J
    move-wide/from16 v26, v12

    .local v26, "sum_out_r":J
    move-wide/from16 v28, v12

    .local v28, "sum_in_b":J
    move-wide/from16 v30, v12

    .local v30, "sum_in_g":J
    move-wide/from16 v32, v12

    .local v32, "sum_in_r":J
    move-wide/from16 v34, v12

    .local v34, "sum_b":J
    move-wide/from16 v36, v12

    .local v36, "sum_g":J
    move-wide/from16 v38, v12

    .line 132
    .local v38, "sum_r":J
    mul-int v19, v0, v15

    .line 134
    .local v19, "src_i":I
    const/16 v40, 0x0

    move/from16 v12, v40

    .local v12, "i":I
    :goto_1
    if-gt v12, v2, :cond_0

    .line 135
    move v13, v12

    .line 136
    .local v13, "stack_i":I
    aget v41, p0, v19

    aput v41, v10, v13

    .line 137
    aget v41, p0, v19

    ushr-int/lit8 v11, v41, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v41, v12, 0x1

    mul-int v11, v11, v41

    move/from16 v43, v13

    move/from16 v41, v14

    .end local v13    # "stack_i":I
    .end local v14    # "maxY":I
    .local v41, "maxY":I
    .local v43, "stack_i":I
    int-to-long v13, v11

    add-long v38, v38, v13

    .line 138
    aget v11, p0, v19

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v13, v12, 0x1

    mul-int v11, v11, v13

    int-to-long v13, v11

    add-long v36, v36, v13

    .line 139
    aget v11, p0, v19

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v13, v12, 0x1

    mul-int v11, v11, v13

    int-to-long v13, v11

    add-long v34, v34, v13

    .line 140
    aget v11, p0, v19

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    add-long v26, v26, v13

    .line 141
    aget v11, p0, v19

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    add-long v24, v24, v13

    .line 142
    aget v11, p0, v19

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    add-long v22, v22, v13

    .line 134
    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v41

    goto :goto_1

    .line 145
    .end local v41    # "maxY":I
    .end local v43    # "stack_i":I
    .restart local v14    # "maxY":I
    :cond_0
    move/from16 v41, v14

    .end local v14    # "maxY":I
    .restart local v41    # "maxY":I
    const/4 v11, 0x1

    .end local v12    # "i":I
    .local v11, "i":I
    :goto_2
    if-gt v11, v2, :cond_2

    .line 146
    if-gt v11, v4, :cond_1

    .line 147
    add-int/lit8 v19, v19, 0x1

    .line 149
    :cond_1
    add-int v12, v11, v2

    .line 150
    .local v12, "stack_i":I
    aget v13, p0, v19

    aput v13, v10, v12

    .line 151
    aget v13, p0, v19

    ushr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v2, 0x1

    sub-int/2addr v14, v11

    mul-int v13, v13, v14

    int-to-long v13, v13

    add-long v38, v38, v13

    .line 152
    aget v13, p0, v19

    ushr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v2, 0x1

    sub-int/2addr v14, v11

    mul-int v13, v13, v14

    int-to-long v13, v13

    add-long v36, v36, v13

    .line 153
    aget v13, p0, v19

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v2, 0x1

    sub-int/2addr v14, v11

    mul-int v13, v13, v14

    int-to-long v13, v13

    add-long v34, v34, v13

    .line 154
    aget v13, p0, v19

    ushr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v32, v32, v13

    .line 155
    aget v13, p0, v19

    ushr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v30, v30, v13

    .line 156
    aget v13, p0, v19

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v28, v28, v13

    .line 145
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 159
    .end local v12    # "stack_i":I
    :cond_2
    move/from16 v12, p3

    .line 160
    .local v12, "sp":I
    move/from16 v13, p3

    .line 161
    .local v13, "xp":I
    if-le v2, v4, :cond_3

    .line 162
    move v13, v4

    .line 164
    :cond_3
    mul-int v14, v15, v0

    add-int/2addr v14, v13

    .line 165
    .end local v19    # "src_i":I
    .local v14, "src_i":I
    mul-int v19, v15, v0

    .line 166
    .local v19, "dst_i":I
    const/16 v43, 0x0

    move/from16 v46, v43

    move/from16 v43, v7

    move/from16 v7, v46

    .local v7, "x":I
    .local v43, "minY":I
    :goto_3
    if-ge v7, v0, :cond_7

    .line 167
    aget v44, p0, v19

    move/from16 v45, v11

    const/high16 v42, -0x1000000

    .end local v11    # "i":I
    .local v45, "i":I
    and-int v11, v44, v42

    int-to-long v0, v11

    move/from16 v44, v14

    move v11, v15

    .end local v14    # "src_i":I
    .end local v15    # "y":I
    .local v11, "y":I
    .local v44, "src_i":I
    int-to-long v14, v8

    mul-long v14, v14, v38

    ushr-long/2addr v14, v9

    const-wide/16 v20, 0xff

    and-long v14, v14, v20

    shl-long v14, v14, v17

    or-long/2addr v0, v14

    int-to-long v14, v8

    mul-long v14, v14, v36

    ushr-long/2addr v14, v9

    and-long v14, v14, v20

    shl-long v14, v14, v16

    or-long/2addr v0, v14

    int-to-long v14, v8

    mul-long v14, v14, v34

    ushr-long/2addr v14, v9

    and-long v14, v14, v20

    or-long/2addr v0, v14

    long-to-int v1, v0

    aput v1, p0, v19

    .line 172
    add-int/lit8 v19, v19, 0x1

    .line 174
    sub-long v38, v38, v26

    .line 175
    sub-long v36, v36, v24

    .line 176
    sub-long v34, v34, v22

    .line 178
    add-int v0, v12, v6

    sub-int/2addr v0, v2

    move/from16 v1, v18

    .line 179
    .local v1, "stack_start":I
    move v1, v0

    if-lt v0, v6, :cond_4

    .line 180
    sub-int/2addr v1, v6

    move/from16 v18, v1

    goto :goto_4

    .line 179
    :cond_4
    move/from16 v18, v1

    .line 182
    .end local v1    # "stack_start":I
    .local v18, "stack_start":I
    :goto_4
    move/from16 v0, v18

    .line 184
    .local v0, "stack_i":I
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-long v14, v1

    sub-long v26, v26, v14

    .line 185
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v14, v1

    sub-long v24, v24, v14

    .line 186
    aget v1, v10, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v14, v1

    sub-long v22, v22, v14

    .line 188
    if-ge v13, v4, :cond_5

    .line 189
    add-int/lit8 v14, v44, 0x1

    .line 190
    .end local v44    # "src_i":I
    .restart local v14    # "src_i":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 188
    .end local v14    # "src_i":I
    .restart local v44    # "src_i":I
    :cond_5
    move/from16 v14, v44

    .line 193
    .end local v44    # "src_i":I
    .restart local v14    # "src_i":I
    :goto_5
    aget v1, p0, v14

    aput v1, v10, v0

    .line 195
    aget v1, p0, v14

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    move v15, v0

    .end local v0    # "stack_i":I
    .local v15, "stack_i":I
    int-to-long v0, v1

    add-long v32, v32, v0

    .line 196
    aget v0, p0, v14

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v30, v30, v0

    .line 197
    aget v0, p0, v14

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v28, v28, v0

    .line 198
    add-long v38, v38, v32

    .line 199
    add-long v36, v36, v30

    .line 200
    add-long v34, v34, v28

    .line 202
    add-int/lit8 v12, v12, 0x1

    .line 203
    if-lt v12, v6, :cond_6

    .line 204
    const/4 v0, 0x0

    move v12, v0

    .line 206
    :cond_6
    move v0, v12

    .line 208
    .end local v15    # "stack_i":I
    .restart local v0    # "stack_i":I
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    move/from16 v44, v12

    move v15, v13

    .end local v12    # "sp":I
    .end local v13    # "xp":I
    .local v15, "xp":I
    .local v44, "sp":I
    int-to-long v12, v1

    add-long v26, v26, v12

    .line 209
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    add-long v24, v24, v12

    .line 210
    aget v1, v10, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    add-long v22, v22, v12

    .line 211
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    sub-long v32, v32, v12

    .line 212
    aget v1, v10, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    sub-long v30, v30, v12

    .line 213
    aget v1, v10, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    sub-long v28, v28, v12

    .line 166
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move v13, v15

    move/from16 v12, v44

    move v15, v11

    move/from16 v11, v45

    goto/16 :goto_3

    .line 127
    .end local v0    # "stack_i":I
    .end local v18    # "stack_start":I
    .end local v44    # "sp":I
    .end local v45    # "i":I
    .local v11, "i":I
    .restart local v12    # "sp":I
    .restart local v13    # "xp":I
    .local v15, "y":I
    :cond_7
    move/from16 v45, v11

    move/from16 v44, v14

    move v11, v15

    .end local v14    # "src_i":I
    .end local v15    # "y":I
    .local v11, "y":I
    .local v44, "src_i":I
    .restart local v45    # "i":I
    add-int/lit8 v15, v11, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v14, v41

    move/from16 v7, v43

    const-wide/16 v12, 0x0

    .end local v11    # "y":I
    .restart local v15    # "y":I
    goto/16 :goto_0

    .line 217
    .end local v7    # "x":I
    .end local v12    # "sp":I
    .end local v13    # "xp":I
    .end local v19    # "dst_i":I
    .end local v22    # "sum_out_b":J
    .end local v24    # "sum_out_g":J
    .end local v26    # "sum_out_r":J
    .end local v28    # "sum_in_b":J
    .end local v30    # "sum_in_g":J
    .end local v32    # "sum_in_r":J
    .end local v34    # "sum_b":J
    .end local v36    # "sum_g":J
    .end local v38    # "sum_r":J
    .end local v41    # "maxY":I
    .end local v43    # "minY":I
    .end local v44    # "src_i":I
    .end local v45    # "i":I
    :cond_8
    return-void

    .line 220
    .end local v15    # "y":I
    :cond_9
    const/4 v0, 0x2

    if-ne v3, v0, :cond_13

    .line 221
    mul-int v0, p5, p1

    div-int v0, v0, p4

    .line 222
    .local v0, "minX":I
    add-int/lit8 v1, p5, 0x1

    mul-int v1, v1, p1

    div-int v1, v1, p4

    .line 224
    .local v1, "maxX":I
    move v7, v0

    .restart local v7    # "x":I
    :goto_6
    if-ge v7, v1, :cond_12

    .line 225
    const-wide/16 v11, 0x0

    move-wide v13, v11

    .local v13, "sum_out_b":J
    move-wide/from16 v22, v11

    .local v22, "sum_out_g":J
    move-wide/from16 v24, v11

    .local v24, "sum_out_r":J
    move-wide/from16 v26, v11

    .local v26, "sum_in_b":J
    move-wide/from16 v28, v11

    .local v28, "sum_in_g":J
    move-wide/from16 v30, v11

    .local v30, "sum_in_r":J
    move-wide/from16 v32, v11

    .local v32, "sum_b":J
    move-wide/from16 v34, v11

    .local v34, "sum_g":J
    move-wide/from16 v36, v11

    .line 229
    .local v36, "sum_r":J
    move v15, v7

    .line 230
    .local v15, "src_i":I
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i":I
    :goto_7
    if-gt v11, v2, :cond_a

    .line 231
    move v12, v11

    .line 232
    .local v12, "stack_i":I
    aget v19, p0, v15

    aput v19, v10, v12

    .line 233
    aget v19, p0, v15

    move/from16 v38, v0

    .end local v0    # "minX":I
    .local v38, "minX":I
    ushr-int/lit8 v0, v19, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v19, v11, 0x1

    mul-int v0, v0, v19

    move/from16 v19, v1

    .end local v1    # "maxX":I
    .local v19, "maxX":I
    int-to-long v0, v0

    add-long v36, v36, v0

    .line 234
    aget v0, p0, v15

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v11, 0x1

    mul-int v0, v0, v1

    int-to-long v0, v0

    add-long v34, v34, v0

    .line 235
    aget v0, p0, v15

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v11, 0x1

    mul-int v0, v0, v1

    int-to-long v0, v0

    add-long v32, v32, v0

    .line 236
    aget v0, p0, v15

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v24, v24, v0

    .line 237
    aget v0, p0, v15

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v22, v22, v0

    .line 238
    aget v0, p0, v15

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr v13, v0

    .line 230
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v19

    move/from16 v0, v38

    goto :goto_7

    .line 240
    .end local v12    # "stack_i":I
    .end local v19    # "maxX":I
    .end local v38    # "minX":I
    .restart local v0    # "minX":I
    .restart local v1    # "maxX":I
    :cond_a
    move/from16 v38, v0

    move/from16 v19, v1

    .end local v0    # "minX":I
    .end local v1    # "maxX":I
    .restart local v19    # "maxX":I
    .restart local v38    # "minX":I
    const/4 v0, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    :goto_8
    if-gt v0, v2, :cond_c

    .line 241
    if-gt v0, v5, :cond_b

    .line 242
    add-int v15, v15, p1

    .line 245
    :cond_b
    add-int v1, v0, v2

    .line 246
    .local v1, "stack_i":I
    aget v11, p0, v15

    aput v11, v10, v1

    .line 247
    aget v11, p0, v15

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v2, 0x1

    sub-int/2addr v12, v0

    mul-int v11, v11, v12

    int-to-long v11, v11

    add-long v36, v36, v11

    .line 248
    aget v11, p0, v15

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v2, 0x1

    sub-int/2addr v12, v0

    mul-int v11, v11, v12

    int-to-long v11, v11

    add-long v34, v34, v11

    .line 249
    aget v11, p0, v15

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v2, 0x1

    sub-int/2addr v12, v0

    mul-int v11, v11, v12

    int-to-long v11, v11

    add-long v32, v32, v11

    .line 250
    aget v11, p0, v15

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v30, v30, v11

    .line 251
    aget v11, p0, v15

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v28, v28, v11

    .line 252
    aget v11, p0, v15

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v26, v26, v11

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 255
    .end local v1    # "stack_i":I
    :cond_c
    move/from16 v1, p3

    .line 256
    .local v1, "sp":I
    move/from16 v11, p3

    .line 257
    .local v11, "yp":I
    if-le v2, v5, :cond_d

    .line 258
    move v11, v5

    .line 260
    :cond_d
    mul-int v12, v11, p1

    add-int/2addr v12, v7

    .line 261
    .end local v15    # "src_i":I
    .local v12, "src_i":I
    move v15, v7

    .line 262
    .local v15, "dst_i":I
    const/16 v39, 0x0

    move/from16 v46, v39

    move/from16 v39, v0

    move/from16 v0, v46

    .local v0, "y":I
    .local v39, "i":I
    :goto_9
    move/from16 v3, p2

    if-ge v0, v3, :cond_11

    .line 263
    aget v41, p0, v15

    const/high16 v42, -0x1000000

    and-int v3, v41, v42

    move/from16 v41, v4

    .end local v4    # "wm":I
    .local v41, "wm":I
    int-to-long v3, v3

    move/from16 v43, v11

    move/from16 v44, v12

    .end local v11    # "yp":I
    .end local v12    # "src_i":I
    .local v43, "yp":I
    .restart local v44    # "src_i":I
    int-to-long v11, v8

    mul-long v11, v11, v36

    ushr-long/2addr v11, v9

    const-wide/16 v20, 0xff

    and-long v11, v11, v20

    shl-long v11, v11, v17

    or-long/2addr v3, v11

    int-to-long v11, v8

    mul-long v11, v11, v34

    ushr-long/2addr v11, v9

    and-long v11, v11, v20

    shl-long v11, v11, v16

    or-long/2addr v3, v11

    int-to-long v11, v8

    mul-long v11, v11, v32

    ushr-long/2addr v11, v9

    and-long v11, v11, v20

    or-long/2addr v3, v11

    long-to-int v4, v3

    aput v4, p0, v15

    .line 268
    add-int v15, v15, p1

    .line 270
    sub-long v36, v36, v24

    .line 271
    sub-long v34, v34, v22

    .line 272
    sub-long v32, v32, v13

    .line 274
    add-int v3, v1, v6

    sub-int/2addr v3, v2

    move/from16 v4, v18

    .line 275
    .local v4, "stack_start":I
    move v4, v3

    if-lt v3, v6, :cond_e

    .line 276
    sub-int/2addr v4, v6

    move/from16 v18, v4

    goto :goto_a

    .line 275
    :cond_e
    move/from16 v18, v4

    .line 278
    .end local v4    # "stack_start":I
    .restart local v18    # "stack_start":I
    :goto_a
    move/from16 v3, v18

    .line 280
    .local v3, "stack_i":I
    aget v4, v10, v3

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    sub-long v24, v24, v11

    .line 281
    aget v4, v10, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    sub-long v22, v22, v11

    .line 282
    aget v4, v10, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    sub-long/2addr v13, v11

    .line 284
    move/from16 v11, v43

    .end local v43    # "yp":I
    .restart local v11    # "yp":I
    if-ge v11, v5, :cond_f

    .line 285
    add-int v12, v44, p1

    .line 286
    .end local v44    # "src_i":I
    .restart local v12    # "src_i":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 284
    .end local v12    # "src_i":I
    .restart local v44    # "src_i":I
    :cond_f
    move/from16 v12, v44

    .line 289
    .end local v44    # "src_i":I
    .restart local v12    # "src_i":I
    :goto_b
    aget v4, p0, v12

    aput v4, v10, v3

    .line 291
    aget v4, p0, v12

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    move/from16 v43, v3

    .end local v3    # "stack_i":I
    .local v43, "stack_i":I
    int-to-long v2, v4

    add-long v30, v30, v2

    .line 292
    aget v2, p0, v12

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v28, v28, v2

    .line 293
    aget v2, p0, v12

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v26, v26, v2

    .line 294
    add-long v36, v36, v30

    .line 295
    add-long v34, v34, v28

    .line 296
    add-long v32, v32, v26

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    if-lt v1, v6, :cond_10

    .line 300
    const/4 v1, 0x0

    .line 302
    :cond_10
    move v2, v1

    .line 304
    .end local v43    # "stack_i":I
    .local v2, "stack_i":I
    aget v3, v10, v2

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v24, v24, v3

    .line 305
    aget v3, v10, v2

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v22, v22, v3

    .line 306
    aget v3, v10, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v13, v3

    .line 307
    aget v3, v10, v2

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-long v30, v30, v3

    .line 308
    aget v3, v10, v2

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-long v28, v28, v3

    .line 309
    aget v3, v10, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-long v26, v26, v3

    .line 262
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, v41

    goto/16 :goto_9

    .line 224
    .end local v2    # "stack_i":I
    .end local v18    # "stack_start":I
    .end local v41    # "wm":I
    .local v4, "wm":I
    :cond_11
    move/from16 v41, v4

    move/from16 v44, v12

    const-wide/16 v20, 0xff

    const/high16 v42, -0x1000000

    .end local v4    # "wm":I
    .end local v12    # "src_i":I
    .restart local v41    # "wm":I
    .restart local v44    # "src_i":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v1, v19

    move/from16 v0, v38

    goto/16 :goto_6

    .end local v11    # "yp":I
    .end local v13    # "sum_out_b":J
    .end local v15    # "dst_i":I
    .end local v19    # "maxX":I
    .end local v22    # "sum_out_g":J
    .end local v24    # "sum_out_r":J
    .end local v26    # "sum_in_b":J
    .end local v28    # "sum_in_g":J
    .end local v30    # "sum_in_r":J
    .end local v32    # "sum_b":J
    .end local v34    # "sum_g":J
    .end local v36    # "sum_r":J
    .end local v38    # "minX":I
    .end local v39    # "i":I
    .end local v41    # "wm":I
    .end local v44    # "src_i":I
    .local v0, "minX":I
    .local v1, "maxX":I
    .restart local v4    # "wm":I
    :cond_12
    move/from16 v38, v0

    move/from16 v19, v1

    move/from16 v41, v4

    .end local v0    # "minX":I
    .end local v1    # "maxX":I
    .end local v4    # "wm":I
    .restart local v19    # "maxX":I
    .restart local v38    # "minX":I
    .restart local v41    # "wm":I
    goto :goto_c

    .line 220
    .end local v7    # "x":I
    .end local v19    # "maxX":I
    .end local v38    # "minX":I
    .end local v41    # "wm":I
    .restart local v4    # "wm":I
    :cond_13
    move/from16 v41, v4

    .line 314
    .end local v4    # "wm":I
    .restart local v41    # "wm":I
    :goto_c
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 19

    .line 72
    const-string v0, "URGENT"

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 74
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 75
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 78
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_0

    .line 81
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;

    move/from16 v7, p2

    float-to-int v6, v7

    const/16 v16, 0x2

    const/16 v17, 0x1

    move-object v1, v8

    move-object v2, v11

    move v3, v9

    move v4, v10

    move v5, v6

    move/from16 v18, v6

    move/from16 v6, v16

    move v7, v15

    move-object v13, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v13, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;

    const/4 v6, 0x2

    const/4 v8, 0x2

    move-object v1, v13

    move/from16 v5, v18

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x2

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    nop

    .line 94
    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    nop

    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    return-object v1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    return-object v1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    return-object v1
.end method
