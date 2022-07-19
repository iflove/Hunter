.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;
.super Ljava/lang/Object;
.source "UcServiceWorkerSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$h5ServiceWorkerHook4Bridge:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

.field final synthetic val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$workerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$workerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$h5ServiceWorkerHook4Bridge:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 283
    move-object/from16 v1, p0

    const-string v2, "H5UcService::UcServiceWorkerSetup"

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "service_context"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 284
    .local v0, "isServiceContext":Z
    iget-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$workerId:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTargetPageByViewId(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->access$200(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 286
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v0, :cond_1

    .line 287
    const-string v5, "handleMsgFromJs get h5Page isServiceContext"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 290
    invoke-interface {v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 291
    .local v5, "activity":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v6

    .line 294
    :cond_0
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    move-object v3, v6

    .line 297
    .end local v5    # "activity":Landroid/content/Context;
    :cond_1
    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 298
    const-string v4, "handleMsgFromJs h5Page == null return"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v4, "H5_SW_PageNull"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 300
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$action:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$workerId:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 299
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 303
    return-void

    .line 305
    :cond_2
    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "action"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 306
    .local v12, "action":Ljava/lang/String;
    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "data"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v13, v6

    .line 307
    .local v13, "params":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "clientId"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "clientId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 312
    :cond_3
    new-instance v6, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    move-object v14, v6

    .line 314
    .local v14, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "call"

    if-eqz v6, :cond_4

    .line 315
    :try_start_1
    invoke-virtual {v14, v12}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    .line 316
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    .line 317
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    goto :goto_0

    .line 320
    :cond_4
    invoke-virtual {v14, v12}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    .line 321
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v4

    const/4 v6, 0x1

    .line 323
    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 326
    :goto_0
    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    .line 327
    .local v4, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v6

    move-object v15, v6

    .line 328
    .local v15, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    new-instance v16, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;

    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;->val$h5ServiceWorkerHook4Bridge:Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;

    move-object/from16 v6, v16

    move-object v8, v5

    move-object v9, v12

    move-object v10, v15

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;-><init>(Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/h5container/api/H5Page;)V

    move-object/from16 v6, v16

    .line 333
    .local v6, "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    if-eqz v15, :cond_5

    .line 334
    invoke-interface {v15, v4, v6}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_1

    .line 336
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v7

    .line 337
    .local v7, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v7, :cond_6

    .line 338
    invoke-virtual {v7, v4, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v0    # "isServiceContext":Z
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v5    # "clientId":Ljava/lang/String;
    .end local v6    # "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .end local v7    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .end local v15    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    :cond_6
    :goto_1
    goto :goto_2

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
