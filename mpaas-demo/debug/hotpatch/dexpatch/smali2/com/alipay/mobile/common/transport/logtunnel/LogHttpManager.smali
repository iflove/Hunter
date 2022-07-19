.class public Lcom/alipay/mobile/common/transport/logtunnel/LogHttpManager;
.super Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;
.source "LogHttpManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 38
    return-void
.end method

.method protected createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 42
    new-instance v0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0
.end method

.method public generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1
    .param p1, "rpcHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 32
    new-instance v0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpManager;->coreHttpManager:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getLogHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method
