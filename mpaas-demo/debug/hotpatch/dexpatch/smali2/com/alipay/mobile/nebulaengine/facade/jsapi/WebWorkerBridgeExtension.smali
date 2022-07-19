.class public Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;
.super Ljava/lang/Object;
.source "WebWorkerBridgeExtension.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXEngine.WebWorkerBridgeExtension"


# instance fields
.field private nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

.field private workerProxy:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;)Lcom/alipay/mobile/nebulax/engine/a/c/c/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    return-object p0
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    .line 101
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 96
    return-void
.end method

.method public permit()Lcom/alipay/mobile/nebulax/kernel/security/Permission;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public postMessage(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/fastjson/JSONObject;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 73
    const-string v1, "handlerName"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getPageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pageId"

    invoke-virtual {p2, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getWebViewId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "viewId"

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->isWorkerReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->sendMessageToWorker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    new-instance p2, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;

    invoke-direct {p2, p0, v0}, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;-><init>(Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->registerWorkerReadyListener(Lcom/alipay/mobile/worker/H5Worker$WorkerReadyListener;)V

    .line 91
    :goto_0
    return-void
.end method

.method public registerWorker(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .param p2    # Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "worker"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 37
    const-string v0, "?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    const-string v1, "installed"

    const-string v2, "state"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 41
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REGISTER_WORKER worker: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NebulaXEngine.WebWorkerBridgeExtension"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 56
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-direct {p2}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    .line 57
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->setWorkerId(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->setStartupParams(Landroid/os/Bundle;)V

    .line 60
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/c/b/d;

    iget-object v0, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-direct {p2, v0}, Lcom/alipay/mobile/nebulax/engine/a/c/b/d;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/c/a;)V

    iput-object p2, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->workerProxy:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    .line 61
    invoke-interface {p2, p3}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->setWorkerId(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->workerProxy:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;->setWorkerProxy(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "success setServiceWorkerID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void
.end method
