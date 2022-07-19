.class public Lcom/alipay/mobile/common/utils/HexStringUtil;
.super Ljava/lang/Object;
.source "HexStringUtil.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/utils/HexStringUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 39
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alipay/mobile/common/utils/HexStringUtil;->a:[C

    .line 45
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/common/utils/HexStringUtil;->b:[C

    return-void

    nop

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sget-object v0, Lcom/alipay/mobile/common/utils/HexStringUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/HexStringUtil;->c:Ljava/nio/charset/Charset;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 185
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;-><init>(Ljava/nio/charset/Charset;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/common/utils/HexStringUtil;->c:Ljava/nio/charset/Charset;

    .line 175
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 138
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static decodeHex([C)[B
    .locals 6
    .param p0, "data"    # [C

    .line 59
    array-length v0, p0

    const/4 v1, 0x0

    .line 61
    .local v1, "len":I
    move v1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 65
    shr-int/lit8 v0, v1, 0x1

    new-array v0, v0, [B

    .line 68
    .local v0, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 69
    aget-char v4, p0, v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/HexStringUtil;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 70
    .local v4, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 71
    aget-char v5, p0, v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/utils/HexStringUtil;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 68
    .end local v4    # "f":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-object v0

    .line 62
    .end local v0    # "out":[B
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Odd number of characters."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .line 104
    if-eqz p1, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/utils/HexStringUtil;->a:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/utils/HexStringUtil;->b:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .line 119
    array-length v0, p0

    const/4 v1, 0x0

    .line 120
    .local v1, "l":I
    move v1, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 122
    .local v0, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 123
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v0, v3

    .line 124
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v0, v4

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .line 150
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, 0x0

    .line 151
    .local v1, "digit":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 154
    return v1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal hexadecimal character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 219
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    .line 220
    .local v1, "charArray":[C
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->decodeHex([C)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    .end local v1    # "charArray":[C
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode([B)[B
    .locals 2
    .param p1, "array"    # [B

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 260
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    .line 262
    .local v1, "byteArray":[B
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->encodeHex([B)[C

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 263
    .end local v1    # "byteArray":[B
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B

    .line 241
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/HexStringUtil;->c:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/HexStringUtil;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/utils/HexStringUtil;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
