.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
.super Ljava/lang/Object;
.source "ViewCallContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/alibaba/fastjson/JSONObject;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->eventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->action:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->keep:Z

    return p0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->action:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;
    .locals 1

    .line 106
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;)V

    return-object v0
.end method

.method public eventId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->eventId:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public keep(Z)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->keep:Z

    .line 102
    return-object p0
.end method

.method public param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 92
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->type:Ljava/lang/String;

    .line 97
    return-object p0
.end method
