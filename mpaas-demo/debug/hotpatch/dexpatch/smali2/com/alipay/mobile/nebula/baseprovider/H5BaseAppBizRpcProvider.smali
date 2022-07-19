.class public abstract Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.super Ljava/lang/Object;
.source "H5BaseAppBizRpcProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final bugMeRpcName:Ljava/lang/String; = "com.alipay.hpmweb.app"

.field private static final normalRpcName:Ljava/lang/String; = "com.alipay.wapcenter.rpc.clientService.app"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "H5AppRpc"

    sput-object v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableUse()Z
    .locals 3

    .line 164
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 165
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "h5_nbmergerpc"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 13
    .param p1, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 41
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 42
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 43
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    move-object v0, v1

    const-string v2, "invalid_param"

    iput-object v2, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 44
    return-object v0

    .line 47
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    move-object v2, v0

    .line 48
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    sget-object v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    const-string v3, "!h5LoginProvider.isLogin() not handle rpc data "

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 51
    .restart local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    move-object v0, v1

    const-string/jumbo v3, "not_login"

    iput-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 52
    return-object v0

    .line 48
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_1
    move-object v1, v0

    .line 57
    .local v1, "rpcResult":Ljava/lang/String;
    const-string v3, "com.alipay.wapcenter.rpc.clientService.app"

    .line 59
    .local v3, "rpcName":Ljava/lang/String;
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    const-string v5, "debug"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    const-class v4, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-object v5, v0

    .line 61
    .local v5, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v5, v4

    if-eqz v4, :cond_2

    .line 62
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getDebugAppInfoRpcName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_2
    const-string v3, "com.alipay.hpmweb.app"

    .line 68
    .end local v5    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "rpcCallTime":J
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    .line 70
    .local v0, "h5RpcProxyProvider":Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;
    move-object v0, v6

    const-string v7, " req:"

    if-eqz v6, :cond_5

    .line 71
    const-string v6, "com.alipay.wapcenter.rpc.clientService.app"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->enableUse()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    const-string v6, "com.alipay.hpmweb.app"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 74
    const/4 v6, 0x3

    iput v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I

    .line 76
    :cond_4
    sget-object v6, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;->getPkgJson(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 79
    :cond_5
    sget-object v6, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v3, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 85
    .local v6, "handlerJsonTime":J
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v8

    .line 87
    .local v8, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    sget-object v9, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RpcTime rpcCall cost "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v11, v6, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " handlerJsonTime\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v8
.end method

.method public handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 8

    .line 95
    const-string v0, "limit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 97
    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 98
    return-object p1

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 103
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 104
    sget-object v1, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "resultCode"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 106
    const/16 v3, 0x64

    if-ne v1, v3, :cond_a

    .line 107
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 108
    const-string v3, "data"

    invoke-static {p1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_2

    .line 112
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 113
    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    .line 114
    if-eqz v6, :cond_1

    .line 115
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_2
    sget-object v3, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get rpc result appInfo size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 123
    :cond_3
    const-string/jumbo v3, "removeAppIdList"

    invoke-static {p1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    nop

    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_5

    .line 127
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 128
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_5
    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    .line 135
    :cond_6
    const-string v2, "h5_handleDiscardData"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 136
    const-string v2, "discardData"

    invoke-static {p1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 140
    invoke-static {v2, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 141
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 142
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toStringArray(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_7
    goto :goto_2

    .line 145
    :cond_8
    iput-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    .line 149
    :cond_9
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->setConfig(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebula/appcenter/model/AppRes;)V

    .line 151
    return-object v1

    .line 154
    :cond_a
    new-instance p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 155
    const-string/jumbo v0, "result_code_not_100"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resultCode !== 100"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object p1

    .line 160
    :cond_b
    return-object v0
.end method
