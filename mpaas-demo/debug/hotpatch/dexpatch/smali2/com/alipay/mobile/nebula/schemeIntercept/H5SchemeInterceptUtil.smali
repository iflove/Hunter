.class public Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;
.super Ljava/lang/Object;
.source "H5SchemeInterceptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;
    .locals 6

    .line 16
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 17
    move-object v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 18
    const-string v1, "h5_newcompetitiveList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    .line 19
    .local v4, "value":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 21
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const-string v1, "enableUse"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "use":Ljava/lang/String;
    const-string v5, "YES"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    new-instance v2, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 29
    .end local v1    # "use":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    .line 30
    const-string v3, "h5_competitiveList"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    .line 29
    return-object v1

    .line 32
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method
