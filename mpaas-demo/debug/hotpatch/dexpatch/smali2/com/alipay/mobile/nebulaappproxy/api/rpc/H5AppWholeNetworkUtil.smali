.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;
.super Ljava/lang/Object;
.source "H5AppWholeNetworkUtil.java"


# static fields
.field public static final WHOLE_NETWORK_RESPONSE_KEY:Ljava/lang/String; = "x-nb-app-resp"

.field public static hasAsyncUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->hasAsyncUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "appId":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "version":Ljava/lang/String;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 63
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "H5AppWholeNetworkUtil"

    if-nez v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v3

    const/4 v5, 0x0

    .line 68
    .local v5, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v5, v3

    if-eqz v3, :cond_4

    iget-object v3, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "headerValue":Ljava/lang/String;
    if-eqz p1, :cond_3

    const-string/jumbo v4, "x-nb-appid"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 74
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    return-void

    .line 69
    .end local v3    # "headerValue":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v3, "appInfo == null"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 64
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "appId : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " == null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 170
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "response"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    move-object v2, v1

    .line 204
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5WholeNetUpdateRunnable;

    invoke-direct {v0, v2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5WholeNetUpdateRunnable;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateRunnable;

    const/4 v8, 0x1

    move-object v3, v0

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateRunnable;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 211
    :cond_1
    const-string v0, "H5AppWholeNetworkUtil"

    const-string v3, "[forceUpdate] not H5Activity!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5MergeRpcUpdateProviderImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5MergeRpcUpdateProviderImpl;-><init>()V

    .line 214
    invoke-interface {v0, v2, p0, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProvider;->setH5AppUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;)V

    .line 216
    return-void
.end method

.method static a()Z
    .locals 3

    .line 41
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 42
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "h5_nbPkgWholeNetwork"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x0

    return v2

    .line 48
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 226
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    .local v1, "className":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "H5Activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "H5TransActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "current"    # Ljava/lang/String;
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;

    .line 247
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 249
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 250
    return v1

    .line 252
    :cond_0
    invoke-static {p0, p2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 254
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 255
    return v1

    .line 257
    :cond_1
    return v2
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 3
    .param p0, "configList"    # [Ljava/lang/String;

    .line 232
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 236
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    return v0

    .line 235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_3
    :goto_1
    return v0
.end method

.method private static b()Z
    .locals 2

    .line 222
    const-string v0, "h5_nbPkgWholeNetForceRestart"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static b(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)Z
    .locals 22
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "responseHeader"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 85
    return v3

    .line 87
    :cond_0
    const-string v2, "H5AppWholeNetworkUtil"

    if-eqz v0, :cond_11

    invoke-interface/range {p0 .. p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 88
    invoke-interface/range {p0 .. p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 89
    invoke-interface/range {p0 .. p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 93
    :cond_1
    if-eqz v1, :cond_10

    const-string/jumbo v4, "x-nb-app-resp"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_7

    .line 96
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x-nb-app-resp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "1@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v20, v4

    goto/16 :goto_6

    .line 103
    :cond_3
    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 104
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 105
    .local v7, "valueList":[Ljava/lang/String;
    move-object v7, v5

    if-eqz v5, :cond_e

    array-length v5, v7

    if-nez v5, :cond_4

    move-object/from16 v20, v4

    move-object/from16 v18, v7

    goto/16 :goto_5

    .line 109
    :cond_4
    const/4 v5, 0x1

    .line 110
    .local v5, "result":Z
    const/4 v8, 0x0

    .line 111
    .local v8, "updateType":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "appId"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    .line 112
    .local v10, "appId":Ljava/lang/String;
    move-object v10, v9

    if-nez v9, :cond_5

    .line 113
    return v3

    .line 117
    :cond_5
    const/4 v9, 0x0

    move v11, v9

    move-object v9, v8

    move-object v8, v6

    .end local v8    # "updateType":Ljava/lang/String;
    .local v9, "updateType":Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    array-length v12, v7

    const-string v13, "2"

    const-string v14, "1"

    if-ge v11, v12, :cond_b

    .line 118
    aget-object v12, v7, v11

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v6, "configList":[Ljava/lang/String;
    move-object v6, v12

    array-length v12, v12

    const/4 v15, 0x5

    if-ne v12, v15, :cond_9

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 120
    const/4 v12, 0x0

    aget-object v12, v6, v12

    .line 122
    .local v12, "configAppId":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 123
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "configAppId: \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' not equals current appId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object/from16 v20, v4

    move/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    goto/16 :goto_1

    .line 126
    :cond_6
    aget-object v15, v6, v3

    .line 127
    .local v15, "configVersion":Ljava/lang/String;
    const/16 v16, 0x2

    aget-object v3, v6, v16

    .line 128
    .local v3, "minClientVersion":Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v17, v5

    .end local v5    # "result":Z
    .local v17, "result":Z
    aget-object v5, v6, v16

    .line 129
    .local v5, "maxClientVersion":Ljava/lang/String;
    const/16 v16, 0x4

    move-object/from16 v18, v7

    .end local v7    # "valueList":[Ljava/lang/String;
    .local v18, "valueList":[Ljava/lang/String;
    aget-object v7, v6, v16

    .line 130
    .local v7, "configType":Ljava/lang/String;
    move-object/from16 v16, v6

    .end local v6    # "configList":[Ljava/lang/String;
    .local v16, "configList":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "currentClientVersion":Ljava/lang/String;
    move-object/from16 v19, v9

    .end local v9    # "updateType":Ljava/lang/String;
    .local v19, "updateType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v20, "value":Ljava/lang/String;
    const-string v4, "appId : "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appVersion : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " minClientVersion : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " maxClientVersion : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currentClientVersion : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v6, v3, v5}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 136
    const-string v4, "clientVersion not enable"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_1

    .line 140
    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "appVersion"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v8, "currentVersion":Ljava/lang/String;
    move-object v8, v4

    invoke-static {v4, v15}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "matchVersion":I
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v21, v3

    .end local v3    # "minClientVersion":Ljava/lang/String;
    .local v21, "minClientVersion":Ljava/lang/String;
    const-string v3, "compareVersion: "

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, -0x1

    if-ne v3, v4, :cond_a

    .line 145
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    const-string v3, "1"

    move-object v9, v3

    .end local v19    # "updateType":Ljava/lang/String;
    .local v3, "updateType":Ljava/lang/String;
    goto :goto_2

    .line 147
    .end local v3    # "updateType":Ljava/lang/String;
    .restart local v19    # "updateType":Ljava/lang/String;
    :cond_8
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 149
    const-string v9, "2"

    .line 150
    .end local v19    # "updateType":Ljava/lang/String;
    .restart local v9    # "updateType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .end local v17    # "result":Z
    .local v3, "result":Z
    move v5, v3

    goto :goto_3

    .line 119
    .end local v3    # "result":Z
    .end local v6    # "currentClientVersion":Ljava/lang/String;
    .end local v8    # "currentVersion":Ljava/lang/String;
    .end local v12    # "configAppId":Ljava/lang/String;
    .end local v15    # "configVersion":Ljava/lang/String;
    .end local v16    # "configList":[Ljava/lang/String;
    .end local v18    # "valueList":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .end local v21    # "minClientVersion":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    .local v5, "result":Z
    .local v7, "valueList":[Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v4

    move/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    .line 117
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "valueList":[Ljava/lang/String;
    .end local v9    # "updateType":Ljava/lang/String;
    .restart local v17    # "result":Z
    .restart local v18    # "valueList":[Ljava/lang/String;
    .restart local v19    # "updateType":Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_a
    :goto_1
    move-object/from16 v9, v19

    .end local v19    # "updateType":Ljava/lang/String;
    .restart local v9    # "updateType":Ljava/lang/String;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    move/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v4, v20

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v17    # "result":Z
    .end local v18    # "valueList":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v5    # "result":Z
    .restart local v7    # "valueList":[Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v4

    move/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    .line 158
    .end local v4    # "value":Ljava/lang/String;
    .end local v7    # "valueList":[Ljava/lang/String;
    .end local v11    # "i":I
    .restart local v18    # "valueList":[Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "already process config, updateType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 161
    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 162
    :cond_c
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 163
    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V

    .line 165
    :cond_d
    :goto_4
    return v5

    .line 105
    .end local v5    # "result":Z
    .end local v9    # "updateType":Ljava/lang/String;
    .end local v10    # "appId":Ljava/lang/String;
    .end local v18    # "valueList":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v7    # "valueList":[Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v4

    move-object/from16 v18, v7

    .line 106
    .end local v4    # "value":Ljava/lang/String;
    .end local v7    # "valueList":[Ljava/lang/String;
    .restart local v18    # "valueList":[Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :goto_5
    const/4 v3, 0x1

    return v3

    .line 99
    .end local v18    # "valueList":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v4

    .line 100
    .end local v4    # "value":Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x-nb-app-resp config error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v20

    .end local v20    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v3

    .line 94
    .end local v5    # "value":Ljava/lang/String;
    :cond_10
    :goto_7
    return v3

    .line 90
    :cond_11
    :goto_8
    const-string v4, "getContext() == null"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v3
.end method
