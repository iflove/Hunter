.class public Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;
.super Ljava/lang/Object;
.source "H5RpcUtil.java"


# static fields
.field public static final DEFAULT_RPC_APPKEYCONFIG:Ljava/lang/String; = "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

.field public static final RPC_HEADER_SPM_ID:Ljava/lang/String; = "pagets"

.field public static final TAG:Ljava/lang/String; = "H5RpcUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "gateway"    # Ljava/lang/String;

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "config":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string/jumbo v0, "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAppKey online config is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5RpcUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v4, v1

    .line 221
    .local v4, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .local v1, "key":Ljava/lang/String;
    move-object v1, v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 224
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 225
    .local v5, "matcher":Ljava/util/regex/Matcher;
    move-object v5, v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getAppKey match key "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 229
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 232
    .end local v0    # "config":Ljava/lang/String;
    .end local v4    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static getHeaders(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 6
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

    .line 196
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "headers":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v2, "value":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add rpc header "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5RpcUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 210
    :cond_2
    return-object v0

    .line 197
    .end local v0    # "headers":Ljava/util/Map;
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static isPbFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "pb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;
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

    .line 54
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

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;

    move-result-object v0

    return-object v0
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;
    .locals 20
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

    .line 65
    move-object/from16 v1, p0

    move/from16 v2, p8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpcCall, type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "H5RpcUtil"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static/range {p9 .. p9}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->isPbFormat(Ljava/lang/String;)Z

    move-result v5

    .line 68
    .local v5, "isPBFormat":Z
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v6

    .line 69
    .local v6, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    .line 77
    .local v8, "rpcService":Lcom/alipay/android/phone/inside/commonservice/RpcService;
    move-object v8, v0

    const-class v9, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;

    invoke-virtual {v0, v9}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;

    .local v9, "simpleRpcService":Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;
    move-object v0, v7

    .line 80
    .local v0, "url":Ljava/lang/String;
    const/4 v10, 0x0

    .line 82
    .local v10, "rpcResult":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 83
    move-object/from16 v0, p2

    move-object v11, v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 87
    .end local v0    # "url":Ljava/lang/String;
    .local v11, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "set rpc url "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v8, v9}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;

    move-result-object v0

    move-object v12, v7

    .line 89
    .local v12, "rpcInvokeContext":Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;
    move-object v12, v0

    invoke-interface {v0, v11}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 93
    move/from16 v13, p3

    invoke-interface {v12, v13}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setCompress(Z)V

    .line 101
    if-eqz v2, :cond_1

    .line 104
    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v14, v0

    :try_start_0
    invoke-interface {v12, v14, v15}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 111
    .local v0, "isAlreadyPut":Z
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->getHeaders(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v14

    .line 113
    .local v14, "headers":Ljava/util/Map;
    if-eqz p7, :cond_a

    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 114
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v7, "pagets"

    if-eqz v15, :cond_5

    .line 116
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v15

    move/from16 v17, v0

    .end local v0    # "isAlreadyPut":Z
    .local v17, "isAlreadyPut":Z
    const-string v0, "extLogInfo"

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    move-object/from16 v16, v15

    .line 117
    .local v16, "extLogInfoS":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v16    # "extLogInfoS":Ljava/lang/String;
    .local v18, "extLogInfoS":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object/from16 v16, v15

    .line 119
    .local v16, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v19, v0

    .end local v16    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_4

    .line 120
    const-string/jumbo v0, "miniPageId"

    move-object/from16 v2, v19

    .end local v19    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v2, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v15

    .line 121
    .local v19, "miniPageId":Ljava/lang/String;
    move-object v15, v0

    .end local v19    # "miniPageId":Ljava/lang/String;
    .local v15, "miniPageId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    .end local v2    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "miniPageId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    goto :goto_3

    .line 122
    .end local v0    # "isAlreadyPut":Z
    .end local v19    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "isAlreadyPut":Z
    :cond_2
    move-object/from16 v19, v2

    .end local v2    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 121
    .end local v19    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    move-object/from16 v19, v2

    .line 131
    .end local v2    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "miniPageId":Ljava/lang/String;
    .end local v18    # "extLogInfoS":Ljava/lang/String;
    :cond_4
    :goto_2
    move/from16 v0, v17

    goto :goto_3

    .line 114
    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_5
    move/from16 v17, v0

    .line 131
    .end local v0    # "isAlreadyPut":Z
    .restart local v17    # "isAlreadyPut":Z
    :cond_6
    move/from16 v0, v17

    const/16 v19, 0x0

    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :goto_3
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 133
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-nez v0, :cond_9

    .line 134
    if-eqz v2, :cond_8

    .line 135
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/log/H5Logger;->getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 142
    .local v15, "key":Ljava/lang/String;
    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 144
    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v17, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v17    # "isAlreadyPut":Z
    const-string v0, "key:"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 142
    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_7
    move/from16 v17, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v17    # "isAlreadyPut":Z
    goto :goto_5

    .line 134
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_8
    move/from16 v17, v0

    .end local v0    # "isAlreadyPut":Z
    .restart local v17    # "isAlreadyPut":Z
    goto :goto_4

    .line 133
    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_9
    move/from16 v17, v0

    .line 156
    .end local v0    # "isAlreadyPut":Z
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v17    # "isAlreadyPut":Z
    :goto_4
    move-object/from16 v15, v19

    goto :goto_5

    .line 113
    .end local v17    # "isAlreadyPut":Z
    .restart local v0    # "isAlreadyPut":Z
    :cond_a
    move/from16 v17, v0

    .line 156
    .end local v0    # "isAlreadyPut":Z
    .restart local v17    # "isAlreadyPut":Z
    const/4 v15, 0x0

    :goto_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 157
    move-object/from16 v2, p5

    invoke-interface {v12, v2}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    goto :goto_6

    .line 156
    :cond_b
    move-object/from16 v2, p5

    .line 160
    :goto_6
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 161
    invoke-interface {v12, v14}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->setRequestHeaders(Ljava/util/Map;)V

    .line 164
    :cond_c
    if-eqz v5, :cond_d

    .line 166
    const/4 v0, 0x0

    move-object/from16 v7, p1

    :try_start_1
    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 167
    .local v19, "requestDataInByteArray":[B
    move-object/from16 v0, v19

    const/4 v2, 0x0

    .end local v19    # "requestDataInByteArray":[B
    .local v0, "requestDataInByteArray":[B
    invoke-interface {v9, v1, v0, v2}, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v2

    .line 169
    .local v15, "resultBuf":[B
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "requestDataInByteArray":[B
    .local v16, "requestDataInByteArray":[B
    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    .end local v15    # "resultBuf":[B
    .end local v16    # "requestDataInByteArray":[B
    goto :goto_7

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    goto :goto_8

    .line 174
    :cond_d
    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 175
    const-string v0, "[{}]"

    move-object v7, v0

    .line 178
    .end local p1    # "requestData":Ljava/lang/String;
    .local v7, "requestData":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    invoke-interface {v9, v1, v7, v2}, Lcom/alipay/inside/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 181
    :goto_8
    invoke-interface {v12}, Lcom/alipay/inside/android/phone/mrpc/core/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "response":Ljava/util/Map;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 189
    .local v1, "threadId":J
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "threadId "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isPBFormat: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " rpc response "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;

    invoke-direct {v3, v0, v10}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;-><init>(Ljava/util/Map;Ljava/lang/String;)V

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

    .line 44
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

    invoke-static/range {v0 .. v9}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method
