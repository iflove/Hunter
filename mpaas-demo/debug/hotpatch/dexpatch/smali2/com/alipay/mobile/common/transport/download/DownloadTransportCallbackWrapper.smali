.class public Lcom/alipay/mobile/common/transport/download/DownloadTransportCallbackWrapper;
.super Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;
.source "DownloadTransportCallbackWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0
    .param p1, "transportCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;-><init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 42
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 43
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V

    .line 60
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V

    .line 61
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 52
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadTransportCallbackWrapper;->getWrappedTransportCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onProgressUpdate] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadTransportCallbackWrapper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 34
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method
