.class public Lcom/alipay/mobile/nebula/webview/H5ResContentList;
.super Ljava/lang/Object;
.source "H5ResContentList.java"


# static fields
.field private static final DEFAULT_CACHE_TIME:Ljava/lang/String; = "604800"

.field private static final TAG:Ljava/lang/String; = "H5ResContentList"

.field private static instance:Lcom/alipay/mobile/nebula/webview/H5ResContentList;

.field private static isEnable:Ljava/lang/Boolean;


# instance fields
.field private resourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static enableResHttpCache()Z
    .locals 7

    .line 75
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 76
    move-object v0, v1

    const/4 v2, 0x0

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 76
    if-nez v1, :cond_0

    .line 77
    return v2

    .line 79
    :cond_0
    const-string v1, "h5_enableResHttpCache"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    .line 80
    .local v5, "config":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    return v2

    .line 84
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->isEnable:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 87
    :cond_2
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 88
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 89
    const-string v1, "enable"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "enable":Ljava/lang/String;
    const-string v6, "YES"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->isUC()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->isEnable:Ljava/lang/Boolean;

    .line 92
    return v2

    .line 94
    :cond_3
    sput-object v3, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->isEnable:Ljava/lang/Boolean;

    .line 95
    return v2

    .line 98
    .end local v1    # "enable":Ljava/lang/String;
    :cond_4
    sput-object v3, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->isEnable:Ljava/lang/Boolean;

    .line 99
    return v2
.end method

.method public static getCacheTime()Ljava/lang/String;
    .locals 6

    .line 115
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 116
    move-object v0, v1

    const-string v2, "604800"

    if-nez v1, :cond_0

    .line 117
    return-object v2

    .line 119
    :cond_0
    const-string v1, "h5_enableResHttpCache"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 120
    .local v4, "config":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    return-object v2

    .line 123
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v5, v3

    .line 124
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    const-string v1, "cacheTime"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v3, "cacheTime":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    return-object v3

    .line 129
    :cond_2
    return-object v2

    .line 132
    .end local v3    # "cacheTime":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->instance:Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->instance:Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    .line 37
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->instance:Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isUC()Z
    .locals 4

    .line 103
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 104
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x0

    .line 106
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v3, :cond_0

    .line 108
    const/4 v1, 0x1

    return v1

    .line 111
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_1
    const-string v0, "H5ResContentList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add resource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 40
    .end local p0    # "this":Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "data":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 63
    .end local p0    # "this":Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    .end local p0    # "this":Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    const-string v0, "H5ResContentList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove resource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lcom/alipay/mobile/nebula/webview/H5ResContentList;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
