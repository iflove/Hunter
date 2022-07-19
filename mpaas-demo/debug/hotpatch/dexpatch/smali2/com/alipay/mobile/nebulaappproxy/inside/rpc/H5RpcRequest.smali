.class public Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;
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

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->failCode:I

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcFailed:Z

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 55
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->openRpc:Z

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 60
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 62
    iput-boolean p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->openRpc:Z

    .line 63
    return-void
.end method

.method private getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p1, "headers"    # Ljava/util/Map;
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

    .line 289
    const-string v0, "H5RpcRequest"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 294
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

    .line 295
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
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

    .line 298
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_1
    return-object v1

    .line 290
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_1
    const-string/jumbo v1, "response headers == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showToast(Ljava/lang/String;ILcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "duration"    # I
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 280
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .line 67
    move-object/from16 v1, p0

    const-string v2, "10"

    const-string v3, "exception detail"

    const-string v4, "errorMessage"

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 68
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v5

    .line 69
    instance-of v6, v5, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v6, :cond_0

    .line 70
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 71
    return-void

    .line 74
    :cond_0
    move-object v15, v5

    check-cast v15, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 75
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v17

    .line 77
    if-eqz v17, :cond_1

    .line 78
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 80
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rpc url "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "H5RpcRequest"

    invoke-static {v14, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 83
    const-string/jumbo v13, "operationType"

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v6, "httpGet"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v16

    .line 85
    iput-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcOperationType:Ljava/lang/String;

    .line 86
    const-string/jumbo v6, "type"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 88
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->isPbFormat(Ljava/lang/String;)Z

    move-result v21

    .line 90
    const-string v12, ""

    const-string/jumbo v6, "requestData"

    const/4 v8, 0x0

    if-eqz v21, :cond_2

    .line 91
    invoke-static {v0, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {v0, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v9

    .line 95
    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 96
    move-object v6, v12

    goto :goto_0

    .line 99
    :cond_3
    move-object v6, v9

    :goto_0
    const-string v9, "gateway"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    nop

    .line 101
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 102
    invoke-static {v9}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 101
    :cond_4
    move-object v10, v8

    .line 104
    :goto_1
    const-string v11, "headers"

    invoke-static {v0, v11, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 105
    const-string v8, "compress"

    const/4 v7, 0x1

    invoke-static {v0, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 106
    const-string v7, "disableLimitView"

    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-static {v0, v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v23

    .line 107
    const-string/jumbo v7, "retryable"

    invoke-static {v0, v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v24

    .line 108
    const-string v7, "getResponse"

    invoke-static {v0, v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v25

    .line 110
    iget-boolean v7, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->openRpc:Z

    if-eqz v7, :cond_5

    .line 111
    if-eqz v15, :cond_5

    if-eqz v11, :cond_5

    .line 112
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v12, "OPEN_RPC_REQUEST_URL"

    invoke-virtual {v11, v12, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_5
    const-string/jumbo v7, "timeout"

    const/4 v12, 0x0

    invoke-static {v0, v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v26

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v12, "error"

    move-object/from16 v27, v4

    const/4 v4, 0x2

    if-eqz v7, :cond_6

    .line 122
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 123
    return-void

    .line 125
    :cond_6
    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    .line 126
    const-string v4, "funcName"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    move-object/from16 v28, v12

    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    move-object/from16 v29, v13

    const-string v13, "WalletPreRpcProvider"

    if-eqz v12, :cond_b

    invoke-interface {v12, v4}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getPreFlag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 129
    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->lastRpcMd5:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 130
    iput-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->lastRpcMd5:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in H5RpcPlugin preRpcStr is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", md5 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v14, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->getResult(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 134
    const-string/jumbo v3, "url"

    const/4 v5, 0x3

    const-string/jumbo v6, "publicId"

    const-string v8, "appVersion"

    const-string v9, "appId"

    const/4 v10, 0x4

    const-string v11, "appId=%s^version=%s^publicId=%s^url=%s"

    if-eqz v2, :cond_8

    .line 135
    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v12, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 136
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->preRpcProvider:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 137
    const-string v2, "in H5RpcPlugin, has prerpc result, return"

    invoke-static {v13, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 142
    if-eqz v12, :cond_7

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    new-array v0, v10, [Ljava/lang/Object;

    .line 145
    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 146
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 147
    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 148
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 144
    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 143
    const-string v13, "H5_PRERPC_USE"

    invoke-interface/range {v12 .. v17}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_7
    return-void

    .line 153
    :cond_8
    const-string v2, "in H5RpcPlugin, prerpc not finish, return"

    invoke-static {v13, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 157
    if-eqz v12, :cond_9

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    new-array v0, v10, [Ljava/lang/Object;

    .line 160
    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 161
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 162
    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 163
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 159
    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 158
    const-string v13, "H5_PRERPC_EXISTRPC"

    invoke-interface/range {v12 .. v17}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_9
    return-void

    .line 129
    :cond_a
    const/4 v4, 0x1

    goto :goto_2

    .line 128
    :cond_b
    const/4 v4, 0x1

    .line 170
    :goto_2
    const-string v7, "in H5RpcPlugin, not has prerpc result, rpc direct"

    invoke-static {v13, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 173
    :try_start_0
    const-string/jumbo v7, "signType"
    :try_end_0
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, -0x1

    :try_start_1
    invoke-static {v0, v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    move-object v7, v9

    move-object v9, v11

    move/from16 v11, v24

    move-object/from16 v30, v22

    move-object/from16 v31, v28

    move-object v12, v15

    move-object/from16 v32, v13

    move-object/from16 v33, v29

    move/from16 v13, v26

    move-object/from16 v34, v14

    move-object/from16 v14, v20

    move-object/from16 v35, v15

    move/from16 v15, v16

    move/from16 v16, v0

    :try_start_2
    invoke-static/range {v5 .. v16}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6
    :try_end_2
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    const-string/jumbo v7, "resData"

    if-nez v21, :cond_e

    if-nez v6, :cond_c

    goto :goto_3

    .line 194
    :cond_c
    if-eqz v25, :cond_d

    .line 195
    :try_start_3
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 196
    const-string v8, "header"

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v5, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v5

    goto :goto_4

    .line 248
    :catch_0
    move-exception v0

    move-object/from16 v8, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    goto/16 :goto_9

    .line 216
    :catch_1
    move-exception v0

    move-object/from16 v8, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    goto/16 :goto_b

    .line 199
    :cond_d
    goto :goto_4

    .line 182
    :cond_e
    :goto_3
    :try_start_4
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 183
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_f

    :try_start_5
    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "\""

    .line 184
    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 185
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 186
    const-string v8, "\\\\"

    move-object/from16 v9, v30

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 188
    :cond_f
    :try_start_6
    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 189
    if-eqz v25, :cond_10

    .line 190
    :try_start_7
    const-string v5, "header"

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->getHeaderJSONObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 202
    :cond_10
    :goto_4
    :try_start_8
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 204
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->openRpc:Z

    if-eqz v0, :cond_12

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 205
    const-string/jumbo v0, "toastMemo"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 207
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;
    :try_end_8
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v6, v35

    :try_start_9
    invoke-direct {v5, v1, v0, v6}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Lcom/alipay/inside/android/phone/mrpc/core/RpcException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 257
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 248
    :catch_2
    move-exception v0

    goto :goto_6

    .line 216
    :catch_3
    move-exception v0

    goto :goto_7

    .line 206
    :cond_11
    move-object/from16 v6, v35

    goto :goto_5

    .line 204
    :cond_12
    move-object/from16 v6, v35

    .line 266
    :goto_5
    move-object/from16 v5, v34

    goto/16 :goto_e

    .line 257
    :catchall_1
    move-exception v0

    move-object/from16 v6, v35

    goto :goto_8

    .line 248
    :catch_4
    move-exception v0

    move-object/from16 v6, v35

    :goto_6
    move-object/from16 v8, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v34

    goto/16 :goto_9

    .line 216
    :catch_5
    move-exception v0

    move-object/from16 v6, v35

    :goto_7
    move-object/from16 v8, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v34

    goto/16 :goto_b

    .line 248
    :catch_6
    move-exception v0

    move-object/from16 v32, v13

    move-object v6, v15

    move-object/from16 v33, v29

    move-object v5, v14

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    goto :goto_9

    .line 216
    :catch_7
    move-exception v0

    move-object/from16 v32, v13

    move-object v6, v15

    move-object/from16 v33, v29

    move-object v5, v14

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    goto/16 :goto_b

    .line 257
    :catchall_2
    move-exception v0

    move-object/from16 v32, v13

    move-object/from16 v34, v14

    move-object v6, v15

    move-object/from16 v31, v28

    move-object/from16 v33, v29

    .line 258
    :goto_8
    move-object/from16 v5, v34

    invoke-static {v5, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 260
    move-object/from16 v7, v31

    invoke-virtual {v3, v7, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v27

    invoke-virtual {v3, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 263
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->failCode:I

    .line 264
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcFailed:Z

    .line 265
    iput-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    goto/16 :goto_e

    .line 248
    :catch_8
    move-exception v0

    move-object/from16 v32, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v33, v29

    .line 249
    :goto_9
    invoke-static {v5, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 251
    const-string v3, "11"

    invoke-virtual {v2, v7, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 254
    const/4 v2, 0x2

    iput v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->failCode:I

    .line 255
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcFailed:Z

    .line 256
    iput-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    .line 266
    :goto_a
    goto/16 :goto_e

    .line 216
    :catch_9
    move-exception v0

    move-object/from16 v32, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v33, v29

    .line 217
    :goto_b
    invoke-virtual {v0}, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v9

    .line 218
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 220
    const-string v11, "2"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 221
    goto :goto_c

    .line 220
    :cond_13
    move-object v2, v10

    .line 223
    :goto_c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "error code:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v5, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    const/4 v2, 0x2

    iput v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->failCode:I

    .line 227
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcFailed:Z

    .line 229
    invoke-virtual {v0}, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 230
    const/16 v3, 0x3e8

    if-ge v9, v3, :cond_14

    .line 232
    const-string/jumbo v2, "\u7f51\u7edc\u7e41\u5fd9\u6216\u672a\u8fde\u63a5"

    .line 236
    :cond_14
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 237
    const/16 v4, 0x3ea

    if-ne v9, v4, :cond_16

    if-eqz v23, :cond_15

    goto :goto_d

    .line 238
    :cond_15
    const v4, 0x18769

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v3, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 241
    throw v0

    .line 243
    :cond_16
    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v3, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_a

    .line 267
    :goto_e
    iget v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->failCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "failCode"

    move-object/from16 v3, v32

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->errorCode:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcOperationType:Ljava/lang/String;

    move-object/from16 v2, v33

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz v6, :cond_17

    iget-boolean v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->rpcFailed:Z

    if-eqz v0, :cond_17

    .line 271
    const-string v0, "H5_RPC_FAILED"

    invoke-interface {v6, v0, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 273
    :cond_17
    if-eqz v17, :cond_18

    .line 274
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 276
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rpc request time "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method
