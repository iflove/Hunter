.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;
.super Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
.source "BridgeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field response:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;-><init>(Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/alibaba/fastjson/JSONObject;

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public get()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;->get()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method
