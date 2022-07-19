.class public Lcom/alipay/mobile/quinox/security/Md5Verifier;
.super Ljava/lang/Object;
.source "Md5Verifier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Md5Util"

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/security/Md5Verifier;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "n":I
    move v0, p0

    if-gez p0, :cond_0

    .line 33
    add-int/lit16 v0, v0, 0x100

    .line 34
    :cond_0
    div-int/lit8 v1, v0, 0x10

    .line 35
    .local v1, "d1":I
    rem-int/lit8 v2, v0, 0x10

    .line 36
    .local v2, "d2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/mobile/quinox/security/Md5Verifier;->a:[Ljava/lang/String;

    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, "resultSb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 25
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static checkMd5(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "is1"    # Ljava/io/InputStream;
    .param p1, "is2"    # Ljava/io/InputStream;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "bRet":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 42
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genInputStreamMd5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "md5Sum1":Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genInputStreamMd5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "md5Sum2":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 49
    .end local v1    # "md5Sum1":Ljava/lang/String;
    .end local v2    # "md5Sum2":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static genFileMd5sum(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 59
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 65
    .local v2, "fis":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genInputStreamMd5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 66
    .end local v2    # "fis":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Md5Util"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-object v0

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static genInputStreamMd5sum(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    const-string v0, ""

    const-string v1, "Md5Util"

    .line 73
    const/16 v2, 0x400

    new-array v2, v2, [B

    .local v2, "buffer":[B
    const/4 v3, 0x0

    move v4, v3

    .line 77
    .local v4, "numRead":I
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 78
    .local v5, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v4, v6

    if-lez v6, :cond_0

    .line 79
    invoke-virtual {v5, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->a([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz p0, :cond_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    goto :goto_1

    .line 90
    :catch_0
    move-exception v6

    .line 91
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 82
    .end local v5    # "md5":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    if-eqz p0, :cond_2

    .line 88
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    goto :goto_2

    .line 90
    :catch_1
    move-exception v5

    .line 91
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 86
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    if-eqz p0, :cond_3

    .line 88
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    goto :goto_3

    .line 90
    :catch_2
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v3
.end method
