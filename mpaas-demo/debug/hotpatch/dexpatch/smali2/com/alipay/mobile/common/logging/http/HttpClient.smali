.class public Lcom/alipay/mobile/common/logging/http/HttpClient;
.super Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
.source "HttpClient.java"


# static fields
.field private static a:Landroid/net/http/AndroidHttpClient;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lorg/apache/http/HttpRequest;

.field private e:Lorg/apache/http/HttpResponse;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->f:J

    .line 52
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->g:J

    .line 56
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a()Ljava/net/URL;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return-object v1

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "LogHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v1
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 5
    .param p0, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    const-string v1, "Content-Encoding"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 145
    .local v3, "headers":[Lorg/apache/http/Header;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 146
    return v0

    .line 148
    :cond_1
    array-length v1, v3

    if-lez v1, :cond_2

    .line 149
    aget-object v1, v3, v0

    .line 150
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v2, "value":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gzip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 153
    if-ltz v1, :cond_2

    .line 154
    const/4 v0, 0x1

    return v0

    .line 158
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private b()Lorg/apache/http/HttpHost;
    .locals 7

    .line 193
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 194
    .local v2, "url":Ljava/net/URL;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 195
    return-object v1

    .line 198
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 199
    .local v3, "host":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    return-object v1

    .line 202
    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 203
    .local v4, "protocol":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    return-object v1

    .line 206
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v5, 0x0

    .line 207
    .local v5, "port":I
    move v5, v0

    if-gtz v0, :cond_4

    .line 208
    const-string v0, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_3
    const/16 v0, 0x50

    :goto_0
    move v5, v0

    .line 211
    :cond_4
    :try_start_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v3, v5, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "LogHttpClient"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    return-object v1
.end method

.method private c()Lorg/apache/http/HttpHost;
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/NetUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 220
    .local v2, "network":Landroid/net/NetworkInfo;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 225
    .local v3, "host":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 227
    .local v0, "port":I
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 231
    .end local v0    # "port":I
    .end local v3    # "host":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "LogHttpClient"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private d()V
    .locals 8

    .line 349
    sget-object v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 350
    const-class v0, Lcom/alipay/mobile/common/logging/http/HttpClient;

    monitor-enter v0

    .line 351
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 354
    :try_start_1
    const-string v2, "alipay"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 355
    sput-object v2, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    move-object v3, v1

    .line 356
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 358
    const-string v2, "http.connection.timeout"

    const/16 v4, 0x7530

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 359
    const-string v2, "http.socket.timeout"

    const v4, 0x493e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 361
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-ge v2, v4, :cond_1

    .line 362
    sget-object v2, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 363
    .local v1, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    move-object v1, v2

    const-string v4, "https"

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 364
    .local v2, "defaultSocketFactory":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    new-instance v6, Lcom/alipay/mobile/common/logging/https/TLSv12SocketFactory;

    invoke-direct {v6, v2}, Lcom/alipay/mobile/common/logging/https/TLSv12SocketFactory;-><init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v1    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2    # "defaultSocketFactory":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    :cond_1
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v1

    .line 367
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "LogHttpClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    monitor-exit v0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 373
    :cond_3
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_5

    .line 375
    :try_start_3
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 376
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 378
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 382
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    :cond_4
    return-void

    .line 380
    :catchall_2
    move-exception v0

    .line 381
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method


# virtual methods
.method public closeStreamForNextExecute()V
    .locals 4

    .line 238
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->f:J

    .line 239
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->g:J

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 243
    :try_start_0
    instance-of v2, v0, Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_0

    .line 244
    check-cast v0, Lorg/apache/http/client/methods/HttpGet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 245
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 247
    :cond_0
    :try_start_2
    instance-of v2, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_1

    .line 248
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    .line 249
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    move-object v2, v1

    .line 254
    :goto_0
    goto :goto_1

    .line 252
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 255
    :goto_1
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    goto :goto_2

    .line 241
    :cond_2
    move-object v2, v1

    .line 258
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_4

    .line 260
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 261
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 263
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v1

    .line 264
    .local v3, "stream":Ljava/io/InputStream;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 270
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_3
    goto :goto_3

    .line 268
    :catchall_2
    move-exception v0

    .line 271
    :goto_3
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    .line 273
    :cond_4
    return-void
.end method

.method public getRequestLength()J
    .locals 5

    .line 80
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 81
    return-wide v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    instance-of v1, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_2

    .line 86
    :try_start_0
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    const/4 v1, 0x0

    move-object v2, v1

    .line 87
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 88
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v3

    .line 93
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_1

    .line 105
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    .local v1, "status":Lorg/apache/http/StatusLine;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 111
    .end local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_0
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getResponseContent()Ljava/lang/String;
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 120
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 121
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/ZipUtil;->unCompressGzip(Ljava/io/InputStream;)[B

    move-result-object v2

    move-object v3, v1

    .line 124
    .local v3, "data":[B
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 125
    array-length v2, v3

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->g:J

    .line 126
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 128
    .end local v3    # "data":[B
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 135
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "LogHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getResponseLength()J
    .locals 5

    .line 163
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 164
    return-wide v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 175
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public synchronousRequestByGET(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "paramData"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/NetUtil;->formatParamStringForGET(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 286
    .local v1, "params":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "getUrl":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    .line 288
    const-string v3, "Content-type"

    const-string/jumbo v4, "text/xml"

    invoke-interface {v2, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->d()V

    .line 291
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->b()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 292
    .local v2, "urlHost":Lorg/apache/http/HttpHost;
    sget-object v3, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    invoke-virtual {v3, v2, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "getUrl":Ljava/lang/String;
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "urlHost":Lorg/apache/http/HttpHost;
    nop

    .line 298
    return-object v3

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 296
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synchronousRequestByPOST([BLjava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "postData"    # [B
    .param p2, "headerData"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 311
    if-eqz p1, :cond_1

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 317
    .local v1, "zipEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 318
    array-length v2, p1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->f:J

    .line 319
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    goto :goto_1

    .line 312
    .end local v0    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v1    # "zipEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    const/4 v1, 0x0

    .line 322
    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 323
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 325
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    invoke-interface {v4, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_2

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->d()V

    .line 332
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->b()Lorg/apache/http/HttpHost;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .local v0, "urlHost":Lorg/apache/http/HttpHost;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    invoke-virtual {v2, v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    goto :goto_3

    .line 336
    :catch_0
    move-exception v2

    .line 338
    .local v1, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:Lorg/apache/http/HttpRequest;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v0    # "urlHost":Lorg/apache/http/HttpHost;
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    nop

    .line 345
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->e:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
