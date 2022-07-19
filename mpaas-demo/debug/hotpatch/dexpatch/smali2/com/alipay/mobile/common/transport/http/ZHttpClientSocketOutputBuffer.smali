.class public Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.source "ZHttpClientSocketOutputBuffer.java"


# instance fields
.field private a:Lorg/apache/http/util/ByteArrayBuffer;

.field private b:Ljava/io/OutputStream;

.field private c:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 30
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->getInnerMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a()Lorg/apache/http/util/ByteArrayBuffer;

    .line 44
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Lorg/apache/http/util/ByteArrayBuffer;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a:Lorg/apache/http/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "buffer"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v2, v0

    .line 99
    .local v2, "buffField":Ljava/lang/reflect/Field;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/util/ByteArrayBuffer;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a:Lorg/apache/http/util/ByteArrayBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v2    # "buffField":Ljava/lang/reflect/Field;
    nop

    .line 107
    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ZHttpClientSocketOutputBuffer"

    const-string v3, "getInnerBuffer fail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 104
    .local v0, "interruptedIOException":Ljava/io/InterruptedIOException;
    move-object v0, v2

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    throw v0
.end method


# virtual methods
.method public getInnerMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->c:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    .local v1, "metrics":Lorg/apache/http/io/HttpTransportMetrics;
    move-object v1, v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    if-eqz v0, :cond_1

    .line 86
    move-object v0, v1

    check-cast v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->c:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 87
    return-object v0

    .line 89
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "getInnerMetrics fail"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 48
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->b:Ljava/io/OutputStream;

    .line 50
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a()Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->flushBuffer()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->getInnerMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    .local v1, "metricsImpl":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 65
    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 67
    .end local v1    # "metricsImpl":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    :cond_1
    return-void

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a()Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a()Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 70
    .local v0, "freecapacity":I
    if-le p3, v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->flushBuffer()V

    .line 75
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;->a()Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 77
    .end local v0    # "freecapacity":I
    return-void
.end method
