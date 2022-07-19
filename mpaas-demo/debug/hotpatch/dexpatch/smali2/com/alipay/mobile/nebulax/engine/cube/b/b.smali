.class public Lcom/alipay/mobile/nebulax/engine/cube/b/b;
.super Ljava/lang/Object;
.source "CubeJsCallInstance.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulax/engine/cube/b/b;


# instance fields
.field private b:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;
    .locals 10

    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    const-string v2, "NebulaXEngine.CubeJsCallInstance"

    if-nez v0, :cond_0

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sync call jsApi engineProxy is null \u3002appInstanceId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v1

    .line 121
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getEngineBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;

    move-result-object v3

    .line 122
    if-nez v3, :cond_1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sync call jsApi engineBridge is null \u3002appInstanceId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v1

    .line 128
    :cond_1
    new-instance v4, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 129
    invoke-interface {p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getCallbackId()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-interface {p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v6

    invoke-interface {p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v6

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    .line 131
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object v0

    .line 134
    new-instance v4, Landroid/os/ConditionVariable;

    invoke-direct {v4}, Landroid/os/ConditionVariable;-><init>()V

    .line 135
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 136
    new-array v6, v6, [Lcom/alibaba/fastjson/JSONObject;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 137
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v8, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/b/b;[Lcom/alibaba/fastjson/JSONObject;Ljava/util/concurrent/CountDownLatch;Landroid/os/ConditionVariable;)V

    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 152
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_2

    .line 153
    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 154
    const-wide/16 v0, 0x7d0

    invoke-virtual {v4, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube jsapi send back , methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", appInstanceId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v6, v7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  keepCallback="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    aget-object p1, v6, v7

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 2

    .line 262
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p1

    .line 263
    if-nez p1, :cond_0

    .line 264
    const/4 p1, 0x0

    return-object p1

    .line 268
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getTopView()Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p1

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p1

    .line 273
    :goto_0
    return-object p1
.end method

.method public static a()Lcom/alipay/mobile/nebulax/engine/cube/b/b;
    .locals 1

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a:Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a:Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    .line 47
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a:Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 208
    nop

    .line 209
    const-class v0, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;

    const-string v1, "H5_SWSYNCAPILIST"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    nop

    .line 211
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 216
    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync  H5_SWSYNCAPILIST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NebulaXEngine.CubeJsCallInstance"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 219
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v3, p1}, Lcom/alipay/mobile/nebulax/engine/common/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    nop

    .line 222
    const/4 v1, 0x1

    goto :goto_1

    .line 218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_3
    :goto_1
    return v1
.end method

.method private b()Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 234
    const-string v1, "getSystemInfo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "setAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "getAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "removeAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "clearAPDataStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "setTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "getTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "removeTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "clearTinyLocalStorage"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "getTinyLocalStorageInfo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "getStartupParams"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "internalAPI"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "measureText"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 2

    .line 253
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p1

    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object v0

    .line 167
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sync call jsApi nxview is null \u3002appInstanceId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pageInstanceId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NebulaXEngine.CubeJsCallInstance"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v1

    .line 171
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object p1

    .line 172
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p2

    .line 175
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 176
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getCallbackId()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v4

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    .line 178
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object p2

    .line 181
    new-instance p3, Landroid/os/ConditionVariable;

    invoke-direct {p3}, Landroid/os/ConditionVariable;-><init>()V

    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 183
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v3, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;

    invoke-direct {v3, p0, v0, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/b/b;[Lcom/alibaba/fastjson/JSONObject;Landroid/os/ConditionVariable;)V

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    invoke-interface {p1, p2, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->close()V

    .line 198
    const-wide/16 p1, 0x7d0

    invoke-virtual {p3, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 199
    aget-object p1, v0, v2

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)V
    .locals 6

    .line 57
    const-string v0, "NebulaXEngine.CubeJsCallInstance"

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 62
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "async call jsApi engineProxy is null \u3002appInstanceId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 70
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getEngineBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;

    move-result-object v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "async call jsApi engineBridge is null \u3002appInstanceId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 75
    :cond_2
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    .line 76
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/b/a;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsApiCallback()Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;

    move-result-object p3

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;)V

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    invoke-interface {v4, v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object v3

    .line 80
    if-nez v3, :cond_4

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async call jsApi nxview is null ,exit\u3002appInstanceId="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pageInstanceId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 84
    :cond_4
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    .line 85
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object v0

    .line 87
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v3, Lcom/alipay/mobile/nebulax/engine/cube/b/a;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsApiCallback()Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;

    move-result-object p3

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiCallback;)V

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    .line 90
    :goto_0
    return-void

    .line 58
    :cond_5
    :goto_1
    const-string p1, "jsApiContext  is null"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 95
    const-string v0, "NebulaXEngine.CubeJsCallInstance"

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call js api sycn, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {p3}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync hasPermission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-nez v1, :cond_1

    .line 105
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->FORBIDDEN_ERROR:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1

    .line 108
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 111
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    :goto_0
    const-string p1, "jsApiContext  is null"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 p1, 0x0

    return-object p1
.end method
