.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;
.super Ljava/lang/Object;
.source "LzmaAlone.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a:Ljava/lang/String;

    const-string/jumbo v2, "sevenZipFile"

    invoke-interface {v0, v1, v2, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 27
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 31
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    nop

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_9

    .line 40
    :cond_1
    const/4 p1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 42
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 46
    :try_start_2
    new-instance p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;

    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a()V

    .line 48
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 51
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    .line 52
    mul-int/lit8 v1, p1, 0x8

    ushr-long v6, v4, v1

    long-to-int v1, v6

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 51
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZMA_Encoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 99
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    goto :goto_2

    .line 101
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 83
    :goto_2
    const/4 p0, 0x1

    return p0

    .line 86
    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object v3, p1

    :goto_3
    move-object p1, v2

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object v3, p1

    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 90
    if-eqz p1, :cond_3

    .line 92
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 95
    goto :goto_5

    .line 94
    :catchall_5
    move-exception p0

    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 99
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 102
    goto :goto_6

    .line 101
    :catchall_6
    move-exception p0

    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 87
    :cond_4
    :goto_6
    return v0

    .line 90
    :catchall_7
    move-exception p0

    if-eqz p1, :cond_5

    .line 92
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 95
    goto :goto_7

    .line 94
    :catchall_8
    move-exception p1

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 99
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 102
    goto :goto_8

    .line 101
    :catchall_9
    move-exception p1

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/Throwable;)V

    .line 102
    :cond_6
    :goto_8
    throw p0

    .line 37
    :cond_7
    :goto_9
    return v0

    .line 29
    :cond_8
    :goto_a
    return v0
.end method
