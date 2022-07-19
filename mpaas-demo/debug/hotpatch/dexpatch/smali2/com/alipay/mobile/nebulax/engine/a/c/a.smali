.class public Lcom/alipay/mobile/nebulax/engine/a/c/a;
.super Ljava/lang/Object;
.source "NXWorkerBridgeResponse.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "-1"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 39
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->b:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->g:J

    .line 41
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 6

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start send back worker jsbrdge call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keepCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " action="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "NebulaXEngine.NXWorkerBridgeResponse"

    if-nez p2, :cond_5

    sget-object p2, Lcom/alipay/mobile/nebulax/engine/a/c/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    const-string v2, "native_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore native fired event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v0

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    if-eqz p2, :cond_2

    instance-of v2, p2, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_2

    .line 58
    check-cast p2, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 59
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableJsApiPerformance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p2

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->setElapse(J)V

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    if-eqz p2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->d:Ljava/lang/String;

    invoke-interface {p2, v2, p1, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->b:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

    if-eqz p2, :cond_4

    .line 72
    invoke-interface {p2, p1}, Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;->onReceiveJsapiResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 77
    const/4 p1, 0x1

    return p1

    .line 74
    :cond_4
    const-string p1, "[FATAL ERROR] in sendBack() bridge is null"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v0

    .line 48
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "client id not specified "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v0
.end method
