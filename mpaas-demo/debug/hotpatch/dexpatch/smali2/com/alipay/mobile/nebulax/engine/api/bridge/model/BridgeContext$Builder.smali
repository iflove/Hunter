.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
.super Ljava/lang/Object;
.source "BridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public dispatcherOnWorkerThread:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field public nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

.field public params:Lcom/alibaba/fastjson/JSONObject;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
    .locals 2

    .line 214
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$1;)V

    return-object v0
.end method

.method public dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->dispatcherOnWorkerThread:Z

    .line 205
    return-object p0
.end method

.method public generateLegacyNativeId()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 190
    return-object p0
.end method

.method public node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 185
    return-object p0
.end method

.method public params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params:Lcom/alibaba/fastjson/JSONObject;

    .line 180
    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->source:Ljava/lang/String;

    .line 200
    return-object p0
.end method
