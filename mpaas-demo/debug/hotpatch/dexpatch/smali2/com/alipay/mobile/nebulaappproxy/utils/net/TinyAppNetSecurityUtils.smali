.class public Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;
.super Ljava/lang/Object;
.source "TinyAppNetSecurityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TinyAppNetSecurityUtils"

.field private static final forceSSLRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->forceSSLRequestMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForceUseSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 10
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "appId"    # Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ta_useTlsWhitelist"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 83
    .local v2, "useTlsWhitelist":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "TinyAppNetSecurityUtils"

    if-nez v0, :cond_2

    .line 85
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v5, v1

    .line 86
    .local v5, "useTlsWhiteArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v0

    const-string v6, "all"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    .end local v5    # "useTlsWhiteArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    goto :goto_1

    .line 87
    .restart local v5    # "useTlsWhiteArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    :goto_0
    return v3

    .line 89
    .end local v5    # "useTlsWhiteArray":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 90
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v5, v1

    .line 93
    :goto_1
    const-string/jumbo v0, "ta_ssl_appid"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v5, "sslAppId":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 97
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_3
    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    move-object v0, v1

    :goto_3
    const-string v6, "api_permission"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/pkg/TinyAppPkgUtils;->getData(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)[B

    move-result-object v6

    .line 104
    .local v0, "data":[B
    move-object v0, v6

    if-eqz v6, :cond_5

    .line 106
    :try_start_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "ForceUseSSL"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v1, "FORCE_SSL":Ljava/lang/String;
    const-string v7, "YES"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v3

    .line 109
    .end local v1    # "FORCE_SSL":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return v3
.end method

.method public static isForceUSeSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "appId"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isTinyApp"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    return v0

    .line 72
    .local v0, "forceSLLRequest":Z
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->forceSSLRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->checkForceUseSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 66
    .end local v0    # "forceSLLRequest":Z
    :cond_3
    :goto_1
    return v0
.end method

.method public static shouldInterceptForSSLAction(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 10
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    const-string v0, "TinyAppNetSecurityUtils"

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 34
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 37
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isTinyApp"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    return v2

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "appId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->isForceUSeSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 44
    .local v6, "action":Ljava/lang/String;
    move-object v6, v4

    const-string v7, "httpRequest"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    const-string/jumbo v8, "request is not ssl"

    const-string/jumbo v9, "url"

    if-nez v4, :cond_3

    :try_start_1
    const-string/jumbo v4, "request"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    const-string v4, "connectSocket"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v5, "url":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "ws:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v7

    .line 45
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .restart local v5    # "url":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "http:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    return v7

    .line 50
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 60
    .end local v6    # "action":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return v2

    .line 35
    .end local v3    # "appId":Ljava/lang/String;
    :cond_6
    :goto_2
    return v2
.end method
