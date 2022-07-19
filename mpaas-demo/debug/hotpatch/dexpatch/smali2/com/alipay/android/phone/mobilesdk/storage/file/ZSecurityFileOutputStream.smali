.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;
.super Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;
.source "ZSecurityFileOutputStream.java"


# instance fields
.field private byteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private byteSize:I

.field private mContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContextWrapper;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/ContextWrapper;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    .line 28
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->mContext:Landroid/content/ContextWrapper;

    .line 29
    if-eqz p2, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 75
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    new-array v0, v0, [B

    .line 76
    nop

    .line 78
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 81
    iget v5, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    array-length v6, v4

    add-int/2addr v6, v3

    if-lt v5, v6, :cond_0

    .line 82
    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :cond_0
    array-length v4, v4

    add-int/2addr v3, v4

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->mContext:Landroid/content/ContextWrapper;

    invoke-static {v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    array-length v2, v0

    invoke-super {p0, v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->write([BII)V

    .line 98
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->close()V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->write(I)V

    .line 71
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    .line 44
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 57
    move v0, p3

    .line 58
    .local v0, "size":I
    array-length v1, p1

    if-le p3, v1, :cond_0

    .line 59
    array-length v0, p1

    .line 61
    :cond_0
    new-array v1, v0, [B

    .line 62
    .local v1, "sBuffer":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    .line 65
    return-void
.end method
