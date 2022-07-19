.class public Lcom/alipay/mobile/nebula/util/H5IOUtils;
.super Ljava/lang/Object;
.source "H5IOUtils.java"


# static fields
.field public static final MAP_FILE_THRESHOLD_MIN:I = 0x10000

.field public static final MAP_FILE_THRESHOOLD_MAX:I = 0x500000

.field private static final TAG:Ljava/lang/String; = "H5IOUtils"

.field private static final sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "H5IOUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public static fileToByte(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    move-object v0, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "H5IOUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    const/4 v2, 0x0

    return-object v2

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V
    .locals 8
    .param p0, "buffer"    # Ljava/nio/MappedByteBuffer;

    .line 114
    if-nez p0, :cond_0

    .line 115
    return-void

    .line 119
    :cond_0
    :try_start_0
    const-string v0, "java.nio.NioUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 120
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "freeDirectBuffer"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 121
    .local v3, "freeMethod":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    nop

    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "freeMethod":Ljava/lang/reflect/Method;
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5IOUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static getBuf(I)[B
    .locals 1
    .param p0, "size"    # I

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    return-object v0
.end method

.method public static inputToByte(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 67
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 80
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 81
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    return-object v2

    .line 70
    :cond_0
    const/16 v3, 0x800

    :try_start_0
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v3

    move-object v0, v3

    .line 72
    new-instance v3, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    move-object v1, v3

    .line 73
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "count":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 81
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 76
    return-object v2

    .line 80
    .end local v4    # "count":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "H5IOUtils"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 81
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    nop

    .line 83
    return-object v2

    .line 80
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 81
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static isNIOEnabled()Z
    .locals 4

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "enabled":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 102
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "h5_nebulaUseNIO"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 109
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isNIOEnabled "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H5IOUtils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v0
.end method

.method public static returnBuf([B)V
    .locals 1
    .param p0, "buffer"    # [B

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 51
    return-void
.end method
