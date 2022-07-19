.class Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;
.super Ljava/lang/Object;
.source "PreparePkgResTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 69
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 70
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "error"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->replyResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->b:Ljava/lang/String;

    .line 79
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "queryVersion":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v4, v1

    .line 82
    .local v4, "appIdMap":Ljava/util/Map;
    move-object v4, v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->b:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 105
    .local v3, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->b:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    .line 106
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 107
    :goto_0
    if-eqz v5, :cond_3

    .line 108
    const-string/jumbo v5, "ta_pkgRes_enableforce"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    move v5, v6

    .line 110
    .local v5, "forceRpc":Z
    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v6}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 111
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object v1, v6

    if-eqz v5, :cond_5

    const-string/jumbo v8, "syncforce"

    goto :goto_1

    :cond_5
    const-string v8, "async"

    :goto_1
    iput-object v8, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 113
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 114
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 115
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 117
    const-string/jumbo v8, "ta_pkgRes_download_amr"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 119
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 120
    .local v6, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 121
    return-void
.end method
