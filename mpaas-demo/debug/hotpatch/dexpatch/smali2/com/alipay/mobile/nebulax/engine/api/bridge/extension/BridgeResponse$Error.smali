.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;
.super Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
.source "BridgeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
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
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;-><init>(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;->response:Lcom/alibaba/fastjson/JSONObject;

    .line 38
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;->response:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;->response:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public get()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;->response:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;->get()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method
