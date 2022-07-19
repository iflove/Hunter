.class Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;
.super Ljava/lang/Object;
.source "DefaultWorkerProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->d:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->b:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 302
    const-string v0, "NebulaXEngine.BaseWorkerProxy"

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMsgFromJs begin dispatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->d:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object v3

    .line 305
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 306
    const-string v1, "handleMsgFromJs h5Page == null return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "H5_SW_PageNull"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->d:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 311
    return-void

    .line 314
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "data"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 315
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "clientId"

    invoke-static {v6, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 319
    :cond_1
    new-instance v6, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->a:Ljava/lang/String;

    .line 320
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v6

    .line 321
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v5

    .line 322
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v5

    .line 323
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v4

    .line 324
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v4

    const-string v5, "fromWork"

    .line 325
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->source(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v4

    .line 326
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object v4

    .line 328
    new-instance v5, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    new-instance v6, Lcom/alipay/mobile/nebulax/engine/a/c/a;

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v7

    .line 329
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;

    invoke-direct {v9, p0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;J)V

    invoke-direct {v6, v7, v8, v4, v9}, Lcom/alipay/mobile/nebulax/engine/a/c/a;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;)V

    invoke-direct {v5, v6}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    .line 341
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    goto :goto_1

    .line 342
    :catchall_0
    move-exception v1

    .line 343
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    :goto_1
    return-void
.end method
