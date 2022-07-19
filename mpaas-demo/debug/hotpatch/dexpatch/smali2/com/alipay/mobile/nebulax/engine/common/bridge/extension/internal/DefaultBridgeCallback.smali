.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;
.super Ljava/lang/Object;
.source "DefaultBridgeCallback.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->a:Z

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 16
    return-void
.end method


# virtual methods
.method public getResponseHelper()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    return-object v0
.end method

.method public isSticky()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->a:Z

    return v0
.end method

.method public sendBridgeResponse(Ljava/lang/Object;)V
    .locals 1

    .line 28
    instance-of v0, p1, Ljava/lang/Void;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    .line 32
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    if-eqz v0, :cond_2

    .line 33
    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_4

    .line 37
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->a:Z

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 42
    :goto_1
    return-void

    .line 45
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->a:Z

    if-eqz v0, :cond_5

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_2

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 55
    :goto_2
    return-void

    .line 53
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "response is not a JSONObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
