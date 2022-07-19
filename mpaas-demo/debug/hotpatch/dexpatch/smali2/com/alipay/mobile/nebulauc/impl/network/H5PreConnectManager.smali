.class public Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;
.super Ljava/lang/Object;
.source "H5PreConnectManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PreConnectManager"

.field private static sInstance:Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

.field private static sIsPreConnectEnabled:Ljava/lang/Boolean;

.field private static sIsPreRequestDisabled:Ljava/lang/Boolean;

.field private static sPageUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreConnectTimeout:I

.field private static sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

.field private static sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

.field private static sRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPageUrlMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sRequestMap:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    .line 37
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    const/16 v1, 0x1e

    sput v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectTimeout:I

    .line 40
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    .line 42
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

    .line 44
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canStartPreRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 5
    .param p1, "mainDocUrl"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 162
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prm"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    return v0

    .line 165
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 167
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "urlRegex":Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "cleanUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    return v0

    .line 166
    .end local v2    # "urlRegex":Ljava/lang/String;
    .end local v3    # "cleanUrl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getHeaders(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/util/Map;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "headerMap":Ljava/util/Map;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "ua":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v1    # "ua":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v1

    .line 136
    .local v1, "manager":Lcom/uc/webview/export/CookieManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "cookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const-string v2, "Cookie"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v3    # "cookie":Ljava/lang/String;
    :cond_1
    const-string v2, "Accept"

    const-string v3, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8,UC/163"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, deflate, br"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "Accept-Language"

    const-string v3, "zh-CN,en-US;q=0.8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 147
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put config header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5PreConnectManager"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;
    .locals 2

    .line 117
    const-class v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    .line 121
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUCHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static isPreConnectEnabled()Z
    .locals 11

    .line 76
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 77
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    return v1

    .line 81
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 82
    const-string v2, "h5_enablePreConnect"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "configStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 84
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_2

    .line 85
    const-string v4, "enable"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 86
    .local v4, "enable":Z
    if-eqz v4, :cond_1

    .line 87
    const/16 v5, 0x3c

    const-string v6, "timeout"

    invoke-static {v3, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectTimeout:I

    .line 88
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v5, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    const/4 v5, 0x0

    const-string v6, "urls"

    invoke-static {v3, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 90
    .local v5, "urlArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 91
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 92
    .local v7, "url":Ljava/lang/String;
    sget-object v8, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v7    # "url":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    .end local v5    # "urlArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    .line 98
    .end local v2    # "configStr":Ljava/lang/String;
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "enable":Z
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    .line 102
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreConnectEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static isPreDownloadEnabled()Z
    .locals 6

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "h5_disable_uc_predownload"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return v1

    .line 52
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 53
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_1

    .line 54
    return v1

    .line 56
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 57
    const-string v2, "h5_preRequestMainFrame"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "configStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 59
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_2

    .line 60
    const-string v4, "disable"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    .line 61
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 62
    const-string v4, "urlList"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestUrlList:Lcom/alibaba/fastjson/JSONArray;

    .line 63
    const-string v4, "headers"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreRequestConfigHeaders:Lcom/alibaba/fastjson/JSONObject;

    .line 68
    .end local v2    # "configStr":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    .line 72
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sIsPreRequestDisabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static refreshPreConnect(Ljava/lang/String;)V
    .locals 5
    .param p0, "connectUrl"    # Ljava/lang/String;

    .line 106
    if-eqz p0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method


# virtual methods
.method public clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 248
    if-nez p1, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPageUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 253
    return-void

    .line 255
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sRequestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 256
    .local v1, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->cancel()V

    .line 259
    :cond_2
    return-void
.end method

.method getRequest(Ljava/lang/String;)Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    return-object v1

    .line 239
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 240
    .local v0, "request":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    if-eqz v0, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preRequest hit url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PreConnectManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v0

    .line 244
    :cond_1
    return-object v1
.end method

.method public preConnect(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 21
    .param p1, "mainDocUrl"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 203
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 208
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre connect with main frame url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PreConnectManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectUrlList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 212
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPreConnectRequest(Z)V

    .line 213
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/Long;

    .line 215
    .local v18, "lastConnectTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget v7, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPreConnectTimeout:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 216
    return-void

    .line 219
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pre connect with cdn url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 223
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-direct {v14, v4, v15}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getHeaders(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/util/Map;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getUCHeaders()Ljava/util/Map;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 222
    const-string v8, "GET"

    move-object v7, v4

    move-wide/from16 v14, v16

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-virtual/range {v5 .. v17}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 227
    .local v5, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->applyStartParams(Landroid/os/Bundle;)V

    .line 228
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setNeedPendingResponse(Z)V

    .line 229
    const-string v7, "NO"

    invoke-virtual {v5, v6, v7, v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->sendRequest(ZLjava/lang/String;Z)Z

    .line 230
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .end local v18    # "lastConnectTime":Ljava/lang/Long;
    goto/16 :goto_0

    .line 208
    :cond_2
    move-object/from16 v1, p1

    .line 232
    :cond_3
    return-void
.end method

.method public preRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 17
    .param p1, "mainDocUrl"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 179
    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->canStartPreRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    const-string v2, "H5PreConnectManager"

    if-nez v1, :cond_0

    .line 180
    const-string v1, "not start pre request main doc"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre request main frame url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 188
    move-object/from16 v2, p0

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getHeaders(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/util/Map;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getUCHeaders()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 186
    const-string v6, "GET"

    move-object v5, v1

    move/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 192
    .local v3, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isUseSpdy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    return-void

    .line 195
    :cond_1
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sRequestMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->sPageUrlMap:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->applyStartParams(Landroid/os/Bundle;)V

    .line 199
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "NO"

    invoke-virtual {v3, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->sendRequest(ZLjava/lang/String;Z)Z

    .line 200
    return-void
.end method
