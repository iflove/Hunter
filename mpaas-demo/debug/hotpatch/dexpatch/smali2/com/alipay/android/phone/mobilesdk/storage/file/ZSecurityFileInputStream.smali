.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;
.super Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;
.source "ZSecurityFileInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZSecurityFileInputStream"


# instance fields
.field private bytePos:I

.field private mBuffer:[B

.field private mContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContextWrapper;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/ContextWrapper;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mContext:Landroid/content/ContextWrapper;

    .line 27
    if-eqz p2, :cond_0

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private initBuffer()V
    .locals 5

    .line 95
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 96
    .local v2, "size":I
    move v2, v0

    new-array v0, v0, [B

    .line 97
    .local v0, "enBuffer":[B
    invoke-super {p0, v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->read([BII)I

    .line 98
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->close()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mContext:Landroid/content/ContextWrapper;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "ZSecurityFileInputStream"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->initBuffer()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->initBuffer()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-eqz v0, :cond_3

    .line 81
    array-length v1, v0

    .line 82
    .local v1, "totalLen":I
    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    if-lt v2, v1, :cond_1

    .line 83
    const/4 v0, -0x1

    return v0

    .line 86
    :cond_1
    add-int v3, v2, p3

    if-le v3, v1, :cond_2

    .line 87
    sub-int p3, v1, v2

    .line 89
    :cond_2
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    .line 91
    return p3

    .line 79
    .end local v1    # "totalLen":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TaobaoSecurityEncryptor.decrypt = null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
