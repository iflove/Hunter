.class public Lcom/alipay/mobile/nebula/util/H5SecurityUtil;
.super Ljava/lang/Object;
.source "H5SecurityUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SecurityUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2Hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 49
    const-string v0, ""

    .local v0, "hs":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51
    .local v1, "stmp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 52
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    move-object v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "n":I
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    return-object v1

    .line 16
    :cond_0
    move-object v0, v1

    .line 21
    .local v0, "md5Digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 27
    .local v1, "charArray":[C
    move-object v1, v2

    array-length v2, v2

    new-array v2, v2, [B

    .line 29
    .local v2, "byteArray":[B
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 30
    aget-char v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "index":I
    :cond_1
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 34
    .local v3, "md5Bytes":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v4, "hexValue":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "index":I
    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_3

    .line 37
    aget-byte v7, v3, v5

    and-int/lit16 v7, v7, 0xff

    .line 38
    .local v6, "val":I
    move v6, v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_2

    .line 39
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .end local v6    # "val":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 44
    .end local v5    # "index":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    return-object v5

    .line 22
    .end local v1    # "charArray":[C
    .end local v2    # "byteArray":[B
    .end local v3    # "md5Bytes":[B
    .end local v4    # "hexValue":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SecurityUtil"

    const-string v4, "exception detail"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return-object v1
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    return-object v1

    .line 64
    :cond_0
    move-object v0, v1

    .line 69
    .local v0, "sha1Digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 74
    .local v1, "textBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 75
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 70
    .end local v1    # "textBytes":[B
    :catch_0
    move-exception v2

    move-object v2, v1

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static pathSecurityCheck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 81
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
