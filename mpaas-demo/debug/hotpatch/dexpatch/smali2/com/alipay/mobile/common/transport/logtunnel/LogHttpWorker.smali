.class public Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;
.super Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;
.source "LogHttpWorker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 27
    return-void
.end method


# virtual methods
.method protected addCookie2Header()V
    .locals 0

    .line 43
    return-void
.end method

.method protected addRequestHeaders()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 33
    return-void
.end method

.method protected copyHeaders()V
    .locals 0

    .line 38
    return-void
.end method

.method protected monitorErrorLog(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 52
    const-string v0, "HttpWorker"

    const-string v1, "LogHttpWorker. Execute fail. "

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method protected whenExceptionFlushUploadLog()V
    .locals 2

    .line 48
    const-string v0, "HttpWorker"

    const-string/jumbo v1, "whenExceptionFlushUploadLog, upload log request no execute it."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
