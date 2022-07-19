.class public Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;
.super Lcom/alipay/mobile/common/transport/http/HttpWorker;
.source "RpcHttpWorker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->isUseSelfEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->clientRpcPack:Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

    .line 33
    :cond_0
    return-void
.end method

.method private a()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    const-string v1, "Result-Status"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 48
    .local v0, "resultStatusHeader":Lorg/apache/http/Header;
    const-string v1, ""

    .line 49
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 52
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1000"

    .line 53
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string v3, "GW_RS"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0    # "resultStatusHeader":Lorg/apache/http/Header;
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[putMonitorLogOfResponseHeader] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method protected putSubCommonMonitor()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/rpc/RpcHttpWorker;->a()V

    .line 38
    return-void
.end method
