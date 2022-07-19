.class public Lcom/alipay/mobile/nebulax/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x800

.field private static final sByteArrayPool:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .line 44
    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v0, "close stream exception"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public static getBuf(I)[B
    .locals 1

    .line 33
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->getBuf(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getByteArrayPool()Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->readToByte(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    nop

    .line 86
    nop

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string v0, "read exception"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 93
    :goto_0
    return-object p0
.end method

.method public static readToByte(Ljava/io/InputStream;)[B
    .locals 5

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 62
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 63
    if-gez v4, :cond_1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    :try_start_1
    const-string v2, "read exception"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    nop

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 71
    :goto_2
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static returnBuf([B)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->returnBuf([B)V

    .line 41
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 105
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 106
    :catch_0
    move-exception p0

    .line 110
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 112
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    nop

    .line 117
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    nop

    .line 122
    goto :goto_1

    .line 121
    :catch_1
    move-exception p0

    .line 123
    nop

    .line 124
    :goto_1
    return-void

    .line 115
    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 116
    :goto_2
    if-eqz v1, :cond_2

    .line 117
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 119
    goto :goto_3

    .line 121
    :catch_2
    move-exception p1

    goto :goto_4

    .line 122
    :cond_2
    :goto_3
    nop

    :goto_4
    throw p0
.end method
