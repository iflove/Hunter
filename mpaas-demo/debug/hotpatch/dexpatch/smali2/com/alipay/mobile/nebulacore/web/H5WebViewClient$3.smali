.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 837
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 843
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 844
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 846
    .end local v2    # "appId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 842
    :cond_1
    move-object v2, v0

    .line 851
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 852
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_7

    .line 854
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 855
    .local v0, "map":Ljava/util/Map;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 856
    .local v4, "appId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 857
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableResDegrade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 858
    const-string v5, "*"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 860
    :cond_3
    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v5, v5, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resourcePkgIdList add : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .end local v4    # "appId":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 866
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 867
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v3, "map.isEmpty , don\'t sent rpc"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void

    .line 870
    :cond_6
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 871
    .local v3, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object v3, v4

    const-string v5, "NO"

    iput-object v5, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 873
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 874
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 875
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 876
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->a:Ljava/util/List;

    .line 877
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 878
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    .line 879
    .local v1, "param":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "param":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .end local v3    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    return-void

    .line 880
    :catchall_0
    move-exception v0

    .line 881
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 884
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_7
    return-void
.end method
