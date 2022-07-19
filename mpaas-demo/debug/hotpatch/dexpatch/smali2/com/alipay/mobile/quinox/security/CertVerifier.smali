.class public Lcom/alipay/mobile/quinox/security/CertVerifier;
.super Ljava/lang/Object;
.source "CertVerifier.java"


# static fields
.field public static final KEY_CLIENT_SIGNATURE:Ljava/lang/String; = "client_signature"


# instance fields
.field private a:Ljava/security/PublicKey;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->b:Z

    .line 49
    return-void
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 9
    .param p0, "buffer"    # [B
    .param p1, "len"    # I

    .line 184
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 185
    .local v1, "magicDirEnd":[B
    array-length v2, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 187
    .local v3, "buffLen":I
    move v3, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x16

    .local v2, "i":I
    :goto_0
    const-string v4, "CertVerifier"

    if-ltz v2, :cond_4

    .line 188
    const/4 v5, 0x1

    .line 189
    .local v5, "isMagicStart":Z
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 190
    add-int v7, v2, v6

    aget-byte v7, p0, v7

    aget-byte v8, v1, v6

    if-eq v7, v8, :cond_0

    .line 191
    const/4 v5, 0x0

    .line 192
    goto :goto_2

    .line 189
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 195
    .end local v6    # "k":I
    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    .line 197
    add-int/lit8 v0, v2, 0x14

    aget-byte v0, p0, v0

    add-int/lit8 v6, v2, 0x15

    aget-byte v6, p0, v6

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v0, v6

    .line 198
    .local v0, "commentLen":I
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x16

    .line 199
    .local v6, "realLen":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ZIP comment found at buffer position "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v2, 0x16

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " with len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", good!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eq v0, v6, :cond_2

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WARNING! ZIP comment size mismatch: directory says len is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", but file ends after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x16

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v4, p0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 209
    return-object v4

    .line 187
    .end local v0    # "commentLen":I
    .end local v5    # "isMagicStart":Z
    .end local v6    # "realLen":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_4
    const-string v0, "ERROR! ZIP comment NOT found!"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static a(Ljava/security/PublicKey;Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 6
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "jarEntry"    # Ljava/util/jar/JarEntry;
    .param p2, "path"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    .local v1, "certs":[Ljava/security/cert/Certificate;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "CertVerifier"

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no certs"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v2

    .line 227
    :cond_0
    array-length v0, v1

    if-lez v0, :cond_1

    .line 228
    array-length v0, v1

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 230
    :try_start_0
    aget-object v5, v1, v0

    invoke-virtual {v5, p0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    return v4

    .line 232
    :catchall_0
    move-exception v5

    .line 233
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v3, p2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .end local v5    # "e":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 137
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 139
    .local v1, "digester":Ljava/security/MessageDigest;
    const v2, 0x28000

    new-array v2, v2, [B

    .line 141
    .local v2, "bytes":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "byteCount":I
    if-lez v3, :cond_0

    .line 142
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    :cond_1
    return-object v3

    .line 146
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "bytes":[B
    .end local v4    # "byteCount":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    :cond_2
    throw v1
.end method

.method public static extractZipComment(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "retStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    .line 158
    .local v2, "fileLen":I
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v1, "in":Ljava/io/FileInputStream;
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 170
    .local v3, "buffer":[B
    array-length v4, v3

    sub-int v4, v2, v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 172
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    if-lez v4, :cond_0

    .line 173
    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/security/CertVerifier;->a([BI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 176
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "fileLen":I
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertVerifier"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkSign(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 65
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->a:Ljava/security/PublicKey;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/security/CertVerifier;->verifyApk(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return v1

    :cond_1
    return v0

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verify sign error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertVerifier"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return v0

    .line 66
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return v1
.end method

.method protected getPackageSignatures(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "CertVerifier"

    .line 243
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 243
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v3, v1

    .line 246
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "client_signature"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    .line 248
    .local v4, "cs":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/quinox/security/CertVerifier;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 255
    .end local v2    # "signature":Landroid/content/pm/Signature;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "cs":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "get unknown error "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v3, "get signature error "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    nop

    .line 258
    :goto_0
    return-object v1
.end method

.method protected getPublicKey([B)Ljava/security/PublicKey;
    .locals 2
    .param p1, "signature"    # [B

    .line 263
    nop

    .line 264
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 266
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 267
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 268
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->a:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->getPackageSignatures(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->a:Ljava/security/PublicKey;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    const-string v2, "quinox_cert_verifier"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->c:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mEnable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CertVerifier"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public verifyApk(Ljava/lang/String;)Z
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 89
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "jarFile":Ljava/util/jar/JarFile;
    const/4 v3, 0x0

    move-object v4, v3

    .local v4, "digests":[B
    move-object v5, v3

    .line 95
    .local v5, "signature":[B
    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 96
    move-object v2, v6

    const-string v7, "classes.dex"

    invoke-virtual {v6, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v3

    .line 97
    .local v7, "jarEntry":Ljava/util/jar/JarEntry;
    move-object v7, v6

    if-nez v6, :cond_1

    .line 110
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 98
    return v1

    .line 100
    :cond_1
    :try_start_1
    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/security/CertVerifier;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B

    move-result-object v6

    move-object v4, v6

    .line 102
    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/CertVerifier;->extractZipComment(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .local v3, "content":Ljava/lang/String;
    move-object v3, v6

    const-string v8, "CertVerifier"

    if-nez v6, :cond_2

    .line 104
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "old cert: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->a:Ljava/security/PublicKey;

    invoke-static {v1, v7, p1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->a(Ljava/security/PublicKey;Ljava/util/jar/JarEntry;Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 105
    return v1

    .line 107
    :cond_2
    :try_start_3
    invoke-static {v3}, Lcom/alipay/mobile/quinox/security/HexUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v6

    .line 110
    .end local v5    # "signature":[B
    .end local v7    # "jarEntry":Ljava/util/jar/JarEntry;
    .local v3, "signature":[B
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 115
    nop

    .line 116
    const-string v5, "SHA1withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 119
    .local v5, "signet":Ljava/security/Signature;
    :try_start_4
    iget-object v6, p0, Lcom/alipay/mobile/quinox/security/CertVerifier;->a:Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 120
    invoke-virtual {v5, v4}, Ljava/security/Signature;->update([B)V

    .line 121
    invoke-virtual {v5, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v6
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v6, :cond_3

    .line 122
    return v1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/security/SignatureException;
    invoke-static {v8, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-static {v8, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_3
    nop

    .line 129
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 109
    .end local v3    # "signature":[B
    .local v5, "signature":[B
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    throw v1

    .line 86
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "jarFile":Ljava/util/jar/JarFile;
    .end local v4    # "digests":[B
    .end local v5    # "signature":[B
    :cond_5
    :goto_1
    return v1
.end method
