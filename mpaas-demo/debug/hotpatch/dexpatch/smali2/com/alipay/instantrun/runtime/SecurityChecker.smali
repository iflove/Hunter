.class public Lcom/alipay/instantrun/runtime/SecurityChecker;
.super Ljava/lang/Object;
.source "SecurityChecker.java"


# static fields
.field private static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field public static final SP_MD5:Ljava/lang/String; = "-md5"

.field private static final SP_NAME:Ljava/lang/String; = "instant_run"

.field private static final TAG:Ljava/lang/String; = "IR.SecurityChecker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mPublicKey:Ljava/security/PublicKey;

.field private mVerifiedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mVerifiedSet:Ljava/util/Set;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/instantrun/runtime/SecurityChecker;->init(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method private check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .locals 5

    .line 140
    array-length v0, p2

    if-lez v0, :cond_0

    .line 141
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 143
    :try_start_0
    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return v1

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IR.SecurityChecker"

    invoke-static {v4, v3, v2}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .line 154
    const-string v0, "getFileMD5"

    const-string v1, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 155
    return-object v3

    .line 158
    :cond_0
    nop

    .line 159
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 162
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 163
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    .line 165
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, p1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 173
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    goto :goto_1

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    invoke-static {v1, v0, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    nop

    .line 178
    :goto_1
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 179
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v5, v3

    .line 168
    :goto_2
    :try_start_3
    invoke-static {v1, v0, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 172
    if-eqz v5, :cond_2

    .line 173
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 174
    :catchall_3
    move-exception p1

    .line 175
    invoke-static {v1, v0, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 176
    :cond_2
    :goto_3
    nop

    .line 169
    :goto_4
    return-object v3

    .line 171
    :catchall_4
    move-exception p1

    .line 172
    if-eqz v5, :cond_3

    .line 173
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    .line 174
    :catchall_5
    move-exception v2

    .line 175
    invoke-static {v1, v0, v2}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 176
    :cond_3
    :goto_5
    nop

    :goto_6
    throw p1
.end method

.method private getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "instant_run"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-md5"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 4

    .line 199
    const-string v0, "init"

    const-string v1, "IR.SecurityChecker"

    if-eqz p2, :cond_0

    .line 200
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mDebuggable:Z

    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 206
    const/16 v2, 0x40

    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 208
    const-string p2, "X.509"

    .line 209
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 210
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    .line 211
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    nop

    .line 213
    invoke-virtual {p2, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 214
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 217
    :catch_0
    move-exception p1

    .line 218
    invoke-static {v1, v0, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    return-void

    .line 215
    :catch_1
    move-exception p1

    .line 216
    invoke-static {v1, v0, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method private loadDigests(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 1

    .line 125
    nop

    .line 127
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    const/16 p2, 0x2000

    :try_start_1
    new-array p2, p2, [B

    .line 129
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_0

    .line 132
    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    .line 136
    :cond_1
    return-void

    .line 132
    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p2
.end method

.method private saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "instant_run"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-md5"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method


# virtual methods
.method public isDebug()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mDebuggable:Z

    return v0
.end method

.method public saveOptSig(Ljava/io/File;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/instantrun/runtime/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/alipay/instantrun/runtime/SecurityChecker;->saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public declared-synchronized verifyApk(Ljava/io/File;)Z
    .locals 6

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mDebuggable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 82
    const-string p1, "IR.SecurityChecker"

    const-string v0, "mDebuggable = true"

    invoke-static {p1, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 83
    monitor-exit p0

    return v1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 89
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/instantrun/runtime/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mVerifiedSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const-string v3, "IR.SecurityChecker"

    const-string/jumbo v4, "verifyApk: hit mVerifiedSet, return true"

    invoke-static {v3, v4}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 92
    monitor-exit p0

    return v1

    .line 94
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 96
    :try_start_3
    const-string v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 97
    if-nez v0, :cond_2

    .line 116
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_5
    const-string v1, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 98
    :goto_0
    monitor-exit p0

    return v2

    .line 100
    :cond_2
    :try_start_6
    invoke-direct {p0, v1, v0}, Lcom/alipay/instantrun/runtime/SecurityChecker;->loadDigests(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    .line 101
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 102
    if-nez v0, :cond_3

    .line 116
    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 120
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    :try_start_8
    const-string v1, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 103
    :goto_1
    monitor-exit p0

    return v2

    .line 105
    :cond_3
    :try_start_9
    invoke-direct {p0, p1, v0}, Lcom/alipay/instantrun/runtime/SecurityChecker;->check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 107
    iget-object v4, p0, Lcom/alipay/instantrun/runtime/SecurityChecker;->mVerifiedSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 116
    :cond_4
    :try_start_a
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 120
    goto :goto_2

    .line 118
    :catchall_2
    move-exception v1

    .line 119
    :try_start_b
    const-string v2, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 109
    :goto_2
    monitor-exit p0

    return v0

    .line 110
    :catchall_3
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 111
    :goto_3
    :try_start_c
    const-string v3, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 115
    if-eqz v0, :cond_5

    .line 116
    :try_start_d
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    .line 118
    :catchall_5
    move-exception v0

    .line 119
    :try_start_e
    const-string v1, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    nop

    .line 112
    :goto_5
    monitor-exit p0

    return v2

    .line 114
    :catchall_6
    move-exception v1

    .line 115
    if-eqz v0, :cond_6

    .line 116
    :try_start_f
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_6

    .line 118
    :catchall_7
    move-exception v0

    .line 119
    :try_start_10
    const-string v2, "IR.SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 120
    :cond_6
    :goto_6
    nop

    :goto_7
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 80
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public verifyOpt(Ljava/io/File;)Z
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/alipay/instantrun/runtime/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/instantrun/runtime/SecurityChecker;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
