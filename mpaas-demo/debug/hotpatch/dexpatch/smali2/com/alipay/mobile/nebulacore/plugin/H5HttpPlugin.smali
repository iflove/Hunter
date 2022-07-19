.class public Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5HttpPlugin.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final HTTP_REQUEST:Ljava/lang/String; = "httpRequest"

.field public static final TAG:Ljava/lang/String; = "H5HttpPlugin"


# instance fields
.field private a:Landroid/net/http/AndroidHttpClient;

.field private b:Z

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "oriUrl"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 311
    .local v0, "finalUrl":Ljava/lang/String;
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 312
    .local v3, "entryUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-static {v3, p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_0
    move-object v0, p0

    .line 317
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    .line 150
    :cond_0
    return-void
.end method

.method private static a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p0, "resultCode"    # I
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 112
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 113
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 115
    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 108
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 24

    .line 347
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "error"

    const/4 v5, 0x2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 352
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 353
    const-string v7, "url"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 354
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-static {v5, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 356
    return-void

    .line 359
    :cond_1
    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 361
    return-void

    .line 365
    :cond_2
    const-string v0, "method"

    const-string v9, "GET"

    invoke-static {v6, v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 368
    const-string v11, "headers"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v13

    .line 369
    invoke-static {v6, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 371
    const-string v15, "data"

    invoke-static {v6, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const/4 v12, -0x1

    const-string v5, "timeout"

    invoke-static {v6, v5, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 373
    const-string v12, "responseType"

    invoke-static {v6, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 374
    move-object/from16 v16, v7

    const-string v7, "responseCharset"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    nop

    .line 378
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    move-object/from16 v18, v4

    const-string v4, "application/x-www-form-urlencoded"

    move-object/from16 v19, v15

    const-string v15, "POST"

    const-string v2, "exception detail"

    move/from16 v20, v5

    const-string v5, "Content-Type"

    move-object/from16 v21, v14

    const-string v14, "UTF-8"

    move-object/from16 v22, v13

    const-string v13, "H5HttpPlugin"

    if-nez v17, :cond_9

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v17, v10

    goto/16 :goto_2

    .line 384
    :cond_3
    const-string v9, "DELETE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 385
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v17, v10

    goto/16 :goto_3

    .line 386
    :cond_4
    const-string v9, "HEADER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 387
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v17, v10

    goto :goto_3

    .line 388
    :cond_5
    const-string v9, "PUT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 389
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v17, v10

    goto :goto_3

    .line 390
    :cond_6
    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 391
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 393
    if-eqz v0, :cond_7

    .line 394
    nop

    .line 396
    move-object/from16 v17, v10

    :try_start_0
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    .line 400
    :goto_0
    invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    .line 393
    :cond_7
    move-object/from16 v17, v10

    .line 402
    :goto_1
    nop

    .line 405
    invoke-virtual {v6, v11}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 406
    invoke-interface {v9, v5, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 390
    :cond_8
    move-object/from16 v17, v10

    const/4 v9, 0x0

    goto :goto_3

    .line 378
    :cond_9
    move-object/from16 v17, v10

    .line 379
    :goto_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-direct {v1, v8, v12, v7, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 381
    return-void

    .line 380
    :cond_a
    move-object v9, v0

    .line 413
    :cond_b
    :goto_3
    if-eqz v22, :cond_d

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 414
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 415
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 417
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v6

    :try_start_3
    move-object/from16 v6, v22

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v6, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 421
    move-object/from16 v6, v23

    goto :goto_5

    .line 418
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v23, v6

    .line 419
    :goto_6
    :try_start_4
    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    move-object/from16 v6, v23

    goto :goto_5

    .line 423
    :cond_c
    move-object/from16 v23, v6

    goto :goto_4

    .line 441
    :catch_3
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_a

    .line 426
    :cond_d
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 427
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 429
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_e

    .line 431
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 432
    move-object/from16 v10, v21

    :try_start_6
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v22, v2

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-interface {v9, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    .line 434
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v10, v21

    .line 435
    :goto_8
    :try_start_8
    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 436
    :goto_9
    move-object/from16 v21, v10

    move-object/from16 v2, v22

    goto :goto_7

    .line 441
    :catch_7
    move-exception v0

    goto :goto_a

    .line 429
    :cond_e
    move-object/from16 v22, v2

    goto :goto_b

    .line 442
    :goto_a
    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 426
    :cond_f
    move-object/from16 v22, v2

    .line 443
    :goto_b
    nop

    .line 445
    :goto_c
    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 446
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 447
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    const-string v2, "x-ldcid-level"

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_10
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 450
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    const-string v2, "x-user-group"

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_11
    nop

    .line 456
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v14

    goto :goto_d

    :cond_12
    move-object v0, v7

    .line 455
    :goto_d
    const-string v2, "Accept-Charset"

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v2, v17

    invoke-static {v2, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v9, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 461
    invoke-interface {v9, v5, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_13
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isTinyApp"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 465
    const-string v2, "referer"

    if-eqz v0, :cond_14

    const-string v0, "h5_getReferWithAppId"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "no"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_14

    .line 467
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 469
    :cond_14
    invoke-interface {v9, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_15

    .line 470
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_15
    :goto_e
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 478
    const-string v2, "Cookie"

    invoke-interface {v9, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_16
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_17

    .line 482
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 483
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 484
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 485
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    .line 489
    :cond_17
    if-gez v20, :cond_18

    .line 491
    const/16 v5, 0x7530

    goto :goto_f

    .line 489
    :cond_18
    move/from16 v5, v20

    .line 494
    :goto_f
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 495
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "http.connection.timeout"

    invoke-interface {v0, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 498
    :cond_19
    const-string v0, "http"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 499
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v2, p1

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 500
    return-void

    .line 503
    :cond_1a
    move-object/from16 v2, v22

    .line 505
    :try_start_9
    const-string v0, "check point 1, ready to execute"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_1b

    .line 507
    return-void

    .line 509
    :cond_1b
    invoke-virtual {v0, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 510
    if-nez v0, :cond_1c

    .line 512
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_server_error:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0, v3, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 514
    return-void

    .line 518
    :cond_1c
    const-string v5, "check point 3, execute done"

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-boolean v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b:Z

    if-eqz v5, :cond_1d

    .line 520
    return-void

    .line 523
    :cond_1d
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 524
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 525
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 526
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 527
    const-string v10, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 529
    nop

    .line 530
    if-eqz v10, :cond_20

    .line 531
    const-string v15, "base64"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 532
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 533
    const/4 v10, 0x2

    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 534
    goto :goto_10

    .line 535
    :cond_1e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 536
    invoke-static {v10, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    .line 538
    :cond_1f
    invoke-static {v10, v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    .line 530
    :cond_20
    const/4 v12, 0x0

    .line 542
    :goto_10
    move-object/from16 v7, v19

    invoke-virtual {v9, v7, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_24

    .line 545
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 546
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v10, v0

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v10, :cond_23

    aget-object v15, v0, v14

    .line 547
    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    .line 548
    if-eqz v4, :cond_21

    .line 549
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 550
    move-object/from16 p1, v0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 551
    invoke-virtual {v0, v4, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v0, "set-cookie"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 555
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v8, v15}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 548
    :cond_21
    move-object/from16 p1, v0

    .line 546
    :cond_22
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    const/4 v4, 0x0

    goto :goto_11

    .line 559
    :cond_23
    invoke-virtual {v9, v11, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-virtual {v9, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 564
    const/16 v0, 0x1f6

    const-string v7, "errorMsg"

    if-ne v5, v0, :cond_25

    .line 566
    const/16 v0, 0xd

    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 568
    :cond_25
    const/16 v0, 0x193

    if-ne v5, v0, :cond_26

    .line 570
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 572
    :cond_26
    const/16 v0, 0x190

    if-lt v5, v0, :cond_27

    .line 573
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-object/from16 v4, v16

    invoke-virtual {v9, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_27
    :goto_13
    if-eqz v3, :cond_28

    .line 578
    invoke-interface {v3, v9}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 581
    :cond_28
    const-string v0, "NO"

    const-string v4, "h5_enableExtensionForEdge"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 582
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0, v8, v12}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 584
    :cond_29
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    .line 585
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->extensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 586
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v4, v8, v12}, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;->onHandleResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 589
    :cond_2a
    const/4 v0, 0x3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 596
    return-void

    .line 591
    :catch_8
    move-exception v0

    .line 593
    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 595
    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "executeException"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 598
    return-void

    .line 348
    :cond_2b
    :goto_14
    const/4 v2, 0x2

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 349
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
    .locals 26

    .line 714
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x2

    if-eqz v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_10

    .line 719
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 720
    const-string v5, "url"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 721
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 722
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 723
    return-void

    .line 727
    :cond_1
    const-string v0, "method"

    const-string v6, "GET"

    invoke-static {v4, v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 730
    const-string v14, "headers"

    const/4 v7, 0x0

    invoke-static {v4, v14, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 731
    invoke-static {v4, v14, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 733
    const-string v13, "data"

    invoke-static {v4, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    const/4 v11, -0x1

    const-string v12, "timeout"

    invoke-static {v4, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v11

    .line 735
    if-gez v11, :cond_2

    const/16 v11, 0x7530

    .line 736
    :cond_2
    const-string v12, "responseType"

    invoke-static {v4, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 737
    const-string v7, "responseCharset"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 739
    move-object/from16 v17, v13

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 740
    nop

    .line 742
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 744
    invoke-direct {v1, v15, v12, v7, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 745
    return-void

    .line 750
    :cond_3
    const-string v6, "POST"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v19, v12

    const-string v12, "UTF-8"

    move-object/from16 v20, v5

    const-string v5, "application/x-www-form-urlencoded"

    move/from16 v21, v11

    const-string v11, "Content-Type"

    const-string v2, "H5HttpPlugin"

    if-eqz v18, :cond_5

    .line 751
    if-eqz v0, :cond_4

    .line 753
    :try_start_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    move-object/from16 v16, v0

    move-object/from16 v18, v12

    goto :goto_1

    .line 754
    :catch_0
    move-exception v0

    move-object/from16 v18, v12

    move-object v12, v0

    .line 755
    invoke-static {v2, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 751
    :cond_4
    move-object/from16 v18, v12

    .line 759
    :goto_0
    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 760
    invoke-interface {v13, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 750
    :cond_5
    move-object/from16 v18, v12

    const/16 v16, 0x0

    .line 765
    :cond_6
    :goto_2
    nop

    .line 766
    nop

    .line 770
    const-string v4, "exception detail"

    const-string v12, "content-type"

    move-object/from16 v22, v14

    if-eqz v9, :cond_9

    :try_start_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 771
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v23, 0x0

    :goto_3
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 772
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 774
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v14, v25

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 775
    const/16 v23, 0x1

    .line 777
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 781
    goto :goto_4

    .line 778
    :catch_1
    move-exception v0

    .line 779
    :try_start_4
    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    goto :goto_4

    .line 783
    :cond_8
    goto :goto_3

    .line 803
    :catch_2
    move-exception v0

    const/16 v23, 0x0

    goto :goto_7

    .line 787
    :cond_9
    const/16 v23, 0x0

    :cond_a
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 788
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 790
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_c

    .line 792
    :try_start_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 794
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 795
    const/16 v23, 0x1

    .line 797
    :cond_b
    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 798
    :catch_3
    move-exception v0

    .line 799
    :try_start_6
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 800
    :goto_6
    goto :goto_5

    .line 803
    :catch_4
    move-exception v0

    .line 804
    :goto_7
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 805
    :cond_c
    nop

    .line 807
    :goto_8
    nop

    .line 808
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v12, v18

    goto :goto_9

    :cond_d
    move-object v12, v7

    .line 807
    :goto_9
    const-string v0, "Accept-Charset"

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-direct {v1, v15}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 811
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 812
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;

    const-string v9, "x-ldcid-level"

    invoke-interface {v13, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_e
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 815
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    const-string v9, "x-user-group"

    invoke-interface {v13, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 820
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 822
    invoke-interface {v13, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 825
    :cond_10
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v23, :cond_11

    .line 827
    invoke-interface {v13, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_11
    :goto_a
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    const-string v5, "su584appid"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 835
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->e:Ljava/lang/String;

    const-string v5, "su584publicid"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_12
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 839
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->f:Ljava/lang/String;

    const-string v5, "x-release-type"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_13
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 843
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->g:Ljava/lang/String;

    const-string v5, "su584appversion"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_14
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 847
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h:Ljava/lang/String;

    const-string v5, "su584tinyappversion"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_15
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 851
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->i:Ljava/lang/String;

    const-string v5, "su584bizscenario"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_16
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v5, "su584appletpage"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "isTinyApp"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 857
    const-string v5, "referer"

    if-eqz v0, :cond_17

    const-string v0, "h5_getReferWithAppId"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "no"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_17

    .line 859
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 861
    :cond_17
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_18

    .line 862
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_18
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 868
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getCookie cost "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 871
    const-string v5, "Cookie"

    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_19
    const-string v0, "User-Agent"

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "user-agent"

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v5, :cond_1a

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v5

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v5

    .line 875
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 876
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    :cond_1a
    const-string v0, "http"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 881
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v2, p1

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 882
    return-void

    .line 885
    :cond_1b
    :try_start_7
    const-string v0, "check point 1, ready to execute"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 889
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 890
    if-eqz v6, :cond_20

    .line 893
    if-eqz p3, :cond_1c

    .line 895
    move/from16 v11, v21

    int-to-long v11, v11

    .line 897
    invoke-direct {v1, v15}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d(Ljava/lang/String;)Z

    move-result v0

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 896
    move-object v14, v7

    move-object v7, v15

    move-object v9, v13

    move-object/from16 v10, v16

    move-object/from16 v18, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v4

    move-object/from16 v4, v22

    move-object/from16 p1, v15

    move v15, v0

    move-object/from16 v16, v5

    :try_start_8
    invoke-virtual/range {v6 .. v16}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    move-result-object v0

    goto :goto_c

    .line 900
    :cond_1c
    move-object v14, v7

    move-object/from16 p1, v15

    move-object/from16 v18, v19

    move/from16 v11, v21

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v22

    int-to-long v11, v11

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 901
    move-object/from16 v7, p1

    move-object v9, v13

    move-object/from16 v10, v16

    move-object/from16 v13, v18

    move-object/from16 v16, v0

    invoke-virtual/range {v6 .. v16}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    move-result-object v0

    .line 906
    :goto_c
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 907
    const-string v6, "status"

    iget v7, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v6, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v2, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseHeader:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget v2, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const-string v4, "error"

    if-nez v2, :cond_1d

    :try_start_9
    iget v2, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    const/16 v6, 0x190

    if-lt v2, v6, :cond_1d

    .line 912
    iget v2, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 913
    move-object/from16 v2, p1

    move-object/from16 v4, v20

    :try_start_a
    invoke-virtual {v5, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 910
    :cond_1d
    move-object/from16 v2, p1

    .line 915
    iget v6, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :goto_d
    if-eqz v3, :cond_1e

    .line 919
    invoke-interface {v3, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 921
    :cond_1e
    const-string v4, "NO"

    const-string v5, "h5_enableExtensionForEdge"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 922
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 924
    :cond_1f
    const-class v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    .line 925
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->extensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 926
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    invoke-interface {v4, v5, v2, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;->onHandleResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_e

    .line 931
    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_f

    .line 936
    :cond_20
    :goto_e
    return-void

    .line 931
    :catch_7
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v4

    move-object v2, v15

    .line 933
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 934
    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "executeException"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 937
    return-void

    .line 715
    :cond_21
    :goto_10
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 716
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "x3"    # Z

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 4
    .param p0, "errorMsg"    # Ljava/lang/String;
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "url"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 120
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "errorMsg"

    invoke-virtual {v1, v0, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "url"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 124
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reqUrl"    # Ljava/lang/String;

    .line 322
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 323
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 324
    const-string v1, "h5_shouldCheckSPPermission"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "value":Ljava/lang/String;
    const-string v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    return v2

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "currentUrl":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    :cond_2
    const-string v2, "h5_al_jsapi_permission_cors"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "reqUrl"

    invoke-virtual {v2, v4, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "currentUrl"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 334
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 338
    const/4 v2, 0x0

    return v2

    .line 331
    :cond_3
    :goto_0
    return v2

    .line 342
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "currentUrl":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "whiteList"    # Lcom/alibaba/fastjson/JSONArray;

    .line 641
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 642
    :cond_0
    const/4 v0, 0x0

    .line 643
    .local v0, "isMatch":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 644
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v2, "whiteItem":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    const/4 v0, 0x1

    .line 647
    goto :goto_1

    .line 643
    .end local v2    # "whiteItem":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0

    .line 641
    .end local v0    # "isMatch":Z
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 71
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;
    .param p3, "responseCharset"    # Ljava/lang/String;
    .param p4, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 255
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p4

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 259
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "onlineHost"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "host":Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    return v3

    .line 265
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "realPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "getFromPkg realPath "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "H5HttpPlugin"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    .line 268
    .local v8, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v8, v0

    if-eqz v0, :cond_7

    .line 269
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    move-object v9, v7

    .line 270
    .local v9, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    move-object v9, v0

    if-eqz v0, :cond_6

    .line 271
    nop

    .line 272
    const/4 v0, 0x1

    invoke-interface {v9, v5, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v10

    move-object v11, v7

    .line 273
    .local v11, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    move-object v11, v10

    if-eqz v10, :cond_5

    .line 275
    :try_start_0
    invoke-virtual {v11}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v10

    .line 276
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 277
    .local v12, "content":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 278
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 279
    .local v7, "bytes":[B
    const-string v13, "base64"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 280
    const/4 v13, 0x2

    invoke-static {v7, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    move-object/from16 v15, p3

    goto :goto_0

    .line 282
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 283
    new-instance v13, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p3

    :try_start_2
    invoke-direct {v13, v7, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v12, v13

    goto :goto_0

    .line 285
    :cond_3
    move-object/from16 v15, p3

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v7}, Ljava/lang/String;-><init>([B)V

    move-object v12, v13

    .line 288
    :goto_0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 294
    .end local v7    # "bytes":[B
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 277
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "content":Ljava/lang/String;
    :cond_4
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 290
    :goto_1
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 291
    .local v7, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v13

    const-string v3, "data"

    invoke-virtual {v13, v3, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    move-object/from16 v3, p4

    :try_start_3
    invoke-interface {v3, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    return v0

    .line 294
    .end local v7    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "content":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v14, p2

    :goto_2
    move-object/from16 v15, p3

    :goto_3
    move-object/from16 v3, p4

    .line 295
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 273
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p4

    goto :goto_5

    .line 270
    .end local v11    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_6
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p4

    goto :goto_5

    .line 268
    .end local v9    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    :cond_7
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p4

    .line 300
    :goto_5
    const/4 v6, 0x0

    return v6

    .line 255
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "realPath":Ljava/lang/String;
    .end local v8    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_8
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p4

    const/4 v6, 0x0

    .line 256
    :goto_6
    return v6
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private b()Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->j:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    if-nez v0, :cond_0

    .line 247
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->j:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->j:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "/"

    .line 601
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 602
    .local v3, "uri":Landroid/net/Uri;
    move-object v3, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v2, "path":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    return-object p1

    .line 610
    :cond_1
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    .line 611
    .local v5, "pathIndex":I
    move v5, v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 612
    return-object p1

    .line 614
    :cond_2
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "authorityWithPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    return-object v0

    .line 617
    .end local v1    # "authorityWithPath":Ljava/lang/String;
    .end local v5    # "pathIndex":I
    :catchall_0
    move-exception v0

    .line 618
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5HttpPlugin"

    const-string v4, "getReferWithAppId subString"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    return-object p1

    .line 603
    .end local v0    # "thr":Ljava/lang/Throwable;
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1
.end method

.method private static b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 213
    const-string v0, "h5_httpRequestUseAliNet"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 216
    :cond_0
    const-string v0, "h5_httpRequest_useAlipayNetAppList"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 218
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    return v1

    .line 223
    :cond_1
    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 225
    const-string v4, "url"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    .line 227
    .local v4, "cleanUrl":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    nop

    .line 229
    const-string v0, "h5_httpRequest_useAlipayNetUrlList"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 231
    .local v2, "configArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 233
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    return v1

    .line 232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    .end local v2    # "configArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "cleanUrl":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->f:Ljava/lang/String;

    return-object p1
.end method

.method private static c()Z
    .locals 5

    .line 700
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_switchcontrol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 701
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 702
    .local v1, "disableSpdy":Z
    const-string v2, "H5HttpPlugin"

    if-eqz v0, :cond_0

    .line 703
    const-string v3, "enableSPDY"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v4

    move v1, v3

    goto :goto_0

    .line 705
    :cond_0
    const-string v3, "disableSpdyByScanQRCode preferences == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disableSpdyByScanQRCode disableSpdy : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return v1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 625
    const-string v0, "h5_ldcLevelConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 626
    .local v0, "jsonObjLdcLevel":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 627
    .local v3, "uri":Landroid/net/Uri;
    move-object v3, v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    const-string v1, "enableHttpRequest"

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 631
    if-nez v1, :cond_1

    .line 632
    return v4

    .line 634
    :cond_1
    const-string v1, "domainList"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 635
    .local v1, "ldcWhiteList":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v2

    .line 636
    .local v2, "isMatch":Z
    const-string v4, "group"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->k:Ljava/lang/String;

    .line 637
    return v2

    .line 628
    .end local v1    # "ldcWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "isMatch":Z
    :cond_2
    :goto_0
    return v4
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b()Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->g:Ljava/lang/String;

    return-object p1
.end method

.method private static d()Z
    .locals 2

    .line 940
    const-string v0, "h5_httpRequestHeader_caseInsensitive"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const/4 v1, 0x1

    return v1

    .line 946
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .line 654
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    return v1

    .line 657
    :cond_0
    const-string v0, "h5_tinyNotUseSpdyCfg"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 658
    const-string v2, "all"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    return v1

    .line 661
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isInnerTinyAppId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "inner"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    return v1

    .line 665
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 666
    if-eqz v0, :cond_3

    .line 668
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v2, v3, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->httpRequestShouldUseSpdy(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v0

    .line 669
    if-nez v0, :cond_3

    .line 670
    return v1

    .line 675
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 676
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 677
    const-string v3, "h5HttpRequestUseSpdyOnAppId"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 679
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 680
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 681
    return v1

    .line 685
    :cond_4
    const-string v3, "h5HttpRequestUseSpdyOnUrl"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 688
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v1

    .line 691
    :cond_6
    return v2
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->i:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 155
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 160
    :cond_0
    const-string v1, "httpRequest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 208
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 306
    const-string v0, "httpRequest"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b:Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5HttpPlugin"

    const-string v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
