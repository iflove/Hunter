.class public Lcom/alipay/mobile/nebulaengine/facade/NXDispatchHelper;
.super Ljava/lang/Object;
.source "NXDispatchHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)Z

    move-result p0

    return p0
.end method

.method public static setExtensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->bindExtensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V

    .line 17
    return-void
.end method
