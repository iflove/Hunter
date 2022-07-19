.class public Lcom/mpaas/nebula/rpc/H5RpcUtil;
.super Ljava/lang/Object;
.source "H5RpcUtil.java"


# static fields
.field public static final DEFAULT_RPC_APPKEYCONFIG:Ljava/lang/String; = "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

.field public static final RPC_HEADER_SPM_ID:Ljava/lang/String; = "pagets"

.field public static final TAG:Ljava/lang/String; = "H5RpcUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "gateway"    # Ljava/lang/String;

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v0, "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppKey online config is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5RpcUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 231
    .local v1, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 234
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 235
    .local v6, "matcher":Ljava/util/regex/Matcher;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppKey match key "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 239
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 242
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static getHeaders(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 212
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    goto :goto_0

    .line 217
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add rpc header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5RpcUtil"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_2
    return-object v0

    .line 207
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static isPbFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 246
    const-string v0, "pb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Lcom/mpaas/nebula/rpc/H5Response;
    .locals 12
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "requestData"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "compress"    # Z
    .param p4, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "retryable"    # Z
    .param p7, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p8, "timeout"    # I
    .param p9, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .line 55
    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/mpaas/nebula/rpc/H5Response;

    move-result-object v0

    return-object v0
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/mpaas/nebula/rpc/H5Response;
    .locals 21
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "requestData"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "compress"    # Z
    .param p4, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "retryable"    # Z
    .param p7, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p8, "timeout"    # I
    .param p9, "type"    # Ljava/lang/String;
    .param p10, "isHttpGet"    # Z
    .param p11, "signType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p10

    const-string v4, ""

    .line 66
    .local v4, "uploadVersion":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rpcCall, type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "H5RpcUtil"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static/range {p9 .. p9}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->isPbFormat(Ljava/lang/String;)Z

    move-result v7

    .line 69
    .local v7, "isPBFormat":Z
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v8

    .line 70
    .local v8, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 71
    .local v0, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 72
    const-string v9, "rpcCall use ThirdpartyRpcService"

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    const-class v10, Lcom/alipay/mobile/framework/service/common/ThirdpartyRpcService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    move-object v9, v0

    goto :goto_0

    .line 75
    :cond_0
    const-string v9, "rpcCall use RpcService"

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    const-class v10, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    move-object v9, v0

    .line 78
    .end local v0    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .local v9, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :goto_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 80
    .local v10, "simpleRpcService":Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;
    const/4 v0, 0x0

    .line 81
    .local v0, "url":Ljava/lang/String;
    const/4 v11, 0x0

    .line 83
    .local v11, "rpcResult":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 84
    move-object/from16 v0, p2

    move-object v12, v0

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 88
    .end local v0    # "url":Ljava/lang/String;
    .local v12, "url":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set rpc url "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v13

    .line 90
    .local v13, "rpcInvokeContext":Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    invoke-interface {v13, v12}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 95
    move/from16 v14, p3

    invoke-interface {v13, v14}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setCompress(Z)V

    .line 96
    if-eqz v3, :cond_2

    .line 97
    invoke-interface {v13, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGetMethod(Z)V

    .line 99
    :cond_2
    if-eqz p6, :cond_3

    .line 100
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowRetry(Z)V

    .line 103
    :cond_3
    if-eqz v2, :cond_4

    .line 106
    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v2, v0

    :try_start_0
    invoke-interface {v13, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 113
    .local v0, "isAlreadyPut":Z
    invoke-static/range {p4 .. p4}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->getHeaders(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 116
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 117
    .local v3, "closePageTs":Z
    const-class v15, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 118
    .local v15, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v15, :cond_5

    move/from16 v16, v0

    .end local v0    # "isAlreadyPut":Z
    .local v16, "isAlreadyPut":Z
    const-string v0, "mp_h5_close_pagets"

    invoke-interface {v15, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v3

    .end local v3    # "closePageTs":Z
    .local v17, "closePageTs":Z
    const-string v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    const/4 v3, 0x1

    .end local v17    # "closePageTs":Z
    .restart local v3    # "closePageTs":Z
    goto :goto_3

    .line 118
    .end local v16    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_5
    move/from16 v16, v0

    move/from16 v17, v3

    .line 121
    .end local v0    # "isAlreadyPut":Z
    .end local v3    # "closePageTs":Z
    .restart local v16    # "isAlreadyPut":Z
    .restart local v17    # "closePageTs":Z
    :cond_6
    move/from16 v3, v17

    .end local v17    # "closePageTs":Z
    .restart local v3    # "closePageTs":Z
    :goto_3
    if-nez v3, :cond_10

    .line 122
    if-eqz p7, :cond_f

    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 123
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move/from16 v17, v3

    .end local v3    # "closePageTs":Z
    .restart local v17    # "closePageTs":Z
    const-string v3, "pagets"

    if-eqz v0, :cond_b

    .line 125
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v18, v4

    .end local v4    # "uploadVersion":Ljava/lang/String;
    .local v18, "uploadVersion":Ljava/lang/String;
    const-string v4, "extLogInfo"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "extLogInfoS":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 127
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 128
    .local v4, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_9

    .line 129
    move-object/from16 v19, v0

    .end local v0    # "extLogInfoS":Ljava/lang/String;
    .local v19, "extLogInfoS":Ljava/lang/String;
    const-string v0, "miniPageId"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "miniPageId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 131
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 132
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-object/from16 v20, v4

    .end local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v20, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "miniPageId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v4, 0x1

    move v0, v4

    .end local v16    # "isAlreadyPut":Z
    .local v4, "isAlreadyPut":Z
    goto :goto_5

    .line 131
    .end local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v4, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "isAlreadyPut":Z
    :cond_7
    move-object/from16 v20, v4

    .end local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    .line 130
    .end local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    move-object/from16 v20, v4

    .end local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    .line 128
    .end local v19    # "extLogInfoS":Ljava/lang/String;
    .end local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v0, "extLogInfoS":Ljava/lang/String;
    .restart local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "extLogInfoS":Ljava/lang/String;
    .end local v4    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "extLogInfoS":Ljava/lang/String;
    .restart local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    .line 126
    .end local v19    # "extLogInfoS":Ljava/lang/String;
    .end local v20    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v0    # "extLogInfoS":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v0

    .end local v0    # "extLogInfoS":Ljava/lang/String;
    .restart local v19    # "extLogInfoS":Ljava/lang/String;
    goto :goto_4

    .line 123
    .end local v18    # "uploadVersion":Ljava/lang/String;
    .end local v19    # "extLogInfoS":Ljava/lang/String;
    .local v4, "uploadVersion":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v4

    .line 140
    .end local v4    # "uploadVersion":Ljava/lang/String;
    .restart local v18    # "uploadVersion":Ljava/lang/String;
    :goto_4
    move/from16 v0, v16

    .end local v16    # "isAlreadyPut":Z
    .local v0, "isAlreadyPut":Z
    :goto_5
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 141
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 142
    .local v4, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-nez v0, :cond_e

    .line 143
    if-eqz v4, :cond_d

    .line 144
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 153
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v16    # "isAlreadyPut":Z
    const-string v0, "key:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 151
    .end local v16    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_c
    move/from16 v16, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v16    # "isAlreadyPut":Z
    goto :goto_6

    .line 143
    .end local v5    # "key":Ljava/lang/String;
    .end local v16    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_d
    move/from16 v16, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v16    # "isAlreadyPut":Z
    goto :goto_6

    .line 142
    .end local v16    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_e
    move/from16 v16, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v16    # "isAlreadyPut":Z
    goto :goto_6

    .line 122
    .end local v17    # "closePageTs":Z
    .end local v18    # "uploadVersion":Ljava/lang/String;
    .restart local v3    # "closePageTs":Z
    .local v4, "uploadVersion":Ljava/lang/String;
    :cond_f
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "closePageTs":Z
    .end local v4    # "uploadVersion":Ljava/lang/String;
    .restart local v17    # "closePageTs":Z
    .restart local v18    # "uploadVersion":Ljava/lang/String;
    goto :goto_6

    .line 121
    .end local v17    # "closePageTs":Z
    .end local v18    # "uploadVersion":Ljava/lang/String;
    .restart local v3    # "closePageTs":Z
    .restart local v4    # "uploadVersion":Ljava/lang/String;
    :cond_10
    move/from16 v17, v3

    move-object/from16 v18, v4

    .line 161
    .end local v3    # "closePageTs":Z
    .end local v4    # "uploadVersion":Ljava/lang/String;
    .restart local v17    # "closePageTs":Z
    .restart local v18    # "uploadVersion":Ljava/lang/String;
    :goto_6
    nop

    .line 166
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    move-object/from16 v3, p5

    invoke-interface {v13, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    goto :goto_7

    .line 166
    :cond_11
    move-object/from16 v3, p5

    .line 170
    :goto_7
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 171
    invoke-interface {v13, v2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRequestHeaders(Ljava/util/Map;)V

    .line 174
    :cond_12
    const/4 v0, 0x0

    if-eqz v7, :cond_13

    .line 176
    const/4 v4, 0x0

    move-object/from16 v5, p1

    :try_start_1
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    move-object/from16 v20, v19

    .line 177
    .local v20, "requestDataInByteArray":[B
    move-object/from16 v4, v20

    .end local v20    # "requestDataInByteArray":[B
    .local v4, "requestDataInByteArray":[B
    invoke-interface {v10, v1, v4, v0}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    .local v0, "resultBuf":[B
    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v11, v2

    .end local v0    # "resultBuf":[B
    .end local v4    # "requestDataInByteArray":[B
    goto :goto_9

    .line 180
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v20    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    .line 181
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_8
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9
    goto :goto_a

    .line 184
    .end local v20    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v5, p1

    move-object/from16 v20, v2

    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 185
    const-string v2, "[{}]"

    move-object v5, v2

    .line 188
    .end local p1    # "requestData":Ljava/lang/String;
    .local v5, "requestData":Ljava/lang/String;
    :cond_14
    invoke-interface {v10, v1, v5, v0}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 191
    :goto_a
    invoke-interface {v13}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 199
    .local v1, "threadId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "threadId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isPBFormat: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " rpc response "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v3, Lcom/mpaas/nebula/rpc/H5Response;

    invoke-direct {v3, v0, v11}, Lcom/mpaas/nebula/rpc/H5Response;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v3
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;
    .locals 10
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "requestData"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "compress"    # Z
    .param p4, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "retryable"    # Z
    .param p7, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p8, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .line 45
    const-string v9, "json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Lcom/mpaas/nebula/rpc/H5Response;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/mpaas/nebula/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
