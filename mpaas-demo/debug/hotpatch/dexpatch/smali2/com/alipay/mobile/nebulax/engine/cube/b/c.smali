.class public Lcom/alipay/mobile/nebulax/engine/cube/b/c;
.super Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;
.source "CubeNXBridge.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Bridge;


# instance fields
.field private b:Lcom/antfin/cube/cubecore/api/CKApp;

.field private c:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private d:Lcom/alipay/mobile/nebulax/engine/cube/f/c;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/cube/f/c;Lcom/antfin/cube/cubecore/api/CKApp;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->d:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    .line 44
    new-instance p1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    new-instance p2, Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;

    invoke-direct {p2, p0, p5}, Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/b/c;Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V

    invoke-direct {p1, p2, p4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 50
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 142
    const-string v0, "data"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "syncMessage"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 172
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    .line 174
    move-object v0, p1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->d:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageName"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->d:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->getViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-interface {v1}, Lcom/antfin/cube/cubecore/api/CKApp;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appInstanceId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object p1
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
    .locals 3

    .line 73
    const-string p1, "NebulaXEngine.CubeNXBridge"

    const-string v0, "cube generate Default BridgeResponseHelper, no callback"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;

    const-string v1, "default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/alipay/mobile/nebulax/engine/cube/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;)V

    invoke-direct {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    return-object p1
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 57
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

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->isDispatcherOnWorkerThread()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/b/d;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/d;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 67
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 69
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
    .locals 4

    .line 79
    const-string v0, "NebulaXEngine.CubeNXBridge"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cube sendToView, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/antfin/cube/cubecore/api/CKApp;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    const-string v1, "cube callJsBridge exception"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_1
    :goto_1
    const-string p1, "cube platformKernelExecuteSendToView  context is null or action is empty"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 3

    .line 96
    const-string v0, "NebulaXEngine.CubeNXBridge"

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cube sendToView, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-interface {v1, p1, p2}, Lcom/antfin/cube/cubecore/api/CKApp;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 99
    if-eqz p3, :cond_0

    .line 100
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;

    invoke-direct {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;-><init>()V

    .line 101
    iput-object p1, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 102
    invoke-interface {p3, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;->onCallBack(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    const-string p2, "cube callJsBridge exception"

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_0
    return-void
.end method

.method public monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->onRelease()V

    .line 165
    return-void
.end method

.method public sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2

    .line 149
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube sendtoView action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeNXBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-interface {v0, p1, p2}, Lcom/antfin/cube/cubecore/api/CKApp;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 152
    if-eqz p3, :cond_0

    .line 153
    invoke-interface {p3, p1}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 155
    :cond_0
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 113
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 118
    return-void
.end method

.method public sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cube legacy sendtoView action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NebulaXEngine.CubeNXBridge"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/antfin/cube/cubecore/api/CKApp;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    .line 125
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2

    .line 129
    nop

    .line 130
    const-string v0, "syncMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b(Lcom/alibaba/fastjson/JSONObject;)V

    .line 133
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->c(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube legacy sendtoView action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeNXBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c;->b:Lcom/antfin/cube/cubecore/api/CKApp;

    invoke-interface {v0, p1, p2}, Lcom/antfin/cube/cubecore/api/CKApp;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 136
    if-eqz p3, :cond_1

    .line 137
    invoke-interface {p3, p1}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 139
    :cond_1
    return-void
.end method
