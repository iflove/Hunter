.class public Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;
.super Ljava/lang/Object;
.source "HttpClientPlannerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 5
    .param p0, "androidHttpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 26
    if-eqz p2, :cond_2

    .line 31
    if-eqz p1, :cond_1

    .line 35
    nop

    .line 36
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v0

    .line 37
    .local v0, "local":Ljava/net/InetAddress;
    nop

    .line 38
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/conn/params/ConnRouteParams;->getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 39
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v2

    .local v2, "secure":Z
    const/4 v3, 0x0

    .line 42
    .local v3, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-nez v1, :cond_0

    .line 43
    new-instance v4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v4, p1, v0, v2}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    move-object v3, v4

    goto :goto_0

    .line 45
    :cond_0
    new-instance v4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v4, p1, v0, v1, v2}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    move-object v3, v4

    .line 47
    :goto_0
    return-object v3

    .line 32
    .end local v0    # "local":Ljava/net/InetAddress;
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    .end local v2    # "secure":Z
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
