.class public Lcom/alipay/mobile/nebula/util/H5JSONUtil;
.super Ljava/lang/Object;
.source "H5JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepCopy(Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4
    .param p0, "origin"    # Lcom/alibaba/fastjson/JSONArray;

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 39
    .local v1, "result":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .local v0, "item":Ljava/lang/Object;
    move-object v0, v3

    instance-of v3, v3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_1

    .line 41
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5JSONUtil;->deepCopy(Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_1
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_2

    .line 43
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5JSONUtil;->deepCopy(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v0    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 48
    :cond_3
    return-object v1
.end method

.method public static deepCopy(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p0, "origin"    # Lcom/alibaba/fastjson/JSONObject;

    .line 14
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 15
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 19
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    .local v0, "value":Ljava/lang/Object;
    move-object v0, v4

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_1

    .line 23
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5JSONUtil;->deepCopy(Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_1
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_2

    .line 25
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5JSONUtil;->deepCopy(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .end local v0    # "value":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 30
    :cond_3
    return-object v1
.end method
