.class public Lcom/alipay/mobile/common/transport/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .locals 8
    .param p0, "iterator"    # Lorg/apache/http/HeaderIterator;
    .param p1, "cookieSpec"    # Lorg/apache/http/cookie/CookieSpec;
    .param p2, "cookieOrigin"    # Lorg/apache/http/cookie/CookieOrigin;
    .param p3, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    const-string v0, "MWALLET_SPDY_LOG"

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-interface {p0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {p0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 78
    .local v2, "header":Lorg/apache/http/Header;
    :try_start_0
    invoke-interface {p1, v2, p2}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v1, "cookies":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    :try_start_1
    invoke-interface {p1, v4, p2}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 82
    invoke-interface {p3, v4}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    goto :goto_1

    .line 83
    :catch_0
    move-exception v5

    .line 84
    .local v5, "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add2CookieStore1 exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/apache/http/cookie/MalformedCookieException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v5    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    goto :goto_1

    .line 89
    .end local v1    # "cookies":Ljava/util/List;
    :cond_0
    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    .line 88
    .local v1, "ex":Lorg/apache/http/cookie/MalformedCookieException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add2CookieStore2 exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/cookie/MalformedCookieException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    .end local v2    # "header":Lorg/apache/http/Header;
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public static final extractCookiesFromResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p0, "target"    # Lorg/apache/http/HttpHost;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 36
    nop

    .line 37
    const-string v0, "http.cookie-store"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    const/4 v1, 0x0

    .line 39
    .local v1, "cookieStore":Lorg/apache/http/client/CookieStore;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getEffectivePort(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/HttpUtils;->getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 47
    .local v0, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    const-string v2, "Set-Cookie"

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 50
    .local v2, "cookieIt":Lorg/apache/http/HeaderIterator;
    new-instance v3, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    .line 53
    .local v3, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/common/transport/utils/HttpUtils;->add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    .line 56
    invoke-interface {v3}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v4

    if-lez v4, :cond_1

    .line 59
    const-string v4, "Set-Cookie2"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 60
    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/common/transport/utils/HttpUtils;->add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    .line 62
    :cond_1
    return-void
.end method

.method public static final getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;
    .locals 5
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    const/4 v0, 0x0

    .line 103
    .local v0, "requestURI":Ljava/net/URI;
    instance-of v1, p0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 104
    move-object v1, p0

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 111
    nop

    .line 113
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
