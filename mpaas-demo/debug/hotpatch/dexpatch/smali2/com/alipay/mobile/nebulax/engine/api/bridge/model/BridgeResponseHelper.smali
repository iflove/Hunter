.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
.super Ljava/lang/Object;
.source "BridgeResponseHelper.java"


# instance fields
.field private innerBridgeResponse:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->innerBridgeResponse:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    .line 15
    return-void
.end method

.method private executeSendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->innerBridgeResponse:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getInnerBridgeResponse()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->innerBridgeResponse:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    return-object v0
.end method

.method public sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->executeSendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->executeSendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->executeSendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method sendBridgeResultWithCallbackKept(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->executeSendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 2

    .line 78
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 79
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 82
    return-void
.end method

.method public sendNoRigHtToInvoke()V
    .locals 3

    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 89
    const-string v1, "errorMessage"

    const-string v2, "\u65e0\u6743\u8c03\u7528"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 92
    return-void
.end method

.method public sendNoRigHtToInvoke4NewJSAPIPermission()V
    .locals 3

    .line 98
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 99
    const-string v1, "errorMessage"

    const-string v2, "new jsapi permission deny"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 102
    return-void
.end method

.method public sendNotGrantPermission()V
    .locals 3

    .line 109
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 110
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "errorMessage"

    const-string v2, "\u83b7\u53d6\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 113
    return-void
.end method

.method public sendSuccess()V
    .locals 2

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public useCancel()V
    .locals 3

    .line 119
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 120
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "errorMessage"

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 123
    return-void
.end method
