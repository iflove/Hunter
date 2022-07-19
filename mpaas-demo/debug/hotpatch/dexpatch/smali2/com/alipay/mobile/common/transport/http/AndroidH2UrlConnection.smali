.class public Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;
.super Ljava/lang/Object;
.source "AndroidH2UrlConnection.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b:Landroid/content/Context;

    .line 92
    const-string v0, "http.keepAliveDuration"

    const-string v1, "30000"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    const-string v0, "http.maxConnections"

    const-string v1, "19"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enableH2Logger()V

    .line 97
    return-void
.end method

.method private static a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .line 468
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 469
    return-object v1

    .line 473
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v2, v1

    .line 474
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 475
    return-object v1

    .line 477
    :cond_1
    return-object v2
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V
    .locals 9
    .param p0, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 342
    if-nez p0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    if-nez p1, :cond_1

    .line 346
    return-void

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    .line 350
    if-nez v0, :cond_2

    .line 351
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->c(Ljava/net/HttpURLConnection;)V

    return-void

    .line 354
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, "startTime":J
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->setupCacheDir()V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 360
    .local v6, "timeUsed":J
    move-wide v6, v2

    cmp-long v8, v2, v4

    if-lez v8, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5_CACHE_SETUP"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v0    # "startTime":J
    .end local v6    # "timeUsed":J
    :cond_3
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;Lorg/apache/http/message/BasicHttpResponse;)V
    .locals 6
    .param p0, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "response"    # Lorg/apache/http/message/BasicHttpResponse;

    .line 723
    if-nez p2, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    if-nez p0, :cond_1

    .line 728
    return-void

    .line 731
    :cond_1
    const-string v0, "X-Android-Selected-Protocol"

    invoke-virtual {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 732
    .local v0, "headerProtocol":Lorg/apache/http/Header;
    const-string v1, ""

    .line 733
    .local v1, "protocol":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 734
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 736
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 737
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string v3, "PROTOCOL"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[monitorFromRespHeaderInfos] urlconnection code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidH2UrlConnection"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    if-eqz v2, :cond_6

    .line 744
    const-string v2, "X-Android-Response-Source"

    invoke-virtual {p2, v2}, Lorg/apache/http/message/BasicHttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 745
    .local v2, "rspSource":Lorg/apache/http/Header;
    const-string v3, ""

    .line 746
    .local v3, "srcCode":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 747
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 750
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 751
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v4

    const-string v5, "H5_RSP_SRC"

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v2    # "rspSource":Lorg/apache/http/Header;
    .end local v3    # "srcCode":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p0, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 379
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b(Lcom/alipay/mobile/common/transport/context/TransportContext;Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 381
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 382
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 387
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    move-object v3, v1

    .line 388
    .local v3, "type":Lorg/apache/http/Header;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 393
    .local v1, "encoding":Lorg/apache/http/Header;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 394
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    .line 404
    nop

    .line 405
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v4, "Content-Length"

    invoke-virtual {p2, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 409
    return-void

    .line 398
    :cond_5
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 9
    .param p0, "objOkHttpClient"    # Ljava/lang/Object;

    .line 290
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connectionPool"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 291
    .local v2, "fieldConnectionPool":Ljava/lang/reflect/Field;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v1

    .line 294
    .local v4, "objectConnectionPool":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v5, v1

    .line 295
    .local v5, "clazzConnectionPool":Ljava/lang/Class;
    move-object v5, v0

    const-string/jumbo v6, "maxIdleConnections"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v6, v1

    .line 296
    .local v6, "fieldMaxIdleConnections":Ljava/lang/reflect/Field;
    move-object v6, v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    const-string v0, "keepAliveDurationNs"

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 300
    .local v1, "fieldKeepAliveDurationNs":Ljava/lang/reflect/Field;
    move-object v1, v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 302
    const-wide v7, 0x6fc23ac00L

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v1    # "fieldKeepAliveDurationNs":Ljava/lang/reflect/Field;
    .end local v2    # "fieldConnectionPool":Ljava/lang/reflect/Field;
    .end local v4    # "objectConnectionPool":Ljava/lang/Object;
    .end local v5    # "clazzConnectionPool":Ljava/lang/Class;
    .end local v6    # "fieldMaxIdleConnections":Ljava/lang/reflect/Field;
    return-void

    .line 303
    :catchall_0
    move-exception v0

    .line 304
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hookConnectionPool ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidH2UrlConnection"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 206
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 207
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 209
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 228
    const-string v0, "AndroidH2UrlConnection"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->enableExtensions(Ljava/net/HttpURLConnection;Z)V

    .line 230
    const-string/jumbo v1, "modifyParamtersInUrlConnection success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "modifyParamtersInUrlConnection ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V
    .locals 5
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p2, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 484
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    .line 485
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 486
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 497
    instance-of v0, v1, Lorg/apache/http/entity/ByteArrayEntity;

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 500
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 502
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    .local v0, "rpcBufferedOutputStream":Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;
    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 504
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->flush()V

    .line 508
    .end local v0    # "rpcBufferedOutputStream":Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "REQ_SIZE"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method private static a(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 370
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 371
    move-object v0, p0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .line 373
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 3
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 326
    const-string v1, "delegate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 327
    .local v1, "fieldDelegate":Ljava/lang/reflect/Field;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 328
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/alipay/mobile/common/transport/context/TransportContext;Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 9
    .param p0, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 422
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 423
    .local v3, "header":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v3    # "header":Lorg/apache/http/Header;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isRpcBizType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 431
    .restart local v3    # "header":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .end local v3    # "header":Lorg/apache/http/Header;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_2
    return-void

    .line 437
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v0, "backupHeaders":Ljava/util/HashMap;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v7, v2, v1

    .line 440
    .local v4, "header":Lorg/apache/http/Header;
    move-object v4, v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v5, "headerKey":Ljava/lang/String;
    move-object v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "AndroidH2UrlConnection"

    if-eqz v7, :cond_4

    .line 442
    const-string v7, "O, headerKey is null."

    invoke-static {v8, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    goto :goto_3

    .line 446
    :cond_4
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 448
    .local v6, "value":Ljava/lang/String;
    move-object v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 449
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 454
    :cond_5
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 438
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v5    # "headerKey":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 457
    .restart local v5    # "headerKey":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is a duplicate header that needs to be switched to http/1.1 \u3002key=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], value1=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u3001value2=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "errMsg":Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v2, Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    .end local v1    # "errMsg":Ljava/lang/String;
    .end local v5    # "headerKey":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 7
    .param p0, "objOkHttpClient"    # Ljava/lang/Object;

    .line 584
    if-nez p0, :cond_0

    .line 585
    const-string v0, "AndroidH2UrlConnection"

    const-string/jumbo v1, "objOkHttpClient is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 591
    .local v1, "networkField":Ljava/lang/reflect/Field;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 592
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dns"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 597
    :goto_0
    if-nez v1, :cond_2

    .line 598
    const-string v0, "AndroidH2UrlConnection"

    const-string/jumbo v2, "network field is null, return."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void

    .line 602
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 604
    sget-object v3, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->d:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 605
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    return-void

    .line 609
    :cond_3
    const-class v3, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    sget-object v4, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->d:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 612
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    monitor-exit v3

    return-void

    .line 617
    :cond_4
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 618
    .local v0, "rawNetworkObj":Ljava/lang/Object;
    move-object v0, v4

    if-nez v4, :cond_5

    .line 619
    const-string v2, "AndroidH2UrlConnection"

    const-string v4, "Raw network is null, return."

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    monitor-exit v3

    return-void

    .line 623
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    .line 624
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    move-result-object v5

    .line 623
    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->d:Ljava/lang/Object;

    .line 627
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;->setRawAndroidH2DnsHandler(Ljava/lang/Object;)V

    .line 629
    sget-object v2, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->d:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 630
    .end local v0    # "rawNetworkObj":Ljava/lang/Object;
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "objOkHttpClient":Ljava/lang/Object;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 631
    .end local v1    # "networkField":Ljava/lang/reflect/Field;
    .restart local p0    # "objOkHttpClient":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidH2UrlConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hookH2Dns fail, error=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static c(Ljava/lang/Object;)V
    .locals 5
    .param p0, "connection"    # Ljava/lang/Object;

    .line 638
    const-string v0, "AndroidH2UrlConnection"

    if-nez p0, :cond_0

    .line 639
    const-string v1, "[closeSocket] connection is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void

    .line 644
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "socket"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 645
    .local v3, "socketField":Ljava/lang/reflect/Field;
    move-object v3, v2

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 646
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    .line 647
    .local v1, "socket":Ljava/net/Socket;
    move-object v1, v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 649
    const-string v2, "[closeSocket] closeSocket success."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 651
    .end local v3    # "socketField":Ljava/lang/reflect/Field;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[closeSocket] Socket "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v4, "it\'s null."

    goto :goto_0

    :cond_2
    const-string v4, "closed."

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    .end local v1    # "socket":Ljava/net/Socket;
    return-void

    .line 653
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_1
    move-object v2, v3

    .line 654
    .local v2, "e":Ljava/lang/Throwable;
    move-object v2, v1

    .line 655
    .local v1, "tmpThrowable":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_3

    .line 656
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 658
    :cond_3
    const-string v3, " closeSocket failed. "

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    .end local v1    # "tmpThrowable":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static c(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 333
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setUseCaches2False exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidH2UrlConnection"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static d(Ljava/net/HttpURLConnection;)Lorg/apache/http/message/BasicHttpResponse;
    .locals 8
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 515
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 516
    .local v0, "responseCode":I
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 519
    .local v1, "response":Lorg/apache/http/message/BasicHttpResponse;
    const/16 v2, 0x190

    if-ge v0, v2, :cond_0

    .line 520
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 523
    .local v2, "responseBody":Ljava/io/InputStream;
    :goto_0
    const/16 v3, 0x130

    if-ne v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_5

    .line 526
    :cond_1
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    .line 527
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 530
    .local v3, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .line 531
    :goto_1
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v5, "name":Ljava/lang/String;
    move-object v5, v6

    if-eqz v6, :cond_4

    .line 535
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v6, "header":Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v1, v6}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 537
    const-string v7, "Content-Type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 538
    invoke-virtual {v3, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    goto :goto_2

    .line 539
    :cond_2
    const-string v7, "Content-Encoding"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 540
    invoke-virtual {v3, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    goto :goto_2

    .line 541
    :cond_3
    const-string v7, "Content-Length"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 530
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "header":Lorg/apache/http/message/BasicHeader;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 546
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1, v3}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 548
    .end local v3    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_5
    return-object v1
.end method

.method private static e(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 11
    .param p0, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    const-string v0, "AndroidH2UrlConnection"

    .line 665
    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 666
    return-object v1

    .line 670
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    .line 671
    .local v3, "httpURLConnectionImpl":Ljava/lang/Object;
    move-object v3, v2

    if-nez v2, :cond_1

    .line 672
    return-object v1

    .line 676
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "httpEngine"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v4, v1

    .line 677
    .local v4, "httpEngineField":Ljava/lang/reflect/Field;
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 678
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v1

    .line 679
    .local v6, "httpEngin":Ljava/lang/Object;
    move-object v6, v2

    if-nez v2, :cond_2

    .line 680
    return-object v1

    .line 679
    :cond_2
    move-object v2, v1

    .line 684
    .local v2, "connection":Ljava/lang/Object;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_3

    .line 686
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "httpStream"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v8, v1

    .line 687
    .local v8, "httpStreamField":Ljava/lang/reflect/Field;
    move-object v8, v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 688
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v1

    .line 690
    .local v9, "http2xStreamObj":Ljava/lang/Object;
    move-object v9, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v10, "framedConnection"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v10, v1

    .line 691
    .local v10, "framedConnectionField":Ljava/lang/reflect/Field;
    move-object v10, v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 692
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 693
    .end local v8    # "httpStreamField":Ljava/lang/reflect/Field;
    .end local v9    # "http2xStreamObj":Ljava/lang/Object;
    .end local v10    # "framedConnectionField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "connection"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v8, v1

    .line 697
    .local v8, "connectionField":Ljava/lang/reflect/Field;
    move-object v8, v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 698
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 701
    .end local v8    # "connectionField":Ljava/lang/reflect/Field;
    :goto_0
    if-nez v2, :cond_4

    .line 702
    const-string v5, "[getCurrentConnection] connection is null."

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    return-object v1

    .line 705
    :cond_4
    return-object v2

    .line 706
    .end local v2    # "connection":Ljava/lang/Object;
    .end local v3    # "httpURLConnectionImpl":Ljava/lang/Object;
    .end local v4    # "httpEngineField":Ljava/lang/reflect/Field;
    .end local v6    # "httpEngin":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 707
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentConnection failed. errmsg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method public static enableExtensions(Ljava/net/HttpURLConnection;Z)V
    .locals 9
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "isEnableAmdc"    # Z

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 248
    return-void

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 255
    .local v2, "objHttpURLConnectionImpl":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 256
    const-string v3, "client"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v1

    .line 257
    .local v3, "fieldOkHttpClient":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "objOkHttpClient":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 262
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b(Ljava/lang/Object;)V

    .line 271
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "setProtocols"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 275
    .local v5, "methodSetProtocols":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "DEFAULT_PROTOCOLS"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 276
    .local v1, "fieldDefaultProtocols":Ljava/lang/reflect/Field;
    move-object v1, v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 278
    .local v6, "objDefaultProtocols":Ljava/lang/Object;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v8

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    instance-of v4, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_2

    .line 283
    move-object v4, p0

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 285
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 77
    monitor-exit v0

    return-object v1

    .line 80
    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    .line 84
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 9

    .line 102
    const-string v0, "AndroidH2UrlConnection"

    .line 103
    nop

    .line 104
    nop

    .line 106
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "NET_CONTEXT"

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/context/TransportContext;
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 107
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    const-string v4, "NETTUNNEL"

    const-string v5, "URLCONNECTION"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->mRadicalStrategy:Z

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    const-string v4, "RADICAL"

    const-string v5, "T"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    move-object v3, p2

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 116
    iget-byte v4, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object p1

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->H2_RPC_GWHOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "downgradeHttpsHost"

    invoke-interface {v4, v5, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 119
    invoke-static {v3, v1, v1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->constructNewHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 120
    new-instance p1, Lorg/apache/http/HttpHost;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->openConnection(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_1
    .catch Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 125
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v5

    .line 126
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 128
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v6

    .line 129
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,connectTimeout: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,readTimeout: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 135
    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V

    .line 137
    invoke-static {p2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 139
    invoke-static {v2, p2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 142
    invoke-static {p2, v2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V

    .line 145
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->e(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :try_start_3
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->d(Ljava/net/HttpURLConnection;)Lorg/apache/http/message/BasicHttpResponse;

    move-result-object v5

    .line 149
    if-nez v3, :cond_2

    .line 151
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->e(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    :cond_2
    invoke-static {p1, p2, v5, p3}, Lcom/alipay/mobile/common/transport/utils/HttpUtils;->extractCookiesFromResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 157
    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;Lorg/apache/http/message/BasicHttpResponse;)V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    move-result-object p1

    iget-byte p2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->resetFailCount(B)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    return-object v5

    .line 163
    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catchall_3
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    :goto_0
    move-object v4, v3

    .line 165
    :goto_1
    instance-of p2, p1, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz p2, :cond_3

    .line 166
    check-cast p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object p1

    .line 167
    nop

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[execute] Undeclared throwable :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[execute] Exception :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    move-result-object p2

    iget-byte p3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const-string v5, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p3, v5, v6, p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->reportH2Error(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 179
    goto :goto_3

    .line 177
    :catchall_4
    move-exception p2

    .line 183
    :goto_3
    :try_start_5
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_4

    .line 184
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->c(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 188
    :cond_4
    goto :goto_4

    .line 186
    :catchall_5
    move-exception p2

    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "[execute] closeSocket error. "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 191
    const-string p2, "[execute] AndroidH2UrlConnection. isNetworkAvailable == false "

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Ljava/lang/Throwable;)V

    .line 195
    :cond_5
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ERROR"

    invoke-interface {p2, v2, p3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Ljava/lang/Throwable;)V

    .line 200
    const-string p1, "[execute] It\'s impossible to get here"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v1

    .line 162
    :catch_0
    move-exception p1

    throw p1
.end method

.method protected getHttpUrlRequest(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .locals 4
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-eqz v0, :cond_0

    .line 554
    return-object v0

    .line 557
    :cond_0
    const/4 v0, 0x0

    .line 559
    .local v0, "originHttpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :try_start_0
    const-string/jumbo v1, "originRequest"

    invoke-interface {p1, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-object v0, v1

    .line 560
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    .line 562
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpUrlRequest cast fail. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidH2UrlConnection"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public obtainProxy(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/Proxy;
    .locals 6
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 569
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 570
    .local v0, "host":Lorg/apache/http/HttpHost;
    const/4 v1, 0x0

    .line 571
    .local v1, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    sget-object v2, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    if-eq v2, v0, :cond_0

    .line 572
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 573
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-static {v4, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v1, v2

    .line 575
    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 576
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "proxy":Ljava/net/Proxy;
    :catchall_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidH2UrlConnection"

    const-string/jumbo v2, "obtainProxy fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    .end local v0    # "e":Ljava/lang/Throwable;
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 213
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->obtainProxy(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 214
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->a(Ljava/net/HttpURLConnection;)V

    .line 215
    return-object v1
.end method
