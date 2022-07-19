.class public Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsideAppBizRpcProviderTempImpl;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.source "InsideAppBizRpcProviderTempImpl.java"


# static fields
.field private static final RPC_OPTYPE_INSIDE:Ljava/lang/String; = "alipay.mappconfig.queryAppInfoGroup"

.field private static final TAG:Ljava/lang/String; = "H5AppRpc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;-><init>()V

    return-void
.end method

.method private rpc(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "isDebugSource"    # Z
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "requestData"    # Ljava/lang/String;

    .line 71
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "operationType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5AppRpc"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 74
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 75
    .local v6, "rpcService":Lcom/alipay/android/phone/inside/commonservice/RpcService;
    move-object v6, v0

    const-class v7, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;

    invoke-virtual {v0, v7}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;

    .local v7, "simpleRpcService":Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;
    move-object v8, v5

    .line 79
    .local v8, "rpcResult":Ljava/lang/String;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    move-object v9, v5

    .line 80
    .local v9, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v9, v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v0, "gwUrl":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v0    # "gwUrl":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 88
    .local v10, "gwUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;

    move-result-object v0

    move-object v11, v5

    .line 89
    .local v11, "rpcInvokeContext":Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;
    move-object v11, v0

    invoke-interface {v0, v10}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setCompress(Z)V

    .line 92
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "[{}]"

    move-object v2, v0

    .line 97
    .end local p3    # "requestData":Ljava/lang/String;
    .local v2, "requestData":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v7, v1, v2, v5}, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v8    # "rpcResult":Ljava/lang/String;
    .local v0, "rpcResult":Ljava/lang/String;
    nop

    .line 111
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 112
    .local v5, "resultObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "result: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 116
    :cond_2
    const-string/jumbo v3, "packJson"

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    .end local v0    # "rpcResult":Ljava/lang/String;
    .end local v5    # "resultObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "rpcResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v5

    .line 99
    .local v0, "exception":Ljava/lang/Exception;
    move-object v0, v12

    instance-of v12, v12, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;

    if-eqz v12, :cond_3

    .line 100
    move-object v12, v0

    check-cast v12, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;

    .line 101
    .local v12, "e":Lcom/alipay/inside/android/phone/mrpc/core/RpcException;
    new-instance v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "^step=fail^err=["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v12}, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 101
    const-string v15, "H5_APP_REQUEST"

    invoke-static {v15, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v12}, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v13

    const/16 v14, 0x3ea

    if-ne v13, v14, :cond_3

    .line 104
    const-string v3, "limit"

    return-object v3

    .line 107
    .end local v12    # "e":Lcom/alipay/inside/android/phone/mrpc/core/RpcException;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v5
.end method


# virtual methods
.method public rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 6
    .param p1, "rpc"    # Ljava/lang/String;
    .param p2, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 35
    iget-object v0, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 36
    .local v1, "isDebugSource":Z
    move v1, v0

    if-nez v0, :cond_0

    .line 37
    const-string p1, "alipay.mappconfig.queryAppInfoGroup"

    .line 42
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "production"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    .line 45
    .local v5, "rpcUrl":Ljava/lang/String;
    move-object v5, v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "mobilegwpre.alipay.com"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const-string/jumbo v4, "prepub"

    iput-object v4, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_1
    iput-object v2, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    goto :goto_0

    .line 42
    .end local v0    # "context":Landroid/content/Context;
    .end local v5    # "rpcUrl":Ljava/lang/String;
    :cond_2
    move-object v5, v3

    .line 52
    :goto_0
    iget-object v0, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iput-object v2, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    .line 55
    :cond_3
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "reqStr":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 59
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v4, v5

    .line 60
    .local v4, "reqObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    const-string/jumbo v5, "stableRpc"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v2, "preferLocal"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 63
    .local v3, "bodyObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const-string/jumbo v5, "packInfoReq"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "reqType"

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .end local v3    # "bodyObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "reqObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsideAppBizRpcProviderTempImpl;->rpc(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
