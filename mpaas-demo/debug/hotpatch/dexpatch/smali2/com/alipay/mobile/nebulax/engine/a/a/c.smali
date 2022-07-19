.class public Lcom/alipay/mobile/nebulax/engine/a/a/c;
.super Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;
.source "WebViewNXBridge.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Bridge;


# instance fields
.field private b:Lcom/alipay/mobile/h5container/api/H5Bridge;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 37
    new-instance p1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-direct {p1, p3, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
    .locals 3

    .line 100
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/a/b;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/alipay/mobile/nebulax/engine/a/a/b;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    return-object v0
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    const-string v2, "call"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->isDispatcherOnWorkerThread()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object p1

    .line 92
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/a/a;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/a/a;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 95
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 96
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
    .locals 3

    .line 105
    const-string v0, "WebViewNXBridge"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web sendToView, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 119
    return-void

    .line 106
    :cond_1
    :goto_0
    const-string p1, "platformExecuteSendToView , action is empty"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 3

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WebViewNXBridge"

    if-eqz v0, :cond_0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "platformExecuteSendToView , action is empty, param="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web sendToView, action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/a/c$1;

    invoke-direct {v1, p0, p3}, Lcom/alipay/mobile/nebulax/engine/a/a/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/a/c;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 141
    return-void
.end method

.method public monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->onRelease()V

    .line 77
    return-void
.end method

.method public sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web legacy send to View warp data action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",  params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewNXBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 67
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 43
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 48
    return-void
.end method

.method public sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web  legacy send to view action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewNXBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 54
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web  legacy send to view action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewNXBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/c;->b:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 60
    return-void
.end method
