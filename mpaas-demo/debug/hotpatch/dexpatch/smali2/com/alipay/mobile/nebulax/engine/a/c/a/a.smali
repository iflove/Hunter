.class public Lcom/alipay/mobile/nebulax/engine/a/c/a/a;
.super Ljava/lang/Object;
.source "DefaultWorkerProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 357
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultAsyncJsApiList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object p1

    return-object p1

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->b:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 361
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->b:Landroid/os/Handler;

    .line 363
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->b:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;
    .locals 7

    .line 138
    :try_start_0
    new-instance v6, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p0, p2, p4, v6}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V

    .line 174
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, "application/json"

    const-string p3, "UTF-8"

    new-instance p4, Ljava/io/ByteArrayInputStream;

    const-string v0, ""

    const-string v1, "utf-8"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2, p3, p4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object p1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 179
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;
    .locals 16

    .line 196
    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 197
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultSyncJsApiSet()Ljava/util/Set;

    move-result-object v1

    .line 198
    const-class v2, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;

    const-string v3, "h5_swSyncJsApiConfig"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebulax/common/config/NXConfigService;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 200
    const-string v3, "added"

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 201
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 203
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 204
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 209
    :cond_0
    const-string v5, "black_list"

    invoke-static {v2, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 210
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 212
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 213
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 217
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 220
    :cond_2
    const-string v9, "utf-8"

    const-string v10, "UTF-8"

    const-string v11, "application/javascript"

    const-string v12, "NebulaXEngine.BaseWorkerProxy"

    if-eqz v4, :cond_4

    .line 221
    new-instance v13, Landroid/os/ConditionVariable;

    invoke-direct {v13}, Landroid/os/ConditionVariable;-><init>()V

    .line 222
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 223
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, "("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/ConditionVariable;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    :try_start_1
    invoke-virtual {v1, v7, v2, v0}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    goto :goto_3

    .line 254
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 255
    :goto_2
    const-string v2, "build  action getBytes  exception"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :goto_3
    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 259
    invoke-virtual {v13}, Landroid/os/ConditionVariable;->close()V

    .line 260
    const-wide/16 v2, 0x7d0

    invoke-virtual {v13, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 262
    :cond_3
    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncJsCall finish, action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_2
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 267
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11, v10, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    return-object v0

    .line 268
    :catch_2
    move-exception v0

    .line 269
    const-string v2, "build  synccall webResourceResponse  exception"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    return-object v8

    .line 273
    :cond_4
    move-object/from16 v1, p0

    const-string v2, "syncJsCall but not have permission!"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_3
    new-instance v2, Landroid/webkit/WebResourceResponse;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\'not in H5_SWSYNCAPILIST\')"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v11, v10, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 275
    return-object v2

    .line 279
    :catch_3
    move-exception v0

    .line 280
    const-string v2, "build no permission webResourceResponse exception"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    return-object v8
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    return-object p0
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 1

    .line 118
    const-string v0, "viewId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    nop

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getTopView()Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p1

    .line 125
    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p0

    return-object p0
.end method

.method private static a()Z
    .locals 3

    .line 367
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 368
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 369
    const-string v2, "h5_enableSWAsync"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 372
    :cond_0
    return v1
.end method


# virtual methods
.method public handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    if-nez v0, :cond_0

    .line 295
    const-string p1, "NebulaXEngine.BaseWorkerProxy"

    const-string p2, "handleMsgFromJs already destroyed!"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public jsapiCall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 76
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 77
    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsapiCall isSync="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NebulaXEngine.BaseWorkerProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p3, p4, p5}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public postMessage(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 62
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 69
    invoke-virtual {v3, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object p1

    const-string v0, "message"

    invoke-interface {p1, v0, v3, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 71
    return-void

    .line 65
    :cond_1
    :goto_0
    const-string p1, "NebulaXEngine.BaseWorkerProxy"

    const-string v0, "fatal nxView is null "

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public release()V
    .locals 1

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    .line 352
    return-void
.end method

.method public workerjsLoad(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    const/4 v1, 0x0

    const-string v2, "NebulaXEngine.BaseWorkerProxy"

    if-nez v0, :cond_0

    .line 90
    const-string p1, "workerjsLoad but engine destroyed!"

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "blob"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 97
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "work load url begin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canAsyncFallback(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_THIRD_PARTY:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->webType(I)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    .line 101
    const-class v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    .line 102
    invoke-static {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a:Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    invoke-interface {v4}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-nez v3, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "work load url form pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "work load url form online:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    if-eqz v0, :cond_4

    .line 111
    iget-object p1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    return-object p1

    .line 113
    :cond_4
    return-object v1

    .line 95
    :cond_5
    :goto_2
    return-object v1
.end method
