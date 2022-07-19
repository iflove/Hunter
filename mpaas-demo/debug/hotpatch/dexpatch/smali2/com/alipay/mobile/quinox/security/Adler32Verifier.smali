.class public final Lcom/alipay/mobile/quinox/security/Adler32Verifier;
.super Ljava/lang/Object;
.source "Adler32Verifier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static checkAdler32(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;

    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genInputStreamAdler32Sum(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genFileAdler32Sum(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAdler32(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 5
    .param p0, "is1"    # Ljava/io/InputStream;
    .param p1, "is2"    # Ljava/io/InputStream;

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genInputStreamAdler32Sum(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genInputStreamAdler32Sum(Ljava/io/InputStream;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static genFileAdler32Sum(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 30
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genInputStreamAdler32Sum(Ljava/io/InputStream;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Adler32Verifier"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static genInputStreamAdler32Sum(Ljava/io/InputStream;)J
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 22
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/4 v1, 0x0

    .line 23
    .local v1, "adler32":Ljava/util/zip/Adler32;
    move-object v1, v0

    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 24
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method
