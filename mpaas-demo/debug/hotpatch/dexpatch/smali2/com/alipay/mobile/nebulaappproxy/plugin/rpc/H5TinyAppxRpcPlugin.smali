.class public Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5TinyAppxRpcPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TinyAppxRpcPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v0, "headers"

    const-string/jumbo v1, "operationType"

    .line 40
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appxrpc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 42
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v2

    .line 43
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v4

    if-nez v4, :cond_0

    .line 44
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 45
    return v3

    .line 48
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v6, v2

    .line 49
    .local v6, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    if-nez v4, :cond_1

    .line 50
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 51
    return v3

    .line 54
    :cond_1
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v2

    .line 55
    .local v7, "operationType":Ljava/lang/String;
    move-object v7, v4

    if-nez v4, :cond_2

    .line 56
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 57
    return v3

    .line 60
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getAppxRpcApiConfig()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    move-object v8, v2

    .line 61
    .local v8, "appxRpcConfig":Lcom/alibaba/fastjson/JSONArray;
    move-object v8, v4

    if-eqz v4, :cond_3

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 62
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 63
    return v3

    .line 66
    :cond_3
    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v9, "parentAppId"

    if-eqz v4, :cond_4

    .line 67
    :try_start_2
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "appId":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v4    # "appId":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v2

    .line 70
    .local v10, "webViewTag":Ljava/lang/String;
    move-object v10, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "appId"

    if-nez v4, :cond_6

    .line 71
    :try_start_3
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v2

    .line 72
    .local v11, "appId":Ljava/lang/String;
    move-object v11, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    move-object v4, v10

    .end local v11    # "appId":Ljava/lang/String;
    .restart local v4    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v4    # "appId":Ljava/lang/String;
    .restart local v11    # "appId":Ljava/lang/String;
    :cond_5
    move-object v4, v11

    goto :goto_0

    .line 76
    .end local v11    # "appId":Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .end local v10    # "webViewTag":Ljava/lang/String;
    .restart local v4    # "appId":Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "parentAppId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v10

    move-object v11, v2

    .line 83
    .local v11, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v11, v10

    if-nez v10, :cond_7

    .line 84
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 85
    return v3

    .line 88
    :cond_7
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 89
    .local v2, "headers":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v10

    if-nez v10, :cond_8

    .line 90
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v2, v10

    .line 92
    :cond_8
    const-string v10, "TINY_APP_ID"

    invoke-virtual {v2, v10, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 94
    const-string v10, "TINY_APP_PARENT_ID"

    invoke-virtual {v2, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_9
    invoke-virtual {v6, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v6, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "rpc"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v11, p1, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    nop

    .end local v2    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "operationType":Ljava/lang/String;
    .end local v8    # "appxRpcConfig":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "parentAppId":Ljava/lang/String;
    .end local v11    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    move-object v0, v2

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 104
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_2
    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 35
    const-string v0, "appxrpc"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    return-void
.end method
