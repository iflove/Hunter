.class public Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
.super Lcom/alipay/mobile/common/transport/http/HttpManager;
.source "H5NetworkManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->close()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->setHttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 66
    return-void
.end method

.method public enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "h5HttpUrlRequest"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setHeaders(Ljava/util/ArrayList;)V

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enqueue url=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h5HttpUrlRequest#url is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h5HttpUrlRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1
    .param p1, "rpcHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 53
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->coreHttpManager:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getH5HttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public setHttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 1
    .param p1, "androidHttpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->coreHttpManager:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->setH5HttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V

    .line 71
    return-void
.end method
