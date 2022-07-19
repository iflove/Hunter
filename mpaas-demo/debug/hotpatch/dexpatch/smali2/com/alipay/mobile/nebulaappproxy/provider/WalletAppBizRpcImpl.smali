.class public Lcom/alipay/mobile/nebulaappproxy/provider/WalletAppBizRpcImpl;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.source "WalletAppBizRpcImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "requestData"    # Ljava/lang/String;

    .line 40
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "operationType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5AppRpc"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 50
    .local v4, "context":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v6

    .line 51
    .local v6, "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;-><init>()V

    move-object v7, v0

    .line 53
    .local v7, "simpleRpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;
    const-class v0, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 54
    .local v8, "walletSimpleRpcService":Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;
    invoke-virtual {v6, v8}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;

    move-result-object v9

    .line 55
    .local v9, "rpcInvokeContext":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->setWalletSimpleService(Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;)V

    move-object v10, v5

    .line 58
    .local v10, "rpcResult":Ljava/lang/String;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    move-object v11, v5

    .line 59
    .local v11, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v11, v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-interface {v11}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .local v0, "gwUrl":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "gwUrl":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 67
    .local v12, "gwUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9, v12}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->setCompress(Z)V

    .line 70
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "[{}]"

    move-object v2, v0

    .line 75
    .end local p1    # "requestData":Ljava/lang/String;
    .local v2, "requestData":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v7, v1, v2, v5}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v10    # "rpcResult":Ljava/lang/String;
    .local v0, "rpcResult":Ljava/lang/String;
    nop

    .line 88
    return-object v0

    .line 76
    .end local v0    # "rpcResult":Ljava/lang/String;
    .restart local v10    # "rpcResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v5

    .line 77
    .local v0, "exception":Ljava/lang/Exception;
    move-object v0, v13

    instance-of v13, v13, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v13, :cond_2

    .line 78
    move-object v13, v0

    check-cast v13, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 79
    .local v13, "e":Lcom/alipay/mobile/common/rpc/RpcException;
    new-instance v14, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v14}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "^step=fail^err=["

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v13}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v15, "H5_APP_REQUEST"

    invoke-static {v15, v14, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v13}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    const/16 v14, 0x3ea

    if-ne v5, v14, :cond_2

    .line 82
    const-string v3, "limit"

    return-object v3

    .line 85
    .end local v13    # "e":Lcom/alipay/mobile/common/rpc/RpcException;
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 2
    .param p1, "rpc"    # Ljava/lang/String;
    .param p2, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletAppBizRpcImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
