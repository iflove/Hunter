.class public Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field conn:Ljava/net/HttpURLConnection;

.field public conntimeout:I

.field public requesttimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 36
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->requesttimeout:I

    .line 37
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conntimeout:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->b:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    .line 46
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    .line 51
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 12

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "responseCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_DNS_HClient"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x0

    .line 206
    .local v3, "responseHeader":Ljava/util/Map;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .local v4, "entry":Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    .end local v3    # "responseHeader":Ljava/util/Map;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "contentEncoding":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 218
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v4, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 224
    .local v5, "buffer":[B
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 225
    invoke-virtual {v4, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 229
    .local v6, "serverRespData":[B
    const/4 v9, 0x0

    .line 231
    .local v9, "gZippedData":[B
    iget-boolean v10, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    if-eqz v10, :cond_4

    .line 232
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c([B)[B

    move-result-object v9

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got Zipped data, size:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_3

    array-length v2, v9

    :cond_3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_4
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    const-string/jumbo v10, "utf-8"

    if-nez v2, :cond_6

    .line 239
    if-eqz v0, :cond_5

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_5

    .line 240
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v1, "result":Ljava/lang/String;
    goto :goto_2

    .line 242
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Received no zip data, size:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_2

    .line 246
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 248
    .restart local v1    # "result":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 250
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 252
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->b(Ljava/lang/String;)V

    .line 254
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)V
    .locals 8
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;

    const/4 v0, 0x0

    .line 93
    .local v0, "useGzip":Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->generateStrategyReq(Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 95
    .local v3, "requestContent":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Ljava/lang/String;)V

    .line 101
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    .local v1, "requestBytes":[B
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    const-string v5, "HTTP_DNS_HClient"

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string v6, "X-appid"

    const-string/jumbo v7, "mwallet"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "Configured appid in header"

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a([BZ)[B

    move-result-object v4

    move-object v7, v2

    .line 121
    .local v7, "gZippedContent":[B
    move-object v7, v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    move v0, v6

    .line 123
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->c:Z

    if-eqz v4, :cond_4

    .line 126
    invoke-static {v7}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->b([B)[B

    move-result-object v4

    .line 127
    .local v2, "encrytedContent":[B
    move-object v2, v4

    if-eqz v4, :cond_3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Prepared cooked data, size:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 130
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 132
    :cond_3
    const-string v4, "Cooking failed"

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 139
    .end local v2    # "encrytedContent":[B
    :cond_4
    if-eqz v0, :cond_5

    .line 140
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 142
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 144
    :cond_5
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 145
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    move-object v2, v4

    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 150
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 153
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "requestContent"    # Ljava/lang/String;

    .line 364
    const-string v0, "HTTP_DNS_HClient"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isUseSign()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "timeStampStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v2, p1, v1, v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getSignData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "signData":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "x-amdc-appid"

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "x-amdc-ts"

    invoke-virtual {v3, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "x-amdc-sign"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v3

    .line 378
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 379
    .local v4, "entry":Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 385
    .end local v1    # "timeStampStr":Ljava/lang/String;
    .end local v2    # "signData":Ljava/lang/String;
    :cond_1
    return-void

    .line 383
    :catchall_0
    move-exception v1

    .line 384
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addSignParams ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 6
    .param p0, "responseHeader"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 425
    const-string v0, "HTTP_DNS_HClient"

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 426
    .local v2, "entry":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 430
    :cond_0
    return-void

    .line 428
    :catchall_0
    move-exception v1

    .line 429
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "printResponHeaders ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a([B)[B
    .locals 9
    .param p1, "zippedData"    # [B

    .line 295
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->b:Z

    .line 297
    .local v0, "useGzip":Z
    const/4 v1, 0x0

    .line 298
    .local v1, "result":[B
    if-eqz v0, :cond_2

    .line 299
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v2, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    .local v3, "unzipStream":Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 304
    .local v4, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 306
    .local v5, "deCryptBuffer":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "lenBuffer":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 307
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 311
    move-object v1, v6

    if-eqz v6, :cond_1

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unzipped data, compressed size"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", origsize ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "HTTP_DNS_HClient"

    invoke-static {v8, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 315
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 319
    .end local v2    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "unzipStream":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "deCryptBuffer":[B
    .end local v7    # "lenBuffer":I
    :cond_2
    return-object v1
.end method

.method private a([BZ)[B
    .locals 6
    .param p1, "requestBytes"    # [B
    .param p2, "smartMode"    # Z

    .line 265
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->b:Z

    .line 267
    .local v0, "useGzip":Z
    const/4 v1, 0x0

    .line 268
    .local v1, "result":[B
    if-eqz v0, :cond_0

    .line 270
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 271
    .local v2, "zippedCountingOS":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient$1;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 276
    .local v4, "tempout":Ljava/io/OutputStream;
    move-object v4, v3

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 277
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 278
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Gzip Pre-check, compressed size ="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", origsize ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "HTTP_DNS_HClient"

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 283
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 286
    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    array-length v5, p1

    if-lt v3, v5, :cond_0

    .line 288
    const/4 v1, 0x0

    .line 291
    .end local v2    # "zippedCountingOS":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "tempout":Ljava/io/OutputStream;
    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .line 390
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isUseSign()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 396
    .local v0, "responseHeader":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Ljava/util/Map;)V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "x-amdc-sign"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "amdcRespSign":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "x-amdc-ts"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "amdcTs":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "x-amdc-code"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 404
    .local v4, "amdcCode":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "7000"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "7001"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 405
    const-string v3, "7002"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 411
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p1, v2, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getSignData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "localSign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "amdcRespSign:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",localSign:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HTTP_DNS_HClient"

    invoke-static {v6, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 417
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 421
    return-void

    .line 418
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Ljava/util/Map;)V

    .line 419
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "8002,client signature verify fail"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 414
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Ljava/util/Map;)V

    .line 415
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "8001,client signature verify fail"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    .end local v3    # "localSign":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Ljava/util/Map;)V

    .line 407
    new-instance v3, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x-amdc-code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",server signature verify fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static b([B)[B
    .locals 5
    .param p0, "originalData"    # [B

    const/4 v0, 0x0

    .line 326
    .local v0, "encryptData":[B
    const-string v1, "HTTP_DNS_HClient"

    if-nez p0, :cond_0

    .line 327
    const-string v2, "Original Data is empty, can\'t proceed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x0

    return-object v1

    .line 332
    :cond_0
    :try_start_0
    const-string/jumbo v2, "sync-data-aes128"

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proceed result:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 334
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return-object v0

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to encode data, err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    throw v2
.end method

.method private static c([B)[B
    .locals 5
    .param p0, "encryptedData"    # [B

    const/4 v0, 0x0

    .line 345
    .local v0, "decryptedData":[B
    const-string v1, "HTTP_DNS_HClient"

    if-nez p0, :cond_0

    .line 346
    const-string v2, "Original Cooked Data is empty, can\'t proceed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    return-object v1

    .line 351
    :cond_0
    :try_start_0
    const-string/jumbo v2, "sync-data-aes128"

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proceed result:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 353
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    return-object v0

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to decode data, err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    throw v2
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    move-object v2, v1

    .line 66
    .local v2, "conn":Ljava/net/HttpURLConnection;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 70
    const-string v0, "POST"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conntimeout:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->requesttimeout:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "Content-Type"

    const-string/jumbo v1, "text/json"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "User-Agent"

    const-string v1, "A"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAmdcHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    return-object v2
.end method

.method public getResponseCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    return v0
.end method

.method public getStrategyFromServer(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .locals 5
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a:I

    .line 168
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 171
    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a(Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)V

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 178
    .local v3, "result":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->parseStrategyContent(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;

    move-result-object v1

    .line 183
    .local v2, "response":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 186
    return-object v2

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v4, "parse exception"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "urlStr":Ljava/lang/String;
    .end local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    throw v1

    .line 179
    .end local v2    # "response":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .restart local p1    # "urlStr":Ljava/lang/String;
    .restart local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "urlStr":Ljava/lang/String;
    .end local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    throw v1

    .line 188
    .end local v3    # "result":Ljava/lang/String;
    .restart local p1    # "urlStr":Ljava/lang/String;
    .restart local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Conn_Failed_to_Create"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "urlStr":Ljava/lang/String;
    .end local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "url":Ljava/net/URL;
    .restart local p1    # "urlStr":Ljava/lang/String;
    .restart local p2    # "request":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "General error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP_DNS_HClient"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    throw v0
.end method
