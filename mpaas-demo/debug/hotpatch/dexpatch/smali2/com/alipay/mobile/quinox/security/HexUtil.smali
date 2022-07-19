.class public Lcom/alipay/mobile/quinox/security/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static final bitsToBytes(Ljava/util/BitSet;I)[B
    .locals 10
    .param p0, "ba"    # Ljava/util/BitSet;
    .param p1, "size"    # I

    .line 105
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/HexUtil;->countBytesForBits(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 106
    .local v2, "bytesAlloc":I
    move v2, v0

    new-array v0, v0, [B

    .line 107
    .local v0, "b":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, "s":S
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/16 v8, 0x8

    if-ge v7, v8, :cond_3

    .line 111
    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v7

    .line 112
    .local v5, "idx":I
    move v5, v8

    if-le v8, p1, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    .line 114
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    :goto_2
    nop

    .line 115
    .local v8, "val":Z
    if-eqz v8, :cond_1

    const/4 v9, 0x1

    shl-int/2addr v9, v7

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_3
    or-int/2addr v9, v6

    int-to-short v6, v9

    .line 116
    if-eqz v8, :cond_2

    const/16 v9, 0x31

    goto :goto_4

    :cond_2
    const/16 v9, 0x30

    :goto_4
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    .end local v5    # "idx":I
    .end local v8    # "val":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    .end local v7    # "j":I
    :cond_3
    const/16 v7, 0xff

    if-gt v6, v7, :cond_4

    .line 119
    int-to-byte v7, v6

    aput-byte v7, v0, v4

    .line 108
    .end local v6    # "s":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .restart local v6    # "s":S
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "WTF? s = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v4    # "i":I
    .end local v6    # "s":S
    :cond_5
    return-object v0
.end method

.method public static final bitsToHexString(Ljava/util/BitSet;I)Ljava/lang/String;
    .locals 1
    .param p0, "ba"    # Ljava/util/BitSet;
    .param p1, "size"    # I

    .line 129
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/security/HexUtil;->bitsToBytes(Ljava/util/BitSet;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/HexUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToBits([BLjava/util/BitSet;I)V
    .locals 6
    .param p0, "b"    # [B
    .param p1, "ba"    # Ljava/util/BitSet;
    .param p2, "maxSize"    # I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 151
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 152
    if-gt v0, p2, :cond_1

    .line 153
    const/4 v3, 0x1

    shl-int v4, v3, v2

    .line 154
    aget-byte v5, p0, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 155
    .local v3, "value":Z
    :goto_2
    invoke-virtual {p1, v0, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 156
    nop

    .end local v3    # "value":Z
    add-int/lit8 v0, v0, 0x1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static final bytesToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bs"    # [B

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/quinox/security/HexUtil;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final bytesToHex([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/security/HexUtil;->bytesToHexAppend([BIILjava/lang/StringBuffer;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final bytesToHexAppend([BIILjava/lang/StringBuffer;)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 41
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 42
    aget-byte v1, p0, v0

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static countBytesForBits(I)I
    .locals 2
    .param p0, "size"    # I

    .line 139
    div-int/lit8 v0, p0, 0x8

    rem-int/lit8 v1, p0, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public static hexToBits(Ljava/lang/String;Ljava/util/BitSet;I)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ba"    # Ljava/util/BitSet;
    .param p2, "length"    # I

    .line 169
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/HexUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/security/HexUtil;->bytesToBits([BLjava/util/BitSet;I)V

    .line 171
    return-void
.end method

.method public static final hexToBytes(Ljava/lang/String;[BI)V
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 75
    .local v1, "slen":I
    move v1, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_0
    array-length v0, p1

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    if-lt v0, v2, :cond_3

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    int-to-byte v2, v2

    .line 93
    .local v2, "b1":B
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    int-to-byte v3, v3

    .line 94
    .local v3, "b2":B
    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    .line 97
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p2

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 91
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 95
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 99
    .end local v0    # "i":I
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :cond_2
    return-void

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output buffer too small for input ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final hexToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/security/HexUtil;->hexToBytes(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static final hexToBytes(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "off"    # I

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 57
    .local v0, "bs":[B
    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/quinox/security/HexUtil;->hexToBytes(Ljava/lang/String;[BI)V

    .line 58
    return-object v0
.end method
