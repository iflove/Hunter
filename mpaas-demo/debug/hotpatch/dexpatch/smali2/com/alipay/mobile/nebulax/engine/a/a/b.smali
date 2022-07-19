.class public Lcom/alipay/mobile/nebulax/engine/a/a/b;
.super Ljava/lang/Object;
.source "WebBridgeResponse.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->d:J

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->c:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 5

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web jsapi send back , methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keepCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "NebulaXEngine.WebBridgeResponse"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->eventId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->keep(Z)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    move-result-object p2

    const-string v0, "callback"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a/b;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->kernelSendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V

    .line 41
    const/4 p1, 0x1

    return p1
.end method
