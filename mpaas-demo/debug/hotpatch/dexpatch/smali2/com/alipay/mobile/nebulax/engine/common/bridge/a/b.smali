.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/a/b;
.super Ljava/lang/Object;
.source "DefaultEngineBridge.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 2

    .line 25
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsapi req name={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} clientId  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "DefaultEngineBridge"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z

    .line 33
    return-void

    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/b;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 21
    return-void
.end method
