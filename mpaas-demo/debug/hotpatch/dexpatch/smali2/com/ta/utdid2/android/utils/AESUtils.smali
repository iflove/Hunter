.class public Lcom/ta/utdid2/android/utils/AESUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .line 68
    if-nez p0, :cond_0

    .line 69
    const-string v0, ""

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 72
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 73
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lcom/ta/utdid2/android/utils/AESUtils;->a(Ljava/lang/StringBuffer;B)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .line 80
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v0, p1, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method private static a()[B
    .locals 1

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 40
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/RC4;->rc4([B)[B

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x21t
        0x53t
        -0x32t
        -0x59t
        -0x54t
        -0x72t
        0x50t
        0x63t
        0xat
        0x3ft
        0x16t
        -0x41t
        -0xbt
        0x1et
        0x65t
        -0x76t
    .end array-data
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 60
    .local v1, "len":I
    move v1, v0

    new-array v0, v0, [B

    .line 61
    .local v0, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 62
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static a([B[B)[B
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B

    .line 44
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x0

    .line 46
    .local v2, "cipher":Ljavax/crypto/Cipher;
    move-object v2, v1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/android/utils/AESUtils;->b()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static b()[B
    .locals 2

    .line 85
    :try_start_0
    const-string v0, "IUQSvE6r1TfFPdPEjfklLw=="

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    .local v1, "content":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/RC4;->rc4([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    .end local v1    # "content":[B
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :goto_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method private static b([B[B)[B
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B

    .line 52
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    .local v2, "cipher":Ljavax/crypto/Cipher;
    move-object v2, v1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/android/utils/AESUtils;->b()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encrypted"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ta/utdid2/android/utils/AESUtils;->a()[B

    move-result-object v1

    .line 30
    .local v1, "rawKey":[B
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/AESUtils;->a(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .local v2, "enc":[B
    :try_start_1
    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/AESUtils;->b([B[B)[B

    move-result-object v3

    .line 32
    .local v3, "result":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 33
    .end local v1    # "rawKey":[B
    .end local v2    # "enc":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_0
    move-object v1, v2

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "clearText"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, "result":[B
    :try_start_0
    invoke-static {}, Lcom/ta/utdid2/android/utils/AESUtils;->a()[B

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/AESUtils;->a([B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 19
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 20
    :goto_0
    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/AESUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 23
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
