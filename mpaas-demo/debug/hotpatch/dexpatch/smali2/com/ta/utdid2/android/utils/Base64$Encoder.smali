.class Lcom/ta/utdid2/android/utils/Base64$Encoder;
.super Lcom/ta/utdid2/android/utils/Base64$Coder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LINE_GROUPS:I = 0x13

.field private static final a:[B

.field private static final b:[B


# instance fields
.field private final c:[B

.field private d:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final e:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 538
    const-class v0, Lcom/ta/utdid2/android/utils/Base64;

    .line 550
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ta/utdid2/android/utils/Base64$Encoder;->a:[B

    .line 561
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 577
    invoke-direct {p0}, Lcom/ta/utdid2/android/utils/Base64$Coder;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    .line 580
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    .line 581
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    .line 582
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    .line 583
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_3

    sget-object v2, Lcom/ta/utdid2/android/utils/Base64$Encoder;->a:[B

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/ta/utdid2/android/utils/Base64$Encoder;->b:[B

    :goto_3
    iput-object v2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->e:[B

    .line 585
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    .line 586
    iput v1, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    .line 588
    if-eqz v0, :cond_4

    const/16 v0, 0x13

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    :goto_4
    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->d:I

    .line 589
    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .line 596
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 18
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->e:[B

    .line 602
    .local v1, "alphabet":[B
    iget-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    .line 603
    .local v2, "output":[B
    const/4 v3, 0x0

    .line 604
    .local v3, "op":I
    iget v4, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->d:I

    .line 606
    .local v4, "count":I
    move/from16 v5, p2

    .line 607
    .local v5, "p":I
    add-int v6, p3, p2

    .line 608
    .end local p3    # "len":I
    .local v6, "len":I
    const/4 v7, -0x1

    .line 614
    .local v7, "v":I
    iget v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v11, :cond_1

    if-eq v8, v10, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    add-int/lit8 v8, p2, 0x1

    if-gt v8, v6, :cond_2

    .line 633
    iget-object v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    aget-byte v12, v8, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v5, v5, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    or-int v7, v8, v12

    .line 635
    iput v9, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    goto :goto_0

    .line 620
    :cond_1
    add-int/lit8 v8, p2, 0x2

    if-gt v8, v6, :cond_2

    .line 623
    iget-object v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v5, v5, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "p":I
    .local v12, "p":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v7, v8, v5

    .line 625
    iput v9, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    move v5, v12

    .line 640
    .end local v12    # "p":I
    .restart local v5    # "p":I
    :cond_2
    :goto_0
    const/4 v8, 0x4

    const/4 v12, -0x1

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-eq v7, v12, :cond_4

    .line 641
    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v12, v7, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v9

    .line 642
    add-int/2addr v3, v11

    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v11

    .line 643
    add-int/2addr v3, v11

    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v10

    .line 644
    add-int/2addr v3, v11

    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    const/4 v15, 0x3

    aput-byte v12, v2, v15

    .line 645
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 646
    iget-boolean v12, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_3

    .line 647
    add-int/lit8 v3, v3, 0x1

    aput-byte v13, v2, v8

    .line 648
    :cond_3
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "op":I
    .local v12, "op":I
    aput-byte v14, v2, v3

    .line 649
    const/16 v4, 0x13

    move v3, v12

    .line 658
    .end local v12    # "op":I
    .restart local v3    # "op":I
    :cond_4
    :goto_1
    add-int/lit8 v12, v5, 0x3

    if-gt v12, v6, :cond_6

    .line 659
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v15, v5, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v12, v15

    add-int/lit8 v15, v5, 0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    or-int v7, v12, v15

    .line 661
    shr-int/lit8 v12, v7, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 662
    add-int/lit8 v12, v3, 0x1

    shr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v12

    .line 663
    add-int/lit8 v12, v3, 0x2

    shr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v12

    .line 664
    add-int/lit8 v12, v3, 0x3

    and-int/lit8 v15, v7, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v12

    .line 665
    add-int/lit8 v5, v5, 0x3

    .line 666
    add-int/lit8 v3, v3, 0x4

    .line 667
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 668
    iget-boolean v12, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_5

    .line 669
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "op":I
    .restart local v12    # "op":I
    aput-byte v13, v2, v3

    move v3, v12

    .line 670
    .end local v12    # "op":I
    .restart local v3    # "op":I
    :cond_5
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "op":I
    .restart local v12    # "op":I
    aput-byte v14, v2, v3

    .line 671
    const/16 v4, 0x13

    move v3, v12

    goto :goto_1

    .line 675
    .end local v12    # "op":I
    .restart local v3    # "op":I
    :cond_6
    if-eqz p4, :cond_16

    .line 681
    iget v12, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    sub-int v15, v5, v12

    add-int/lit8 v10, v6, -0x1

    const/16 v16, 0x3d

    if-ne v15, v10, :cond_b

    .line 682
    const/4 v10, 0x0

    .line 683
    .local v10, "t":I
    if-lez v12, :cond_7

    iget-object v15, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v15, v9

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "p":I
    .local v9, "p":I
    aget-byte v5, p1, v5

    move/from16 v17, v9

    move v9, v5

    move/from16 v5, v17

    .end local v9    # "p":I
    .restart local v5    # "p":I
    :goto_2
    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v7, v9, 0x4

    .line 684
    sub-int/2addr v12, v10

    iput v12, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    .line 685
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v3

    .line 686
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v9, v7, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v8

    .line 687
    iget-boolean v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v8, :cond_8

    .line 688
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v16, v2, v3

    .line 689
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v16, v2, v8

    .line 691
    :cond_8
    iget-boolean v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_a

    .line 692
    iget-boolean v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_9

    .line 693
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v13, v2, v3

    move v3, v8

    .line 694
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_9
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v14, v2, v3

    move v3, v8

    .line 696
    .end local v8    # "op":I
    .end local v10    # "t":I
    .restart local v3    # "op":I
    :cond_a
    goto/16 :goto_5

    :cond_b
    sub-int v8, v5, v12

    add-int/lit8 v10, v6, -0x2

    if-ne v8, v10, :cond_11

    .line 697
    const/4 v8, 0x0

    .line 698
    .local v8, "t":I
    if-le v12, v11, :cond_c

    iget-object v10, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    add-int/lit8 v8, v8, 0x1

    aget-byte v9, v10, v9

    goto :goto_3

    :cond_c
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "p":I
    .restart local v9    # "p":I
    aget-byte v5, p1, v5

    move/from16 v17, v9

    move v9, v5

    move/from16 v5, v17

    .end local v9    # "p":I
    .restart local v5    # "p":I
    :goto_3
    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v14

    if-lez v12, :cond_d

    iget-object v10, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "t":I
    .local v15, "t":I
    aget-byte v8, v10, v8

    goto :goto_4

    .end local v15    # "t":I
    .restart local v8    # "t":I
    :cond_d
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "p":I
    .local v10, "p":I
    aget-byte v5, p1, v5

    move v15, v8

    move v8, v5

    move v5, v10

    .end local v8    # "t":I
    .end local v10    # "p":I
    .restart local v5    # "p":I
    .restart local v15    # "t":I
    :goto_4
    and-int/lit16 v8, v8, 0xff

    const/4 v10, 0x2

    shl-int/2addr v8, v10

    or-int v7, v9, v8

    .line 700
    sub-int/2addr v12, v15

    iput v12, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    .line 701
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v9, v7, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v3

    .line 702
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v8

    .line 703
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    and-int/lit8 v9, v7, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v3

    .line 704
    iget-boolean v3, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v3, :cond_e

    .line 705
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v16, v2, v8

    move v8, v3

    .line 707
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_e
    iget-boolean v3, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v3, :cond_10

    .line 708
    iget-boolean v3, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_f

    .line 709
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v13, v2, v8

    move v8, v3

    .line 710
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_f
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v14, v2, v8

    move v8, v3

    .line 712
    .end local v3    # "op":I
    .end local v15    # "t":I
    .restart local v8    # "op":I
    :cond_10
    move v3, v8

    goto :goto_5

    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_11
    iget-boolean v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_13

    if-lez v3, :cond_13

    const/16 v8, 0x13

    if-eq v4, v8, :cond_13

    .line 713
    iget-boolean v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_12

    .line 714
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v13, v2, v3

    move v3, v8

    .line 715
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_12
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v14, v2, v3

    move v3, v8

    .line 718
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_13
    :goto_5
    iget v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    if-nez v8, :cond_15

    .line 719
    if-ne v5, v6, :cond_14

    goto :goto_6

    :cond_14
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 718
    :cond_15
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 724
    :cond_16
    add-int/lit8 v8, v6, -0x1

    if-ne v5, v8, :cond_17

    .line 725
    iget-object v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    iget v9, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    aget-byte v10, p1, v5

    aput-byte v10, v8, v9

    goto :goto_6

    .line 726
    :cond_17
    add-int/lit8 v8, v6, -0x2

    if-ne v5, v8, :cond_18

    .line 727
    iget-object v8, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->c:[B

    iget v9, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    aget-byte v12, p1, v5

    aput-byte v12, v8, v9

    .line 728
    add-int/lit8 v9, v10, 0x1

    iput v9, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    aput-byte v9, v8, v10

    .line 732
    :cond_18
    :goto_6
    iput v3, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->op:I

    .line 733
    iput v4, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->d:I

    .line 735
    return v11
.end method
