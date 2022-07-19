.class Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;
.super Ljava/lang/Object;
.source "CharArrayBuffers.java"


# static fields
.field static final uppercaseAddon:C = ' '


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)C
    .locals 1
    .param p0, "c"    # C

    .line 84
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 85
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 87
    :cond_0
    return p0
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    .locals 10
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "beginIndex"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .line 42
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    .line 43
    .local v1, "chars":[C
    :goto_0
    if-ge p1, v0, :cond_0

    aget-char v2, v1, p1

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 47
    .local v2, "size":I
    add-int v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 48
    .local v3, "ok":Z
    :goto_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-eqz v3, :cond_4

    if-ge v6, v2, :cond_4

    .line 49
    add-int v7, p1, v6

    aget-char v7, v1, v7

    .line 50
    .local v7, "a":C
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 51
    .local v8, "b":C
    if-eq v7, v8, :cond_3

    .line 52
    invoke-static {v7}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->a(C)C

    move-result v7

    .line 53
    invoke-static {v8}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->a(C)C

    move-result v8

    .line 54
    if-ne v7, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    move v3, v9

    .line 48
    .end local v7    # "a":C
    .end local v8    # "b":C
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 57
    .end local v6    # "j":I
    :cond_4
    return v3
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 5
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "ch"    # I

    .line 67
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .line 68
    .local v0, "endIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    .line 70
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 71
    aget-char v4, v1, v2

    .line 72
    .local v3, "current":C
    move v3, v4

    if-ne v4, p1, :cond_0

    .line 73
    return v2

    .line 74
    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    .line 76
    add-int/lit8 v4, v3, 0x20

    int-to-char v3, v4

    .line 77
    aput-char v3, v1, v2

    .line 70
    .end local v3    # "current":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method
