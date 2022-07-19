.class public Lcom/alipay/mobile/nebulax/engine/cube/b/a;
.super Ljava/lang/Object;
.source "CubeBridgeResponse.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# instance fields
.field private a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->b:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->c:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube jsapi send back , methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  keepCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeBridgeResponse"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/a;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;

    if-eqz v0, :cond_1

    .line 42
    if-eqz p2, :cond_0

    .line 43
    new-instance p2, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;

    invoke-direct {p2, p1}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;->handleJsResultAlive(Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;

    invoke-direct {p2, p1}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;->handleJsResult(Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiResult;)V

    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
