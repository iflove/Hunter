.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
.super Ljava/lang/Object;
.source "NXBridge.java"


# virtual methods
.method public abstract kernelSendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
.end method

.method public abstract monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end method

.method public abstract sendDataWarpToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
.end method

.method public abstract sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V
.end method

.method public abstract sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
.end method

.method public abstract sendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
.end method

.method public abstract sendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
.end method

.method public abstract sendToView(Ljava/lang/String;)V
.end method

.method public abstract sendToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
.end method
