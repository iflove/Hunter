.class public abstract Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;
.super Ljava/lang/Object;
.source "CommonNXBridge.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field private b:Lcom/alipay/mobile/nebulax/kernel/node/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->c:Ljava/util/Set;

    .line 40
    const-string v1, "onAppPerfEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "monitorH5Performance"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a:Z

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 2

    .line 169
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/EventSendInterceptorPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 170
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->defaultValue(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->resolve(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/EventSendInterceptorPoint;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/EventSendInterceptorPoint;->needIntercept(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    const/4 p1, 0x1

    return p1

    .line 191
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 5

    .line 86
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    move-result-object p2

    .line 93
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z

    move-result v0

    const-string v1, " params="

    const-string v2, "} clientId="

    const-string v3, "NebulaXEngine.CommonNXBridge"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->c:Ljava/util/Set;

    .line 94
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call js api by extension name={"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v3, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call js api by old plugin name={"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 103
    return-void

    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 3

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NebulaXEngine.CommonNXBridge"

    if-eqz v0, :cond_0

    .line 149
    const-string p1, "send to view action is empty"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    if-eqz p3, :cond_1

    .line 155
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "prevent"

    invoke-virtual {p2, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;-><init>()V

    .line 158
    iput-object p2, v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 159
    invoke-interface {p3, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;->onCallBack(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;)V

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " H5 callback for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " invoke was prevented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sender"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " send event["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] was intercepted by extension"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 202
    return-object v1

    .line 205
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 206
    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-object v1
.end method

.method public abstract a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
.end method

.method public abstract a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
.end method

.method public abstract a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
.end method

.method public kernelSendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
    .locals 1

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string p1, "NebulaXEngine.CommonNXBridge"

    const-string v0, "send to view context is empty"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V

    .line 144
    return-void
.end method

.method public sendDataWarpToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 134
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 75
    return-void

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->a:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 83
    return-void

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public sendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;)V
    .locals 2

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v0, "NebulaXEngine.CommonNXBridge"

    const-string v1, "sendToView context is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 111
    return-void
.end method

.method public sendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 2

    .line 115
    if-nez p1, :cond_0

    .line 116
    const-string v0, "NebulaXEngine.CommonNXBridge"

    const-string v1, "sendToView context is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 119
    return-void
.end method

.method public sendToView(Ljava/lang/String;)V
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 124
    return-void
.end method

.method public sendToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/a;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 129
    return-void
.end method
