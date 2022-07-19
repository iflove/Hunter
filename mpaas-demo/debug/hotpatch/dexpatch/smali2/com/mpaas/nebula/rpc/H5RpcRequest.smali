.class public Lcom/mpaas/nebula/rpc/H5RpcRequest;
.super Ljava/lang/Object;
.source "H5RpcRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DISABLE_LIMIT_VIEW:Ljava/lang/String; = "disableLimitView"

.field public static final H5_APP_ERROR_CODE:I = 0x7d3

.field private static final H5_LIMIT_CODE:I = 0x18769

.field private static final LIMIT_CODE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "H5RpcRequest"


# instance fields
.field bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private errorCode:Ljava/lang/String;

.field event:Lcom/alipay/mobile/h5container/api/H5Event;

.field private failCode:I

.field private lastRpcMd5:Ljava/lang/String;

.field openRpc:Z

.field private preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

.field private rpcFailed:Z

.field private rpcOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;Z)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "h5PreRpcProvider"    # Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    .param p4, "openRpc"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->failCode:I

    .line 42
    iput-boolean v0, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcFailed:Z

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 55
    iput-boolean v0, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->openRpc:Z

    .line 59
    iput-object p1, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 60
    iput-object p2, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 61
    iput-object p3, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 62
    iput-boolean p4, p0, Lcom/mpaas/nebula/rpc/H5RpcRequest;->openRpc:Z

    .line 63
    return-void
.end method

.method private getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
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

    .line 280
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "H5RpcRequest"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 285
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 286
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response headers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 290
    :cond_1
    return-object v1

    .line 281
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_1
    const-string v1, "response headers == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 45

    .line 67
    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, "exception detail"

    const-string v4, "errorMessage"

    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 68
    .local v5, "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    .line 69
    .local v6, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    instance-of v0, v6, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 71
    return-void

    .line 74
    :cond_0
    move-object v15, v6

    check-cast v15, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 75
    .local v15, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "url":Ljava/lang/String;
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v19

    .line 77
    .local v19, "availablePageData":Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
    if-eqz v19, :cond_1

    .line 78
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rpc url "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "H5RpcRequest"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 83
    .local v20, "time":J
    const-string v12, "operationType"

    invoke-static {v5, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, "operationType":Ljava/lang/String;
    const-string v0, "httpGet"

    const/4 v7, 0x0

    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v22

    .line 85
    .local v22, "isHttpGet":Z
    iput-object v11, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcOperationType:Ljava/lang/String;

    .line 86
    const-string v0, "type"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 88
    .local v23, "type":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->isPbFormat(Ljava/lang/String;)Z

    move-result v24

    .line 90
    .local v24, "isPbFormat":Z
    const/4 v0, 0x0

    const-string v8, "requestData"

    if-eqz v24, :cond_2

    .line 91
    invoke-static {v5, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v8

    .local v8, "requestData":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v8    # "requestData":Ljava/lang/String;
    :cond_2
    invoke-static {v5, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 94
    .local v9, "jaRequest":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "requestData":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 96
    const-string v8, ""

    move-object/from16 v25, v8

    .end local v10    # "requestData":Ljava/lang/String;
    .restart local v8    # "requestData":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v8    # "requestData":Ljava/lang/String;
    .end local v9    # "jaRequest":Lcom/alibaba/fastjson/JSONArray;
    .restart local v10    # "requestData":Ljava/lang/String;
    :cond_3
    move-object/from16 v25, v10

    .end local v10    # "requestData":Ljava/lang/String;
    .local v25, "requestData":Ljava/lang/String;
    :goto_0
    const-string v8, "gateway"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 100
    .local v26, "gateway":Ljava/lang/String;
    const/4 v8, 0x0

    .line 101
    .local v8, "appKey":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 102
    invoke-static/range {v26 .. v26}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v27, v8

    goto :goto_1

    .line 101
    :cond_4
    move-object/from16 v27, v8

    .line 104
    .end local v8    # "appKey":Ljava/lang/String;
    .local v27, "appKey":Ljava/lang/String;
    :goto_1
    const-string v8, "headers"

    invoke-static {v5, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 105
    .local v10, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string v0, "compress"

    const/4 v9, 0x1

    invoke-static {v5, v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v28

    .line 106
    .local v28, "compress":Z
    const-string v0, "disableLimitView"

    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v29

    .line 107
    .local v29, "disableLimitView":Z
    const-string v0, "retryable"

    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v30

    .line 108
    .local v30, "retryable":Z
    const-string v0, "getResponse"

    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v31

    .line 110
    .local v31, "getResponse":Z
    iget-boolean v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->openRpc:Z

    if-eqz v0, :cond_5

    .line 111
    if-eqz v15, :cond_5

    if-eqz v10, :cond_5

    .line 112
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v8, "OPEN_RPC_REQUEST_URL"

    invoke-virtual {v10, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_5
    const-string v0, "timeout"

    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v32

    .line 120
    .local v32, "timeout":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, "error"

    const/4 v9, 0x2

    if-eqz v0, :cond_6

    .line 122
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 123
    return-void

    .line 125
    :cond_6
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    .line 126
    .local v9, "startParams":Landroid/os/Bundle;
    const-string v0, "funcName"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "md5Key":Ljava/lang/String;
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    move-object/from16 v33, v6

    .end local v6    # "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .local v33, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    const-string v6, "WalletPreRpcProvider"

    if-eqz v0, :cond_b

    invoke-interface {v0, v7}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getPreFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->lastRpcMd5:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 130
    iput-object v7, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->lastRpcMd5:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in H5RpcPlugin preRpcStr is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", md5 is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    iget-object v2, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v7, v2}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getResult(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 134
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "url"

    const-string v4, "publicId"

    const-string v8, "appVersion"

    const-string v12, "appId"

    const-string v3, "appId=%s^version=%s^publicId=%s^url=%s"

    if-eqz v0, :cond_8

    .line 135
    iget-object v13, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v13, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 136
    iget-object v13, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    invoke-interface {v13, v7}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 137
    const-string v13, "in H5RpcPlugin, has prerpc result, return"

    invoke-static {v6, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 141
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 142
    .local v6, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v6, :cond_7

    .line 143
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v38

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 145
    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v13, v18

    .line 146
    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v13, v12

    .line 147
    invoke-static {v9, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v13, v8

    .line 148
    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v13, v4

    .line 144
    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 143
    const-string v37, "H5_PRERPC_USE"

    move-object/from16 v36, v6

    invoke-interface/range {v36 .. v41}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v6    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_7
    goto :goto_2

    .line 153
    :cond_8
    const-string v13, "in H5RpcPlugin, prerpc not finish, return"

    invoke-static {v6, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 156
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 157
    .restart local v6    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v6, :cond_9

    .line 158
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v38

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 160
    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v13, v18

    .line 161
    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    aput-object v8, v13, v16

    .line 162
    invoke-static {v9, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x2

    aput-object v4, v13, v17

    .line 163
    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v13, v4

    .line 159
    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 158
    const-string v37, "H5_PRERPC_EXISTRPC"

    move-object/from16 v36, v6

    invoke-interface/range {v36 .. v41}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v6    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_9
    :goto_2
    return-void

    .line 129
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    const/16 v16, 0x1

    const/16 v17, 0x2

    goto :goto_3

    .line 128
    :cond_b
    const/16 v16, 0x1

    const/16 v17, 0x2

    .line 170
    :goto_3
    const-string v0, "in H5RpcPlugin, not has prerpc result, rpc direct"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v0

    .line 173
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string v0, "signType"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v34, v7

    .end local v7    # "md5Key":Ljava/lang/String;
    .local v34, "md5Key":Ljava/lang/String;
    const/4 v7, -0x1

    :try_start_1
    invoke-static {v5, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v18
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 174
    .local v18, "signType":I
    move-object v7, v11

    move-object/from16 v35, v5

    move-object v5, v8

    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .local v35, "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v8, v25

    move-object/from16 v37, v6

    move-object/from16 v36, v9

    const/4 v6, 0x1

    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .local v36, "startParams":Landroid/os/Bundle;
    .local v37, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v9, v26

    move-object/from16 v39, v10

    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .local v39, "headers":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v10, v28

    move-object/from16 v40, v11

    .end local v11    # "operationType":Ljava/lang/String;
    .local v40, "operationType":Ljava/lang/String;
    move-object/from16 v11, v39

    move-object/from16 v42, v12

    move-object/from16 v12, v27

    move-object/from16 v43, v13

    move/from16 v13, v30

    move-object/from16 v41, v14

    .end local v14    # "url":Ljava/lang/String;
    .local v41, "url":Ljava/lang/String;
    move-object v14, v15

    move-object/from16 v44, v15

    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v44, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move/from16 v15, v32

    move-object/from16 v16, v23

    move/from16 v17, v22

    :try_start_2
    invoke-static/range {v7 .. v18}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/mpaas/nebula/rpc/H5Response;

    move-result-object v0

    .line 176
    .local v0, "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    invoke-virtual {v0}, Lcom/mpaas/nebula/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "response":Ljava/lang/String;
    const/4 v8, 0x0

    .line 179
    .local v8, "joResponse":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 181
    .local v9, "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    const-string v10, "resData"

    if-nez v24, :cond_e

    if-nez v9, :cond_c

    goto :goto_4

    .line 194
    :cond_c
    if-eqz v31, :cond_d

    .line 195
    :try_start_3
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v8, v11

    .line 196
    const-string v11, "header"

    invoke-virtual {v0}, Lcom/mpaas/nebula/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mpaas/nebula/rpc/H5RpcRequest;->getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v8, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 257
    .end local v0    # "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "signType":I
    :catchall_0
    move-exception v0

    move-object/from16 v12, v44

    goto/16 :goto_7

    .line 248
    :catch_0
    move-exception v0

    move-object/from16 v7, v43

    move-object/from16 v12, v44

    goto/16 :goto_8

    .line 216
    :catch_1
    move-exception v0

    move-object/from16 v7, v43

    move-object/from16 v12, v44

    goto/16 :goto_a

    .line 199
    .restart local v0    # "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    .restart local v7    # "response":Ljava/lang/String;
    .restart local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "signType":I
    :cond_d
    move-object v8, v9

    goto :goto_5

    .line 182
    :cond_e
    :goto_4
    :try_start_4
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v8, v11

    .line 183
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v11, :cond_f

    :try_start_5
    const-string v11, "\""

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "\""

    .line 184
    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 185
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v7, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 186
    const-string v11, "\\\\"

    invoke-virtual {v7, v11, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v11

    .line 188
    :cond_f
    :try_start_6
    invoke-virtual {v8, v10, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 189
    if-eqz v31, :cond_10

    .line 190
    :try_start_7
    const-string v10, "header"

    invoke-virtual {v0}, Lcom/mpaas/nebula/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/mpaas/nebula/rpc/H5RpcRequest;->getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    :cond_10
    :goto_5
    :try_start_8
    iget-object v10, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v10, v8}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 204
    iget-boolean v10, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->openRpc:Z

    if-eqz v10, :cond_12

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12

    .line 205
    const-string v10, "toastMemo"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "toast":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 207
    new-instance v11, Lcom/mpaas/nebula/rpc/H5RpcRequest$1;
    :try_end_8
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v12, v44

    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v12, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :try_start_9
    invoke-direct {v11, v1, v10, v12}, Lcom/mpaas/nebula/rpc/H5RpcRequest$1;-><init>(Lcom/mpaas/nebula/rpc/H5RpcRequest;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 257
    .end local v0    # "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "toast":Ljava/lang/String;
    .end local v18    # "signType":I
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    .line 248
    :catch_2
    move-exception v0

    move-object/from16 v7, v43

    goto/16 :goto_8

    .line 216
    :catch_3
    move-exception v0

    move-object/from16 v7, v43

    goto/16 :goto_a

    .line 206
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v0    # "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    .restart local v7    # "response":Ljava/lang/String;
    .restart local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "toast":Ljava/lang/String;
    .restart local v18    # "signType":I
    .restart local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_11
    move-object/from16 v12, v44

    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto :goto_6

    .line 204
    .end local v10    # "toast":Ljava/lang/String;
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_12
    move-object/from16 v12, v44

    .line 266
    .end local v0    # "h5Response":Lcom/mpaas/nebula/rpc/H5Response;
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "tempResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "signType":I
    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_6
    move-object/from16 v7, v43

    goto/16 :goto_c

    .line 257
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catchall_2
    move-exception v0

    move-object/from16 v12, v44

    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto/16 :goto_7

    .line 248
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_4
    move-exception v0

    move-object/from16 v12, v44

    move-object/from16 v7, v43

    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto/16 :goto_8

    .line 216
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_5
    move-exception v0

    move-object/from16 v12, v44

    move-object/from16 v7, v43

    .end local v44    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto/16 :goto_a

    .line 257
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v9, "startParams":Landroid/os/Bundle;
    .local v10, "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catchall_3
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v43, v13

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    goto :goto_7

    .line 248
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "startParams":Landroid/os/Bundle;
    .restart local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_6
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    move-object v7, v13

    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    goto/16 :goto_8

    .line 216
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "startParams":Landroid/os/Bundle;
    .restart local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_7
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    move-object v7, v13

    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    goto/16 :goto_a

    .line 257
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v34    # "md5Key":Ljava/lang/String;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v7, "md5Key":Ljava/lang/String;
    .restart local v9    # "startParams":Landroid/os/Bundle;
    .restart local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catchall_4
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v34, v7

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v43, v13

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    .line 258
    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "md5Key":Ljava/lang/String;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v34    # "md5Key":Ljava/lang/String;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    :goto_7
    move-object/from16 v7, v43

    invoke-static {v7, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 260
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "10"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 263
    const/4 v4, 0x2

    iput v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->failCode:I

    .line 264
    iput-boolean v6, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcFailed:Z

    .line 265
    iput-object v3, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    goto/16 :goto_c

    .line 248
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v34    # "md5Key":Ljava/lang/String;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "md5Key":Ljava/lang/String;
    .restart local v9    # "startParams":Landroid/os/Bundle;
    .restart local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_8
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v34, v7

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v13

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    .line 249
    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "md5Key":Ljava/lang/String;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v34    # "md5Key":Ljava/lang/String;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    :goto_8
    invoke-static {v7, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 251
    .restart local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "11"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 254
    const/4 v4, 0x2

    iput v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->failCode:I

    .line 255
    iput-boolean v6, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcFailed:Z

    .line 256
    iput-object v3, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    .line 266
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_9
    goto/16 :goto_c

    .line 216
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v34    # "md5Key":Ljava/lang/String;
    .end local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "startParams":Landroid/os/Bundle;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v40    # "operationType":Ljava/lang/String;
    .end local v41    # "url":Ljava/lang/String;
    .restart local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "md5Key":Ljava/lang/String;
    .restart local v9    # "startParams":Landroid/os/Bundle;
    .restart local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_9
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v34, v7

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v13

    move-object/from16 v41, v14

    move-object v12, v15

    const/4 v6, 0x1

    .line 217
    .end local v5    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "md5Key":Ljava/lang/String;
    .end local v9    # "startParams":Landroid/os/Bundle;
    .end local v10    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v0, "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    .restart local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v34    # "md5Key":Ljava/lang/String;
    .restart local v35    # "rpcParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "startParams":Landroid/os/Bundle;
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v39    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v40    # "operationType":Ljava/lang/String;
    .restart local v41    # "url":Ljava/lang/String;
    :goto_a
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v8

    .line 218
    .local v8, "code":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "errorCode":Ljava/lang/String;
    const-string v9, "2"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 221
    const-string v2, "10"

    .line 223
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v7, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    const/4 v3, 0x2

    iput v3, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->failCode:I

    .line 227
    iput-boolean v6, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcFailed:Z

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "message":Ljava/lang/String;
    const/16 v6, 0x3e8

    if-ge v8, v6, :cond_14

    .line 232
    invoke-static {}, Lcom/mpaas/nebula/NebulaBiz;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/mpaas/nebula/adapter/R$string;->h5_error_message:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    :cond_14
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 237
    .local v6, "object":Lcom/alibaba/fastjson/JSONObject;
    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_16

    if-eqz v29, :cond_15

    goto :goto_b

    .line 238
    :cond_15
    const v7, 0x18769

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v6, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 241
    throw v0

    .line 243
    :cond_16
    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v6, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v4, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .end local v0    # "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v6    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "code":I
    goto/16 :goto_9

    .line 267
    :goto_c
    iget v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->failCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "failCode"

    move-object/from16 v3, v37

    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcOperationType:Ljava/lang/String;

    move-object/from16 v2, v42

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz v12, :cond_17

    iget-boolean v0, v1, Lcom/mpaas/nebula/rpc/H5RpcRequest;->rpcFailed:Z

    if-eqz v0, :cond_17

    .line 271
    const-string v0, "H5_RPC_FAILED"

    invoke-interface {v12, v0, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 273
    :cond_17
    if-eqz v19, :cond_18

    .line 274
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 276
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rpc request time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method
