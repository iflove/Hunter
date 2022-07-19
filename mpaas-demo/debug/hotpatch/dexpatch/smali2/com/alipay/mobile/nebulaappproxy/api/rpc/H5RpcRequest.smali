.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;
.super Ljava/lang/Object;
.source "H5RpcRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/h5container/api/H5Event;

.field private g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;Z)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "h5PreRpcProvider"    # Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    .param p4, "openRpc"    # Z

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->c:I

    .line 43
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->d:Z

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->e:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 48
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->h:Z

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 55
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 56
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 57
    iput-boolean p4, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->h:Z

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->i:J

    .line 59
    return-void
.end method

.method private static a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p0, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .line 285
    const-string v0, "H5RpcRequest"

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 290
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "response headers "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_1
    return-object v1

    .line 286
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_1
    const-string/jumbo v1, "response headers == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getAppxRpcApiConfig()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    .local v1, "appxRpcConfig":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 34

    .line 64
    move-object/from16 v1, p0

    const-string v0, "\""

    const-string v2, "10"

    const-string v3, "exception detail"

    const-string v4, "errorMessage"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->i:J

    sub-long/2addr v5, v7

    .line 66
    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 67
    iget-object v8, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v8

    .line 68
    instance-of v9, v8, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v9, :cond_0

    .line 69
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 70
    return-void

    .line 73
    :cond_0
    move-object v15, v8

    check-cast v15, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 74
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v19

    .line 76
    if-eqz v19, :cond_1

    .line 77
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 79
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rpc url "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "H5RpcRequest"

    invoke-static {v14, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v13, "operationType"

    invoke-static {v7, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    const-string v8, "httpGet"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v17

    .line 84
    const-string/jumbo v8, "type"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 86
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->a(Ljava/lang/String;)Z

    move-result v20

    .line 88
    const-string v11, ""

    const-string/jumbo v8, "requestData"

    const/4 v10, 0x0

    if-eqz v20, :cond_2

    .line 89
    invoke-static {v7, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v7, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 92
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v18

    .line 93
    if-eqz v7, :cond_3

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 94
    move-object v8, v11

    goto :goto_0

    .line 97
    :cond_3
    move-object/from16 v8, v18

    :goto_0
    const-string v9, "gateway"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    nop

    .line 99
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 100
    invoke-static {v9}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 99
    :cond_4
    move-object/from16 v21, v10

    .line 102
    :goto_1
    move-object/from16 v22, v11

    const-string v11, "headers"

    invoke-static {v7, v11, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 103
    const-string v10, "compress"

    move-object/from16 v24, v4

    const/4 v4, 0x1

    invoke-static {v7, v10, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    .line 104
    const-string v4, "disableLimitView"

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-static {v7, v4, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 105
    move/from16 v26, v4

    const-string/jumbo v4, "retryable"

    invoke-static {v7, v4, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 106
    move-object/from16 v27, v2

    const-string v2, "getResponse"

    invoke-static {v7, v2, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 107
    const/4 v13, -0x1

    move-object/from16 v28, v3

    const-string/jumbo v3, "signType"

    invoke-static {v7, v3, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 109
    iget-boolean v13, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->h:Z

    if-eqz v13, :cond_6

    .line 110
    if-eqz v11, :cond_5

    .line 111
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v29, v5

    const-string v5, "OPEN_RPC_REQUEST_URL"

    invoke-virtual {v11, v5, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    :cond_5
    move-wide/from16 v29, v5

    goto :goto_2

    .line 109
    :cond_6
    move-wide/from16 v29, v5

    .line 116
    :goto_2
    const-string/jumbo v5, "timeout"

    const/4 v6, 0x0

    invoke-static {v7, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 118
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v13, "error"

    if-eqz v6, :cond_7

    .line 120
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 121
    return-void

    .line 124
    :cond_7
    const/4 v6, 0x2

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    if-eqz v6, :cond_b

    move-object/from16 v31, v13

    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v13

    invoke-interface {v6, v13}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->enableUsePreRpc(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 125
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    .line 126
    const-string v13, "funcName"

    invoke-virtual {v7, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    move-object/from16 v32, v0

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    invoke-interface {v0, v13}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getPreFlag(Ljava/lang/String;)Z

    move-result v0

    move/from16 v33, v2

    const-string v2, "WalletPreRpcProvider"

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->b:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 133
    iput-object v13, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->b:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "in H5RpcPlugin preRpcStr is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", md5 is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v13, v3}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getResult(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 136
    const-string v3, "appVersion"

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "url"

    const-string/jumbo v8, "publicId"

    const-string v9, "appId"

    if-eqz v0, :cond_8

    .line 137
    iget-object v10, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v10, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 138
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    invoke-interface {v0, v13}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 139
    const-string v0, "in H5RpcPlugin, has prerpc result, return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "H5_PRERPC_USE"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 144
    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 145
    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 146
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    return-void

    .line 148
    :cond_8
    const-string v0, "in H5RpcPlugin, prerpc not finish, return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "H5_PRERPC_EXISTRPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 152
    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 153
    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 154
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 156
    return-void

    .line 159
    :cond_9
    const-string v0, "in H5RpcPlugin, not has prerpc result, rpc direct"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 124
    :cond_a
    move-object/from16 v32, v0

    move/from16 v33, v2

    goto :goto_3

    :cond_b
    move-object/from16 v32, v0

    move/from16 v33, v2

    move-object/from16 v31, v13

    .line 166
    :cond_c
    :goto_3
    :try_start_0
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_d

    .line 167
    move-object v7, v12

    move-object/from16 v0, v22

    move-object v2, v12

    move-object/from16 v12, v21

    move-object/from16 v6, v31

    move v13, v4

    move-object v4, v14

    move-object v14, v15

    move-object/from16 v23, v15

    move v15, v5

    move/from16 v18, v3

    :try_start_1
    invoke-static/range {v7 .. v18}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;

    move-result-object v3

    goto :goto_4

    .line 170
    :cond_d
    move-object v2, v12

    move-object/from16 v23, v15

    move-object/from16 v0, v22

    move-object/from16 v6, v31

    move-object v15, v14

    move-object v7, v2

    move-object/from16 v12, v21

    move v13, v4

    move-object/from16 v14, v23

    move-object v4, v15

    move v15, v5

    move/from16 v18, v3

    invoke-static/range {v7 .. v18}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;

    move-result-object v3

    .line 173
    :goto_4
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const-string v7, "header"

    const-string/jumbo v8, "resData"

    if-nez v20, :cond_10

    :try_start_2
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    if-nez v9, :cond_e

    goto :goto_5

    .line 192
    :cond_e
    if-eqz v33, :cond_f

    .line 193
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 194
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    goto :goto_6

    .line 197
    :cond_f
    goto :goto_6

    .line 180
    :cond_10
    :goto_5
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    move-object/from16 v10, v32

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 182
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 184
    const-string v10, "\\\\"

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    :cond_11
    invoke-virtual {v9, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    if-eqz v33, :cond_12

    .line 188
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_12
    :goto_6
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v9}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 202
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->h:Z

    if-eqz v0, :cond_13

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 203
    const-string/jumbo v0, "toastMemo"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 205
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest$1;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 214
    :cond_13
    if-eqz v3, :cond_14

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rpc allTime "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->i:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " threadWaitTime:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v29

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->getTimeCost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    .line 260
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 251
    :catch_0
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v3, v28

    goto :goto_8

    .line 220
    :catch_1
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    goto/16 :goto_a

    .line 260
    :catchall_1
    move-exception v0

    move-object v2, v12

    move-object v4, v14

    move-object/from16 v23, v15

    move-object/from16 v6, v31

    .line 261
    :goto_7
    move-object/from16 v3, v28

    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 263
    move-object/from16 v5, v27

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v24

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 266
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->c:I

    .line 267
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->d:Z

    .line 268
    iput-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->e:Ljava/lang/String;

    goto/16 :goto_d

    .line 251
    :catch_2
    move-exception v0

    move-object v2, v12

    move-object v4, v14

    move-object/from16 v23, v15

    move-object/from16 v7, v24

    move-object/from16 v3, v28

    move-object/from16 v6, v31

    .line 252
    :goto_8
    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 254
    const-string v4, "11"

    invoke-virtual {v3, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 257
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->c:I

    .line 258
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->d:Z

    .line 259
    iput-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->e:Ljava/lang/String;

    .line 269
    :cond_14
    :goto_9
    goto/16 :goto_d

    .line 220
    :catch_3
    move-exception v0

    move-object v2, v12

    move-object v4, v14

    move-object/from16 v23, v15

    move-object/from16 v7, v24

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    move-object/from16 v6, v31

    .line 221
    :goto_a
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v8

    .line 222
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    const-string v10, "2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 225
    goto :goto_b

    .line 224
    :cond_15
    move-object v5, v9

    .line 227
    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error code:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->c:I

    .line 231
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->d:Z

    .line 233
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 234
    const/16 v4, 0x3e8

    if-ge v8, v4, :cond_16

    .line 236
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->h5_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    :cond_16
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 240
    const/16 v5, 0x3ea

    if-ne v8, v5, :cond_18

    if-eqz v26, :cond_17

    goto :goto_c

    .line 241
    :cond_17
    const v2, 0x18769

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v4, v7, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 244
    throw v0

    .line 246
    :cond_18
    :goto_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v4, v7, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_9

    .line 271
    :goto_d
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->d:Z

    if-eqz v0, :cond_19

    .line 272
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 273
    iget v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "failCode"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;->e:Ljava/lang/String;

    const-string v4, "errorCode"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v3, v25

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "H5_RPC_FAILED"

    move-object/from16 v8, v23

    invoke-interface {v8, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 278
    :cond_19
    if-eqz v19, :cond_1a

    .line 279
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 282
    :cond_1a
    return-void
.end method
