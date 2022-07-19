.class public Lcom/alipay/mobile/nebula/startParam/H5StartParamUtil;
.super Ljava/lang/Object;
.source "H5StartParamUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5StartParamUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInfo(Ljava/lang/String;[BLjava/util/List;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "startParamList"    # Ljava/util/List;
    .param p3, "prerenderPageInfo"    # Ljava/lang/StringBuilder;
    .param p4, "homePage"    # Ljava/lang/StringBuilder;
    .param p5, "windowJson"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "H5StartParamUtil"

    .line 27
    if-nez p1, :cond_0

    .line 28
    return-void

    .line 31
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 33
    .local v3, "data":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 35
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "prerenderPage"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "launchParams"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v5, v2

    .line 37
    .local v5, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object v6, v2

    .line 39
    .local v6, "keys":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 40
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_2

    .line 42
    :try_start_1
    new-instance v7, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    invoke-direct {v7}, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;-><init>()V

    .line 43
    .local v7, "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 44
    .local v8, "key":Ljava/lang/String;
    iput-object v8, v7, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    iput-object v9, v7, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 46
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 47
    .end local v7    # "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 48
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 52
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "keys":Ljava/util/Set;
    :cond_1
    move-object v6, v2

    :cond_2
    const-string/jumbo v4, "pages"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 53
    .local v6, "pagesList":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v4

    if-eqz v4, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_3
    const-string/jumbo v4, "window"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "launchParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "pagesList":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    return-void

    .line 59
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const-string v0, "H5_CONFIG_FILE_PARSE_FAIL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "appId"

    invoke-virtual {v0, v2, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method
