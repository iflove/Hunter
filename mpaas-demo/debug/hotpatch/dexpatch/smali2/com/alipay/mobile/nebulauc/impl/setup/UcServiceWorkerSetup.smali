.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;
.super Ljava/lang/Object;
.source "UcServiceWorkerSetup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService::UcServiceWorkerSetup"

.field private static uiHandler:Landroid/os/Handler; = null

.field private static final viewId:Ljava/lang/String; = "viewId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->tryConsoleLogMessaging(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 50
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->logServiceWorkerOnReceiveValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTargetPageByViewId(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method private static dispatchToNative(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 16
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 178
    move-object/from16 v7, p0

    const-string v0, "applicationId"

    const-string v8, "H5UcService::UcServiceWorkerSetup"

    :try_start_0
    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 179
    .local v10, "appId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", use console.log message channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 188
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->isCanvasDrawCall(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v2

    move v11, v2

    .line 189
    .local v11, "isCanvasDrawCmd":Z
    if-nez v11, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v12, v1

    .line 190
    .local v12, "showLog":Z
    if-eqz v12, :cond_2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "console data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2
    const-string v1, "action"

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 195
    .local v13, "action":Ljava/lang/String;
    const-string v1, "requestId"

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "requestId":I
    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "applicationId":Ljava/lang/String;
    const-string v1, "callback"

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 199
    .local v14, "callback":Ljava/lang/String;
    const-string v1, "mtop"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "data"

    if-eqz v1, :cond_3

    .line 200
    :try_start_1
    const-string v1, "main"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "apiName"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_3
    const-string v1, "postMessage"

    invoke-static {v13, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    const/4 v1, 0x0

    invoke-static {v7, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 207
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "viewId"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 208
    .local v5, "viewId":I
    invoke-static {v5, v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    .line 209
    .local v6, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 210
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 211
    .local v15, "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v15, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    const-string v9, "message"

    invoke-interface {v3, v9, v15, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 214
    .end local v15    # "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 217
    .end local v4    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "viewId":I
    .end local v6    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 218
    const-string v1, "console channel not support sync jsapi!!!!!!!!"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 220
    :cond_6
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v3, "console channel not support sync jsapi"

    invoke-direct {v1, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    throw v1

    .line 224
    .restart local p0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    new-instance v9, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;

    move-object v1, v9

    move-object v3, v0

    move-object v4, v13

    move v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;)V

    invoke-static {v13, v7, v9, v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V

    .line 270
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v10    # "appId":Ljava/lang/String;
    .end local v11    # "isCanvasDrawCmd":Z
    .end local v12    # "showLog":Z
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "callback":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 182
    .restart local v10    # "appId":Ljava/lang/String;
    :cond_8
    :goto_1
    const-string v0, "data parse error"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    return v1

    .line 268
    .end local v10    # "appId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method private static enableAsync()Z
    .locals 4

    .line 463
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 464
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 465
    const-string v2, "h5_enableSWAsync"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "value":Ljava/lang/String;
    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v1, v3

    return v1

    .line 468
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static getHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .line 453
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultAsyncJsApiList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->enableAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->uiHandler:Landroid/os/Handler;

    .line 459
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 6
    .param p0, "id"    # I
    .param p1, "workerId"    # Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 380
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_7

    .line 381
    const-class v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    monitor-enter v1

    .line 382
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 409
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v2, :cond_1

    .line 410
    monitor-exit v1

    return-object v2

    .line 412
    :cond_1
    const-string v3, "H5UcService::UcServiceWorkerSetup"

    const-string v4, "fatal error h5Page == null #3"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    :goto_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_5

    .line 385
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v2

    .line 386
    .local v2, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 387
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 389
    :cond_3
    const-string v3, "H5UcService::UcServiceWorkerSetup"

    const-string v4, "fatal error h5Page == null #1"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 391
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 392
    const-string v4, "H5UcService::UcServiceWorkerSetup"

    const-string v5, "not send work to web-view"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTopServiceWorkPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 395
    :cond_4
    monitor-exit v1

    return-object v3

    .line 399
    .end local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_5
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v2

    .line 400
    .restart local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 401
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 403
    :cond_6
    const-string v3, "H5UcService::UcServiceWorkerSetup"

    const-string v4, "fatal error h5Page == null #2"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    nop

    .line 415
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 417
    :cond_7
    const-string v1, "H5UcService::UcServiceWorkerSetup"

    const-string v2, "fatal error h5Service==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getTargetPageByViewId(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "workerId"    # Ljava/lang/String;

    .line 358
    const/4 v0, -0x1

    .line 359
    .local v0, "viewIdValue":I
    const-string v1, "viewId"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 360
    const/4 v2, 0x0

    const-string v4, "data"

    invoke-static {p0, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 361
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 362
    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 364
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    goto :goto_0

    .line 365
    :cond_1
    invoke-static {p0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 368
    :goto_0
    if-gt v0, v3, :cond_2

    .line 369
    invoke-static {v3, p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto :goto_1

    .line 371
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 373
    .restart local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_1
    return-object v1
.end method

.method private static getTopServiceWorkPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 6

    .line 427
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 428
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_3

    .line 430
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v1

    .line 431
    .local v1, "sessions":Ljava/util/Stack;
    if-eqz v1, :cond_2

    .line 432
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 434
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 435
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 436
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v3, :cond_0

    .line 437
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    monitor-exit v1

    return-object v5

    .line 434
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 443
    .end local v2    # "index":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    .end local v1    # "sessions":Ljava/util/Stack;
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_2
    :goto_1
    goto :goto_2

    .line 445
    :catchall_1
    move-exception v1

    .line 446
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5UcService::UcServiceWorkerSetup"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5ServiceWorkerHook4Bridge"    # Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;
    .param p3, "workerId"    # Ljava/lang/String;

    .line 277
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$3;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;)V

    .line 348
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->isCanvasDrawCall(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    :goto_0
    return-void
.end method

.method public static initServiceWorkerCallback()V
    .locals 9

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "pid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    .line 59
    .local v1, "isInTinyProcess":Z
    if-eqz v1, :cond_1

    .line 60
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 63
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getLitePid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    const-string v3, "H5UcService::UcServiceWorkerSetup"

    const-string v4, "h5EventHandlerService == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "ts":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "workerId":Ljava/lang/String;
    :goto_1
    const-string v5, "initServiceWorkerConsoleCallback"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 73
    const/4 v6, 0x6

    const/4 v7, 0x0

    new-instance v8, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    invoke-direct {v8, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 98
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static initServiceWorkerController()V
    .locals 6

    .line 110
    const-string v0, "H5UcService::UcServiceWorkerSetup"

    const-string v1, "initServiceWorkerController"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    .line 114
    .local v2, "noCache":Z
    const-string v3, "h5_sw_nocache"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 119
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/ServiceWorkerController;->getInstance()Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v3

    .line 120
    .local v3, "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    if-nez v3, :cond_1

    .line 121
    const-string v4, "serviceWorkerController == null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->getInstance()Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    move-result-object v4

    .line 126
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;
    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;-><init>()V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->setH5Provider(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;)V

    .line 127
    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;

    invoke-direct {v5, v4, v2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;-><init>(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;Z)V

    invoke-virtual {v3, v5}, Lcom/uc/webview/export/ServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v3    # "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v3

    .line 130
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "initServiceWorkerController exception "

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static isCanvasDrawCall(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 3
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 473
    if-eqz p0, :cond_0

    const-string v0, "action"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBComponent.sendMessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x0

    const-string v1, "data"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 475
    .local v0, "innerData":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    const-string v1, "actionType"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "draw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x1

    return v1

    .line 479
    .end local v0    # "innerData":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logServiceWorkerOnReceiveValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "workerId"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 104
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/HashMap;

    invoke-interface {v1, v2, p0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->logServiceWorkerOnReceiveValue(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method private static parseJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, "jo":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 167
    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "var3":Ljava/lang/Exception;
    const-string v2, "H5Utils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v1    # "var3":Ljava/lang/Exception;
    return-object v0
.end method

.method private static tryConsoleLogMessaging(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "result"    # Ljava/lang/Object;

    .line 139
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "resultMap":Ljava/util/Map;
    const-string v1, "msg"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "kylinBridge://"

    .line 144
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "rm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 148
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->parseJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    move-object v4, v5

    .line 149
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->dispatchToNative(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 150
    :catchall_0
    move-exception v5

    .line 151
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "H5UcService::UcServiceWorkerSetup"

    const-string v7, "tryConsoleLogMessaging"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v0    # "resultMap":Ljava/util/Map;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "rm":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
