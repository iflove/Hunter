.class public Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;
.super Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
.source "TinyAppEdgeRiskTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "errorCode"    # I

    .line 37
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 38
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez p0, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 100
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 101
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "h5_riskCheckBusinessId"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 7
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 47
    const-class v0, Lcom/alipay/edge/EdgeRiskService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/edge/EdgeRiskService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 48
    .local v2, "service":Lcom/alipay/edge/EdgeRiskService;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 49
    return v3

    .line 51
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v1

    .line 52
    .local v4, "properties":Ljava/util/Map;
    move-object v4, v0

    const-string/jumbo v5, "scenesId"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "uid"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "appId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "appVersion"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "contentText"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "referUrl"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "contentLength"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v1, "businessId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "businessId"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    const-string/jumbo v0, "text_detect"

    .line 66
    .local v0, "ua":Ljava/lang/String;
    invoke-virtual {v2, v0, v4, v3}, Lcom/alipay/edge/EdgeRiskService;->getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;

    .line 67
    const/4 v3, 0x1

    return v3
.end method

.method private static b(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 7
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 71
    const-class v0, Lcom/alipay/edge/EdgeRiskService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/edge/EdgeRiskService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 72
    .local v2, "service":Lcom/alipay/edge/EdgeRiskService;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 73
    return v3

    .line 75
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v1

    .line 76
    .local v4, "properties":Ljava/util/Map;
    move-object v4, v0

    const-string/jumbo v5, "scenesId"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "uid"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "appId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "appVersion"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "contentPictureData"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "contentPictureUrl"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "referUrl"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    .line 83
    .local v6, "referUrl":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    const-string v0, "contentLength"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v1, "businessId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string v0, "businessId"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    const-string/jumbo v0, "picture_detect"

    .line 94
    .local v0, "ua":Ljava/lang/String;
    invoke-virtual {v2, v0, v4, v3}, Lcom/alipay/edge/EdgeRiskService;->getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;

    .line 95
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 19
    const-string/jumbo v0, "ua"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    .local v1, "ua":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "text_detect"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 21
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 26
    :cond_1
    const-string/jumbo v0, "picture_detect"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->b(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 30
    :cond_2
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 33
    :cond_3
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskTask;->a(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method
