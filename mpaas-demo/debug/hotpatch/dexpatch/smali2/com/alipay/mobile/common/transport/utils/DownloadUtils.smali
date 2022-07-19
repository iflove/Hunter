.class public Lcom/alipay/mobile/common/transport/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field public static final GET_METHOD:Ljava/lang/String; = "GET"

.field public static final HTTPS_PORT:I = 0x1bb

.field public static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final POST_METHOD:Ljava/lang/String; = "POST"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field public static contentTypeKey:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "html"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->contentTypeKey:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "tfs.alipayobjects.com"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "pic.alipayobjects.com"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->b:Ljava/lang/String;

    .line 58
    const-string v0, "api-mayi.django.t.taobao.com"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->c:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "oalipay-dl-django.alicdn.com"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .param p0, "oriUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "uri"    # Ljava/net/URI;

    .line 333
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 334
    .local v2, "requestMethod":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "GET"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .local v0, "newUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 336
    .end local v0    # "newUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    const-string v0, "POST"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 338
    .restart local v0    # "newUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v3, p0

    check-cast v3, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 339
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 341
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    move-object v3, v0

    check-cast v3, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 344
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    nop

    .line 347
    :goto_0
    return-object v0

    .line 345
    .end local v0    # "newUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestMethod:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not support"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Lorg/apache/http/Header;)V
    .locals 6
    .param p0, "allHeaders"    # [Lorg/apache/http/Header;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 389
    .local v3, "header":Lorg/apache/http/Header;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .end local v3    # "header":Lorg/apache/http/Header;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added request headers : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8
    .param p0, "host"    # Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNGRADE_HOSTS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    .local v1, "downgradeHosts":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "isInDowngradeHosts. "

    const-string v4, "DownloadUtils"

    if-nez v0, :cond_1

    .line 165
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 167
    invoke-static {v7, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in downgradeHosts , may need downgrade."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in downgradeHosts,can\'t downgrade."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v2
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p0, "rsp"    # Lorg/apache/http/HttpResponse;

    .line 197
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 198
    return v0

    .line 200
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    move v2, v0

    .line 201
    .local v2, "code":I
    move v2, v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    const/16 v1, 0xce

    if-eq v2, v1, :cond_1

    const/16 v1, 0x130

    if-eq v2, v1, :cond_1

    const/16 v1, 0x1ad

    if-eq v2, v1, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNeedToRetryByResponseCode. response code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",may need downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_1
    return v0
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 2
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 4
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 129
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    :try_start_0
    const-string v1, "POST"

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    return v0

    .line 135
    :cond_1
    move-object v1, p0

    check-cast v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    const/4 v2, 0x0

    move-object v3, v2

    .line 136
    .local v3, "requestBase":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 138
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    return v0

    .line 139
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "requestBase":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :catchall_0
    move-exception v1

    .line 143
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isRepeatablePost ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method private static c(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 3
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 149
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 150
    .local v1, "res":Z
    move v1, v0

    if-nez v0, :cond_0

    .line 151
    const-string v0, "DownloadUtils"

    const-string/jumbo v2, "requestIsHttps. no https, may need downgrade."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return v1
.end method

.method public static changeUriByParams(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/URI;
    .locals 10

    .line 251
    nop

    .line 253
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    const/4 v0, -0x1

    .line 255
    const-string v1, "https"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1bb

    if-ne p3, v1, :cond_1

    :cond_0
    const-string v1, "http"

    .line 256
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x50

    if-eq p3, v1, :cond_2

    .line 257
    :cond_1
    move v6, p3

    goto :goto_0

    .line 259
    :cond_2
    const/4 v6, -0x1

    :goto_0
    new-instance p3, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p3

    .line 264
    :cond_3
    goto :goto_1

    .line 262
    :catch_0
    move-exception p1

    .line 263
    nop

    .line 265
    :goto_1
    return-object p0
.end method

.method public static constructHttpUriRequestWithURI(Ljava/net/URI;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "oriUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p3, "httpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    const/4 v0, 0x0

    .line 285
    .local v0, "newUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {p1, p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 286
    move-object v0, v1

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 287
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 289
    const-string v1, "http.route.forced-route"

    if-eqz p3, :cond_0

    .line 290
    :try_start_0
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    .local v2, "httpHost":Lorg/apache/http/HttpHost;
    const/4 v3, 0x0

    .line 292
    invoke-static {p3, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;->determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    .line 293
    .local v3, "httpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 294
    nop

    .end local v2    # "httpHost":Lorg/apache/http/HttpHost;
    .end local v3    # "httpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    goto :goto_0

    .line 297
    :catchall_0
    move-exception v1

    .line 298
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParameter ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    if-eqz p2, :cond_1

    .line 303
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 304
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    :cond_1
    return-object v0
.end method

.method public static constructNewHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .param p0, "oriUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p2, "httpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 272
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->d(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;

    move-result-object v0

    .line 275
    invoke-static {v0, p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->constructHttpUriRequestWithURI(Ljava/net/URI;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final createCacheFile(Landroid/content/Context;Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 373
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    return-object v0
.end method

.method public static final createCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 381
    .local v1, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v1, v0

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 382
    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->createCacheFile(Landroid/content/Context;Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;
    .locals 5
    .param p0, "oriUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 312
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 313
    .local v0, "uri":Ljava/net/URI;
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->e(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 315
    .local v2, "downHost":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const/16 v1, 0x1bb

    const-string v3, "https"

    invoke-static {v0, v3, v2, v1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->changeUriByParams(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/URI;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oriURI:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",newURI:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadUtils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0

    .line 320
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downgrade exception,no downHost find with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static e(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 6
    .param p0, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "DownloadUtils"

    .line 401
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "host":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 404
    .local v2, "mng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWN_TFS_HOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWN_PIC_HOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :cond_1
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWN_APIDJG_HOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :cond_2
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 411
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWN_DLDJG_HOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 415
    :cond_3
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "downgradeHttpsHost"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 416
    .local v4, "downgradeHost":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "downgradeHost:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    return-object v4

    .line 422
    .end local v4    # "downgradeHost":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "get downgradeHost error"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static executeDowngradeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p0, "oriUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p2, "httpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;

    .line 354
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->constructNewHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 356
    .local v0, "newHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "By Http/Https to request, method= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a([Lorg/apache/http/Header;)V

    .line 362
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.forced-route"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/routing/HttpRoute;

    .line 366
    .local v1, "httpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {p2, v2, v0, p3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 369
    return-object v2
.end method

.method protected static isContainDowngradeHost(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 6
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "DownloadUtils"

    .line 179
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "downgradeHttpsHost"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 180
    .local v3, "downgradeHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 181
    .local v2, "result":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isContainDowngradeHost return:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return v2

    .line 183
    .end local v2    # "result":Z
    .end local v3    # "downgradeHost":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, " isContainDowngradeHost error "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 4
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 92
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNLOAD_DOWNGRADE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 93
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "degradeSwitch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "DownloadUtils"

    if-nez v2, :cond_0

    .line 96
    :try_start_1
    const-string v2, "isNeedToDowngradeToHttps. degradeSwitch is off"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return v0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->c(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    return v0

    .line 104
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isContainDowngradeHost(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    return v0

    .line 108
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 112
    :cond_3
    const-string v2, "isNeedToDowngradeToHttps.return false"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v0

    .line 109
    :cond_4
    :goto_0
    const-string v2, "isNeedToDowngradeToHttps. may need downgrade."

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 114
    .end local v1    # "degradeSwitch":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "isNeedToDowngradeToHttps"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 3
    .param p0, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "rsp"    # Lorg/apache/http/HttpResponse;

    .line 73
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 77
    return v0

    .line 82
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "DownloadUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static validateResponseCode(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 216
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xce

    if-eq p0, v0, :cond_0

    const/16 v0, 0x130

    if-eq p0, v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
