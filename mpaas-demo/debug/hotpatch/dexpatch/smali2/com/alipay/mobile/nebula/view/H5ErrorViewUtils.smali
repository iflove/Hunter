.class public Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;
.super Ljava/lang/Object;
.source "H5ErrorViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ErrorViewUtils"

.field private static sConfigArray:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->sConfigArray:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized ensureConfig()V
    .locals 4

    const-class v0, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->sConfigArray:Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_2

    .line 27
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 28
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v2, 0x0

    .line 29
    .local v2, "configStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 30
    const-string v3, "h5_errorPageWhiteList"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 34
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const-string v3, "[{\"code\":\"412\", \"url\":\".*\"}]"

    move-object v2, v3

    .line 38
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->sConfigArray:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v2    # "configStr":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    return-void

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ignoreErrorPage(ILjava/lang/String;)Z
    .locals 9
    .param p0, "statusCode"    # I
    .param p1, "mainUrl"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    const-string v1, "H5ErrorViewUtils"

    const/16 v2, 0x193

    if-eq p0, v2, :cond_3

    const/16 v2, 0x194

    if-ne p0, v2, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->ensureConfig()V

    .line 52
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->sConfigArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 53
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 54
    sget-object v5, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->sConfigArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 55
    .local v4, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "codePattern":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "urlPattern":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    invoke-static {v5, p0, v6, p1}, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->matches(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ignoreErrorPage by "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return v0

    .line 53
    .end local v4    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "codePattern":Ljava/lang/String;
    .end local v6    # "urlPattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ignoreErrorPage exception!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_3
    :goto_2
    const-string v2, "ignoreErrorPage 404 or 403, return "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v0
.end method

.method protected static matches(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "codePatternStr"    # Ljava/lang/String;
    .param p1, "code"    # I
    .param p2, "urlPatternStr"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "codePattern":Ljava/util/regex/Pattern;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 80
    return v3

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    return v3

    .line 87
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 88
    .local v1, "urlPattern":Ljava/util/regex/Pattern;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 89
    return v3

    .line 92
    :cond_2
    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 94
    return v3

    .line 97
    :cond_3
    return v3
.end method
