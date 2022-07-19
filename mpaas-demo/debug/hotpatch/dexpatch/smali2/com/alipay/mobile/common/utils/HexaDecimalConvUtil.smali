.class public final Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;
.super Ljava/lang/Object;
.source "HexaDecimalConvUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ljava/lang/String;)J
    .locals 13
    .param p0, "src"    # Ljava/lang/String;

    .line 65
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 66
    .local v0, "bit":I
    const-wide/16 v1, 0x0

    .line 67
    .local v1, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 68
    .local v5, "len":I
    move v5, v3

    .line 71
    .local v3, "num":I
    .local v4, "b":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 72
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-static {v7}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->getNum(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 75
    int-to-long v7, v4

    int-to-double v9, v0

    add-int/lit8 v11, v3, -0x1

    int-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-long v9, v9

    mul-long v7, v7, v9

    add-long/2addr v1, v7

    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    .end local v6    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static final a(J)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # J

    .line 52
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    .line 53
    .local v1, "bit":I
    move v1, v0

    new-array v0, v0, [C

    .line 54
    .local v0, "buf":[C
    move v2, v1

    .line 58
    .local v2, "charPos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    const-wide/16 v4, 0x3f

    and-long/2addr v4, p0

    long-to-int v5, v4

    aget-char v3, v3, v5

    aput-char v3, v0, v2

    .line 59
    const/4 v3, 0x6

    ushr-long v3, p0, v3

    .line 60
    move-wide p0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 61
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 60
    :cond_0
    goto :goto_0
.end method

.method public static final c10to64(J)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # J

    .line 26
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c64to10(Ljava/lang/String;)J
    .locals 2
    .param p0, "num"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getNum(Ljava/lang/String;)I
    .locals 4
    .param p0, "single"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 91
    sget-object v2, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    move v0, v1

    .line 94
    goto :goto_1

    .line 90
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "n":I
    :cond_1
    :goto_1
    return v0
.end method
