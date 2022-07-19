.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;
.super Ljava/lang/Object;
.source "ViewCallContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/alibaba/fastjson/JSONObject;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    # getter for: Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->eventId:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->access$000(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->eventId:Ljava/lang/String;

    .line 22
    # getter for: Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->access$100(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->action:Ljava/lang/String;

    .line 23
    # getter for: Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->param:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->access$200(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 24
    # getter for: Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->type:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->access$300(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->type:Ljava/lang/String;

    .line 25
    # getter for: Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->keep:Z
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->access$400(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->keep:Z

    .line 26
    return-void
.end method

.method public static newBuilder()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 1

    .line 70
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeep()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->keep:Z

    return v0
.end method

.method public getParam()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->action:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->eventId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setKeep(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->keep:Z

    .line 67
    return-void
.end method

.method public setParam(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 51
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->type:Ljava/lang/String;

    .line 59
    return-void
.end method
