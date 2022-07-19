.class public Lcom/alipay/mobile/nebulax/engine/a/a/a;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "LegacyWebBridgeConextImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/a;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 18
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 0

    .line 23
    if-nez p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1
.end method
