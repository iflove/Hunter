.class public Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5TinyRpcPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TinyRpcPlugin.java"


# static fields
.field public static final ACTION_TINY_RPC:Ljava/lang/String; = "tinyRpc"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final a:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 36
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5TinyRpcPlugin;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "qrcode"

    const-string v2, "alipay.mobilecodec.shakeCode.encode"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tinyRpc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 48
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 50
    return v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v4, v2

    .line 53
    .local v4, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 55
    return v1

    .line 57
    :cond_1
    const-string/jumbo v0, "type"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v2

    .line 58
    .local v5, "type":Ljava/lang/String;
    move-object v5, v0

    if-nez v0, :cond_2

    .line 59
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 60
    return v1

    .line 62
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v6, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-object v6, v2

    .line 63
    .local v6, "apiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v6, v0

    if-nez v0, :cond_3

    .line 64
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 65
    return v1

    .line 67
    :cond_3
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "appId"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    .line 68
    .local v7, "appId":Ljava/lang/String;
    move-object v7, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    .line 70
    .local v8, "webViewTag":Ljava/lang/String;
    move-object v8, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    move-object v7, v8

    .line 74
    .end local v8    # "webViewTag":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "parentAppId"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "parentAppId":Ljava/lang/String;
    const-string v8, "JSAPI_SP_Config"

    invoke-interface {v6, v7, v5, v8, v3}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 76
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 77
    return v1

    .line 79
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getRpcApiConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    .line 80
    .local v9, "realType":Ljava/lang/String;
    move-object v9, v8

    if-nez v8, :cond_6

    .line 81
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5TinyRpcPlugin;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    move-object v9, v8

    if-nez v8, :cond_6

    .line 83
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 84
    return v1

    .line 87
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v8

    move-object v10, v2

    .line 88
    .local v10, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v10, v8

    if-nez v8, :cond_7

    .line 89
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 90
    return v1

    .line 92
    :cond_7
    const-string v8, "headers"

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 93
    .local v2, "headers":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v11

    if-nez v11, :cond_8

    .line 94
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v2, v11

    .line 95
    invoke-virtual {v4, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_8
    const-string v8, "TINY_APP_ID"

    invoke-virtual {v2, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 99
    const-string v8, "TINY_APP_PARENT_ID"

    invoke-virtual {v2, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_9
    const-string/jumbo v8, "operationType"

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v8, "rpc"

    invoke-virtual {p1, v8}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v10, p1, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 105
    .end local v0    # "parentAppId":Ljava/lang/String;
    .end local v2    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "apiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v7    # "appId":Ljava/lang/String;
    .end local v9    # "realType":Ljava/lang/String;
    .end local v10    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_a
    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 41
    const-string/jumbo v0, "tinyRpc"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 42
    return-void
.end method
