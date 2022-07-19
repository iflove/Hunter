.class public Lcom/ta/utdid2/android/utils/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/android/utils/Base64$Encoder;,
        Lcom/ta/utdid2/android/utils/Base64$Decoder;,
        Lcom/ta/utdid2/android/utils/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/android/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 154
    new-instance v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/android/utils/Base64$Decoder;-><init>(I[B)V

    const/4 v1, 0x0

    .line 156
    .local v1, "decoder":Lcom/ta/utdid2/android/utils/Base64$Decoder;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/ta/utdid2/android/utils/Base64$Decoder;->process([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget v0, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    iget-object v2, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 162
    iget-object v0, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    return-object v0

    .line 167
    :cond_0
    iget v0, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    new-array v0, v0, [B

    .line 168
    .local v0, "temp":[B
    iget-object v2, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    iget v3, v1, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v0

    .line 157
    .end local v0    # "temp":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-64"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/android/utils/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 501
    new-instance v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/android/utils/Base64$Encoder;-><init>(I[B)V

    .line 504
    .local v0, "encoder":Lcom/ta/utdid2/android/utils/Base64$Encoder;
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 507
    .local v1, "output_len":I
    iget-boolean v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 508
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_3

    .line 509
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 512
    :cond_0
    rem-int/lit8 v2, p2, 0x3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 516
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 517
    nop

    .line 525
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_5

    if-lez p2, :cond_5

    .line 526
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v4

    iget-boolean v5, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    mul-int v2, v2, v3

    add-int/2addr v1, v2

    .line 530
    :cond_5
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    .line 531
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/ta/utdid2/android/utils/Base64$Encoder;->process([BIIZ)Z

    .line 533
    iget v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->op:I

    if-ne v2, v1, :cond_6

    .line 535
    iget-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    return-object v2

    .line 533
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/android/utils/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/ta/utdid2/android/utils/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
