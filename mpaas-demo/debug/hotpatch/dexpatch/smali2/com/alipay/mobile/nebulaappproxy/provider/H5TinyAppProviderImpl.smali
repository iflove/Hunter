.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl;
.super Ljava/lang/Object;
.source "H5TinyAppProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 392
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 393
    .local v2, "h5TitleBar":Lcom/alipay/mobile/nebula/view/H5TitleView;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 394
    return-object v1

    .line 397
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getH5TinyPopMenu()Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    move-result-object v0

    move-object v3, v1

    .line 398
    .local v3, "popMenu":Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 399
    return-object v1

    .line 401
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->containsFavoriteMenuItem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 409
    .local v4, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    move-object v4, v1

    const-string v5, "H5TinyAppProviderImpl"

    if-nez v1, :cond_0

    .line 410
    const-string/jumbo v1, "rpcResultContainsFavoriteItemDiffAppId get sp fail."

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-object v2

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_menu"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "key":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v4, v1, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v2

    .line 417
    .local v6, "menuContent":Ljava/lang/String;
    move-object v6, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rpcResultContainsFavoriteItemDiffAppId get sp ["

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] is empty."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-object v2

    .line 422
    :cond_1
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 423
    const-string/jumbo v7, "result"

    invoke-static {v3, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 424
    const-string/jumbo v7, "menus"

    invoke-static {v3, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    move-object v7, v2

    .line 425
    .local v7, "menus":Lcom/alibaba/fastjson/JSONArray;
    move-object v7, v3

    if-eqz v3, :cond_4

    .line 426
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 427
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 428
    const-string/jumbo v8, "mid"

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "mid":Ljava/lang/String;
    const-string v8, "1005"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 431
    const-string/jumbo v8, "rpcResultContainsFavoriteItemDiffAppId 1005 exist!"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 426
    .end local v3    # "mid":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "i":I
    :cond_3
    const-string/jumbo v2, "rpcResultContainsFavoriteItemDiffAppId 1005 is not exist."

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 441
    :cond_4
    const-string/jumbo v3, "rpcResultContainsFavoriteItemDiffAppId is invalid"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-object v2
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 5
    .param p0, "result"    # Ljava/lang/Object;

    .line 120
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "type":Ljava/lang/String;
    move-object v1, p0

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "url":Ljava/lang/String;
    const-string v2, "OnReportException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportErrorOnRender jsError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5TinyAppProviderImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    .line 128
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "h5_reportErrorOnRender"

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl$2;

    invoke-direct {v4, v1, p0}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl$2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 164
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkBinaryRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "charset"    # Ljava/lang/String;

    .line 306
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkBinaryRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public checkBinaryRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "charset"    # Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 356
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkBinaryRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public checkImageRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B

    .line 294
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkImageRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B

    .line 343
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 332
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public favoriteMenuItemHideByJSAPI(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 447
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 448
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 450
    return v3

    .line 453
    :cond_0
    const-string/jumbo v0, "showFavoriteMenu"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v1, "showFavorite":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    const/4 v4, 0x1

    const-string v5, "favoriteMenuItemHideByJSAPI...DONOT show favorite menu"

    const-string v6, "H5TinyAppProviderImpl"

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return v4

    .line 459
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getShouldShowFavorite(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return v4

    .line 464
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "favoriteMenuItemHideByJSAPI... return true! "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return v3
.end method

.method public getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "startParams"    # Landroid/os/Bundle;
    .param p2, "url"    # Ljava/lang/String;

    .line 269
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddlePageTitleBarLayoutId()I
    .locals 1

    .line 367
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_app_activity_loading_view:I

    return v0
.end method

.method public handleStartupParams(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 186
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppStartupInterceptor()Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    .local v1, "interceptor":Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-interface {v1, p1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;->handleStartupParams(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public handlerAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppStartupInterceptor()Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 169
    .local v1, "interceptor":Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 170
    return-object p2

    .line 172
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;->handlerAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public handlerBundleToH5EventForIpc(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p4, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 233
    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 236
    :cond_0
    invoke-interface {p4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 237
    .local v2, "pageParams":Landroid/os/Bundle;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 238
    return-void

    .line 241
    :cond_1
    const-string/jumbo v0, "navigateToMiniProgram"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const-string/jumbo v0, "nbsn"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v1, "nbsn":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v1    # "nbsn":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    const-string v0, "healthKitRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    const/4 v0, 0x1

    const-string v3, "isbackgroundnow"

    invoke-static {p2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .local v0, "isBg":Z
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 249
    .local v1, "eventParam":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v4

    if-eqz v4, :cond_4

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v0    # "isBg":Z
    .end local v1    # "eventParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "setTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 253
    const-string v0, "getTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 254
    const-string/jumbo v0, "removeTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 255
    const-string v0, "clearTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 256
    const-string v0, "getTinyLocalStorageInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    :cond_6
    const-string v0, "embed_webview_flag"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v1, "embed":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 259
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_7
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 265
    .end local v1    # "embed":Ljava/lang/String;
    :cond_8
    return-void

    .line 234
    .end local v2    # "pageParams":Landroid/os/Bundle;
    :cond_9
    :goto_0
    return-void
.end method

.method public handlerH5EventToBundleForIpc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 204
    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 207
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 208
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 209
    return-void

    .line 211
    :cond_1
    const-string/jumbo v0, "navigateToMiniProgram"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "nbsn"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v1, "nbsn":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v1    # "nbsn":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    const-string v0, "healthKitRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    .line 218
    .local v0, "isBg":Z
    const-string v1, "isbackgroundnow"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    .end local v0    # "isBg":Z
    return-void

    :cond_4
    const-string/jumbo v0, "setTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    const-string v0, "getTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    const-string/jumbo v0, "removeTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 222
    const-string v0, "clearTinyLocalStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 223
    const-string v0, "getTinyLocalStorageInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    :cond_5
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v1, "embed":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 226
    const-string v0, "embed_webview_flag"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v1    # "embed":Ljava/lang/String;
    :cond_6
    return-void

    .line 205
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_7
    :goto_0
    return-void
.end method

.method public handlerOnPushWindowParam(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string/jumbo v0, "pullRefresh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 113
    const-string v0, "H5TinyAppProviderImpl"

    const-string v1, "handlerOnPushWindowParam remove pullRefresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public handlerOnShareData(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 91
    return-object v0

    .line 93
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 94
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isUseNativeShareSwitch()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "useNativeShare"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    const-string v2, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v0, "o":Ljava/lang/Object;
    move-object v0, v2

    instance-of v2, v2, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_2

    .line 100
    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webViewUrl"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object v1

    .line 103
    :cond_2
    return-object v1
.end method

.method public handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl;->a(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 195
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppStartupInterceptor()Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    .local v1, "interceptor":Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;->handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 199
    :cond_0
    return-void
.end method

.method public handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 177
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppStartupInterceptor()Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    .local v1, "interceptor":Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 179
    return-object p2

    .line 181
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;->handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public rpcResultContainsFavoriteItem(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "appId"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    const-string v1, "H5TinyAppProviderImpl"

    if-nez p1, :cond_0

    .line 373
    const-string/jumbo v2, "rpcResultContainsFavoriteItem h5page is null!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object v0

    .line 377
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const-string/jumbo v2, "rpcResultContainsFavoriteItem appId is empty!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-object v0

    .line 382
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 386
    :cond_2
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppProviderImpl;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startParams"    # Landroid/os/Bundle;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookieValue"    # Ljava/lang/String;

    .line 274
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 318
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 321
    :try_start_0
    invoke-interface {v1, p1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;->shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TinyAppProviderImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
