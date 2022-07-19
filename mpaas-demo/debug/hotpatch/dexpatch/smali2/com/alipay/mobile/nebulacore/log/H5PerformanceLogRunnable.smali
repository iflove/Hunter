.class public Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;
.super Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
.source "H5PerformanceLogRunnable.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5PageData;Ljava/util/Map;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 5
    .param p1, "pageData"    # Lcom/alipay/mobile/h5container/api/H5PageData;
    .param p2, "performance"    # Ljava/util/Map;
    .param p3, "availablePageData"    # Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
    .param p4, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p5, "jsError"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5PageData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5AvailablePageData;",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;-><init>(Ljava/util/Map;)V

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 63
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inside"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz p4, :cond_1

    .line 69
    invoke-interface {p4}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mimeType":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheSdcardLimit:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheSdcardLimit:Ljava/lang/String;

    const-string v3, "ucCacheSdcardLimit"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {p4}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    .local v2, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->g:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    const-string v4, "webViewVersion"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "0.0.0.0"

    sput-object v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f()V

    .line 88
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v2    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_1
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Landroid/content/Context;

    .line 48
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/lang/String;
    .locals 2
    .param p0, "pageData"    # Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 320
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getDslVersion(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 48
    sput-object p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 25
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "jsApiNum":I
    const-string v1, ""

    .line 330
    .local v1, "jsApiList":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfoList()Ljava/util/Map;

    move-result-object v3

    .line 331
    .local v3, "jsapiInfoList":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 332
    .local v4, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 333
    .local v5, "filterJSApiMap":Ljava/util/Map;
    const-string v6, "h5_newJsapiNamesLog"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 335
    .local v8, "infoObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v6

    const-string v9, "enable"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    .line 336
    .local v6, "enable":Z
    const-string v9, "exitWhitelist"

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 337
    .local v9, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const-string v10, "limit"

    const/16 v11, 0x1f4

    invoke-static {v8, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v10

    .line 339
    .local v10, "time":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v7

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "|"

    if-eqz v13, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 340
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/h5container/api/H5JsCallData;

    .line 341
    .local v12, "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    move-object v12, v13

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "jsApiName":Ljava/lang/String;
    move-object v15, v3

    .end local v3    # "jsapiInfoList":Ljava/util/Map;
    .local v15, "jsapiInfoList":Ljava/util/Map;
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getElapse()J

    move-result-wide v2

    .line 343
    .local v2, "elapse":J
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getIsMultiProcess()Ljava/lang/String;

    move-result-object v16

    .line 345
    .local v16, "isMultiProcess":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 346
    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 347
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 348
    .local v14, "count":I
    add-int/lit8 v17, v14, 0x1

    move-object/from16 v18, v4

    .end local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .local v18, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v14    # "count":I
    goto :goto_1

    .line 350
    .end local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    move-object/from16 v18, v4

    .end local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v2    # "elapse":J
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    .end local v13    # "jsApiName":Ljava/lang/String;
    .end local v16    # "isMultiProcess":Ljava/lang/String;
    :goto_1
    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v18

    goto :goto_0

    .line 345
    .end local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v2    # "elapse":J
    .restart local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v13    # "jsApiName":Ljava/lang/String;
    .restart local v16    # "isMultiProcess":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v4

    .line 353
    .end local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    add-int/lit8 v0, v0, 0x1

    .line 354
    if-eqz v6, :cond_a

    .line 355
    const-wide/16 v19, -0x1

    const-string v4, "]["

    const-string v14, "["

    move/from16 v17, v0

    .end local v0    # "jsApiNum":I
    .local v17, "jsApiNum":I
    const-string v0, "[]["

    move/from16 v21, v6

    .end local v6    # "enable":Z
    .local v21, "enable":Z
    const-string v6, "]|"

    const-string v22, ""

    cmp-long v23, v2, v19

    if-nez v23, :cond_6

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getJsApiStart()J

    move-result-wide v23

    sub-long v2, v19, v23

    .line 358
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .local v20, "entry":Ljava/util/Map$Entry;
    int-to-long v7, v10

    cmp-long v23, v2, v7

    if-lez v23, :cond_4

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v16, :cond_2

    move-object/from16 v4, v22

    goto :goto_2

    :cond_2
    move-object/from16 v4, v16

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_0

    .line 358
    .end local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .line 362
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "entry":Ljava/util/Map$Entry;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v16, :cond_5

    move-object/from16 v0, v22

    goto :goto_3

    :cond_5
    move-object/from16 v0, v16

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_0

    .line 364
    .end local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "entry":Ljava/util/Map$Entry;
    int-to-long v7, v10

    cmp-long v23, v2, v7

    if-lez v23, :cond_8

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v16, :cond_7

    move-object/from16 v4, v22

    goto :goto_4

    :cond_7
    move-object/from16 v4, v16

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_0

    .line 367
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v16, :cond_9

    move-object/from16 v0, v22

    goto :goto_5

    :cond_9
    move-object/from16 v0, v16

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_0

    .line 370
    .end local v17    # "jsApiNum":I
    .end local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    .end local v21    # "enable":Z
    .restart local v0    # "jsApiNum":I
    .restart local v6    # "enable":Z
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    move/from16 v17, v0

    move/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v0    # "jsApiNum":I
    .end local v6    # "enable":Z
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "jsApiNum":I
    .restart local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "entry":Ljava/util/Map$Entry;
    .restart local v21    # "enable":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .end local v2    # "elapse":J
    .end local v13    # "jsApiName":Ljava/lang/String;
    .end local v16    # "isMultiProcess":Ljava/lang/String;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v0, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 375
    .end local v15    # "jsapiInfoList":Ljava/util/Map;
    .end local v17    # "jsApiNum":I
    .end local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .end local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "enable":Z
    .restart local v0    # "jsApiNum":I
    .restart local v3    # "jsapiInfoList":Ljava/util/Map;
    .restart local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "enable":Z
    .restart local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_b
    move-object v15, v3

    move-object/from16 v18, v4

    move/from16 v21, v6

    move-object/from16 v19, v8

    .end local v3    # "jsapiInfoList":Ljava/util/Map;
    .end local v4    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "enable":Z
    .end local v8    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "jsapiInfoList":Ljava/util/Map;
    .restart local v18    # "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v19    # "infoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "enable":Z
    const-string v2, ""

    .line 376
    .local v2, "filterJSApiInfo":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 377
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 378
    .local v4, "filterEntry":Ljava/util/Map$Entry;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ")"

    const-string v8, "("

    if-eqz v6, :cond_c

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 381
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .end local v4    # "filterEntry":Ljava/util/Map$Entry;
    goto :goto_6

    .line 386
    :cond_d
    if-lez v0, :cond_e

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "jsApiNum"

    invoke-virtual {v3, v6, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v4, "jsApiNames"

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 388
    const-string v4, "filterJsapiLogs"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 390
    :cond_e
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 439
    const-string v0, "H5PerformanceLog"

    .line 442
    nop

    .line 445
    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 446
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string p0, "getSystemWebViewVersion, getDefaultUserAgent"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_0
    goto :goto_0

    .line 449
    :catchall_0
    move-exception p0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSystemWebViewVersion"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getSystemWebViewVersion, ua = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 456
    const-string p0, "Chrome/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 457
    add-int/lit8 v0, p0, 0x7

    .line 458
    if-ltz p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt v0, p0, :cond_1

    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 463
    if-ltz v0, :cond_1

    .line 464
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 469
    :cond_1
    const-string p0, "0.0.0.0"

    :goto_1
    return-object p0
.end method

.method private b()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetRequestInfo()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    .local v1, "netInfo":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string v0, "H5_WSNET_PERF"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 133
    .local v0, "netInfoData":Lcom/alipay/mobile/nebula/log/H5LogData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, "netInfoStr":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 135
    .local v4, "entry":Ljava/util/Map$Entry;
    const-string v5, "url::"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "netinfo"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 139
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v3

    const-string v4, "WEBSTAT"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v3

    .line 140
    .local v3, "config":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 143
    .end local v0    # "netInfoData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v1    # "netInfo":Ljava/util/Map;
    .end local v2    # "netInfoStr":Ljava/lang/StringBuilder;
    .end local v3    # "config":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsApiConfig"    # Ljava/lang/String;

    .line 256
    const-class v0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    .line 257
    .local v0, "jsApiConfigModel":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsApiDetail()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "jsApiDetail":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    const-string v2, ""

    .line 260
    .local v2, "spdyDetail":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorSpdyMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Y`_`Y`_`"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorSpdyMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->isSpdy()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Y"

    goto :goto_0

    :cond_1
    const-string v3, "N"

    .line 264
    .local v3, "useSpdy":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "`_`N`_``_`"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .end local v3    # "useSpdy":Ljava/lang/String;
    :goto_1
    const-string v3, "H5_SEC_JSAPICALL"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v4, "logVersion"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 267
    const-string v4, "jsapi"

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v4, "spdy"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pageLevel"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 268
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 270
    .local v3, "jsApiLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v4

    const-string v5, "H5SECURITY"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v4

    .line 271
    .local v4, "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 273
    .end local v2    # "spdyDetail":Ljava/lang/String;
    .end local v3    # "jsApiLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v4    # "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStartTime(Lcom/alipay/mobile/h5container/api/H5PageData;)J

    move-result-wide v0

    .line 395
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 397
    .local v2, "end":J
    const-wide/16 v4, 0x0

    .line 398
    .local v4, "elapsed":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 399
    sub-long v4, v2, v0

    .line 401
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 402
    .end local v0    # "start":J
    .end local v2    # "end":J
    .end local v4    # "elapsed":J
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5PerformanceLog"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    const-string v1, "0"

    return-object v1
.end method

.method private c()V
    .locals 11

    .line 146
    const-string v0, "H5_PAGE_PERFORMANCE"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 149
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPerformanceDataMap(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e:Ljava/util/Map;

    .line 152
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 153
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 158
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v4, "jsErrors"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    const-string v3, "pageLoad"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a:Ljava/util/Map;

    const-string v3, "domReady"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->getStopLoadingTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {v3, v4, v1, v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLcom/alipay/mobile/h5container/api/H5PageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)J

    move-result-wide v3

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 170
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->getStopLoadingTimeWithLoc()J

    move-result-wide v5

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {v5, v6, v1, v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLcom/alipay/mobile/h5container/api/H5PageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)J

    move-result-wide v5

    .line 172
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "stopLoading"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 173
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "stopLoadingWithoutLocating"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 175
    const-string v1, "h5_uploadCacheResNum"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getUcCacheResNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cacheResNum"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 177
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAliRequestResNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "aliResNum"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 180
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "enableBugmeDump"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 185
    :cond_4
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z

    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "lastModifiedFailPKGI"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 189
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_6

    .line 191
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 192
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 193
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "screenDisplay"

    invoke-virtual {v4, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 196
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_7

    .line 198
    const-string v3, "\\s+"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v5, "cpuHardware"

    invoke-virtual {v3, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 202
    :cond_7
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 204
    sget-wide v5, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J

    const-string v1, "H5PerformanceLog"

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_8

    .line 205
    sget-wide v5, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J

    sget-wide v9, Lcom/alipay/mobile/h5container/api/H5PageData;->createAppTime:J

    sub-long/2addr v5, v9

    .line 206
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "swFirstJsApiCallTime"

    invoke-virtual {v3, v10, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "tinyApp swFirstJsApiCallTime "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sput-wide v7, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J

    .line 212
    :cond_8
    sget-object v3, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 213
    const-string v3, "0.0.0.0"

    sput-object v3, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    .line 215
    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b:Ljava/lang/String;

    const-string v6, "systemWebViewVersion"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 217
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsLocal()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isLocal"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 218
    const-string v6, "containCORSRes"

    invoke-virtual {v5, v6, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 219
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->isUsePreRequest()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "usePreRequest"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-boolean v5, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseUCParallelInit:Z

    .line 220
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "useParallelUcInit"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 221
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->isPreConnectRequest()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "preConnectRequest"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 222
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAbTestUsedTime()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 223
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAbTestUsedTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_a
    nop

    .line 222
    :goto_1
    const-string v5, "abtestUsedTime"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 224
    const-string v5, "fallbackType"

    invoke-virtual {v4, v5, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 225
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "protocal"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 226
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getLastResponseTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "responseDuration"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 227
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestCountByProtocal(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 228
    const-string v4, "spdy"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestCountByProtocal(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 229
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestCountByProtocal(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 230
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->isUseWebViewPool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "useWebViewPool"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 231
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getLottieLoadingAnimStart()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lottieLoadStart"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 232
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getLottieLoadingAnimEnd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lottieLoadEnd"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    .line 233
    const-string v4, "isLowerDevice"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 234
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getMultiProcessMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "multiProcessMode"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 235
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->isUsePushWindowAnim()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "pushWindowAnim"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wwebview_init: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreate()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getUCCorePerfExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 240
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getUCCorePerfExtra()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ucCorePerfExtra"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 243
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 245
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "appxVersion"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 248
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v1

    .line 249
    const-string v2, "webapp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v1

    .line 250
    const-string v2, "H-MM"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 253
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_0

    .line 277
    const-string v0, ""

    return-object v0

    .line 280
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 281
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string v1, ""

    .line 282
    .local v1, "pageLevel":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 283
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isRpcDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const-string v1, "rpc"

    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    const-string v1, "alipay"

    goto :goto_0

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isSeriousAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    const-string v1, "seriousAli"

    goto :goto_0

    .line 289
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    const-string v1, "ali"

    goto :goto_0

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isPartnerDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    const-string v1, "partner"

    goto :goto_0

    .line 294
    :cond_5
    const-string v1, "else"

    .line 297
    :cond_6
    :goto_0
    return-object v1
.end method

.method private e()V
    .locals 8

    .line 301
    const-string v0, ""

    .line 302
    .local v0, "jsApiPerformance":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfoList()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 303
    .local v3, "jsApiMap":Ljava/util/Map;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 304
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5JsCallData;

    .line 306
    .local v4, "callData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "_"

    if-eqz v5, :cond_0

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getElapse()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getElapse()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .end local v4    # "callData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    goto :goto_0

    .line 312
    :cond_1
    const-string v1, "H5_JSAPI_PERFORMANCE"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getsApiPerExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "appId"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 315
    const-string v2, "jsApi"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 317
    :cond_2
    return-void
.end method

.method private f()V
    .locals 3

    .line 411
    nop

    .line 412
    const-string v0, "h5_enableGetSystemWebViewVersion"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "systemWebViewVersionSwitch":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    return-void

    .line 417
    :cond_0
    const-string v1, "NORMAL"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;-><init>(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c()V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "H5_AL_PAGE_JSERROR"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->g:Ljava/lang/String;

    const-string v3, "webViewVersion"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 103
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dslVersion"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 107
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableJsApiPerformance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->e()V

    .line 112
    :cond_2
    const-string v0, "h5_secJsApiCallConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v1, "jsApiConfig":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b(Ljava/lang/String;)V

    .line 118
    :cond_3
    const-string v0, "h5_netstatlog"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 119
    .local v0, "netStatLog":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "switch"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->b()V

    .line 123
    :cond_4
    return-void

    .line 93
    .end local v0    # "netStatLog":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "jsApiConfig":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method
