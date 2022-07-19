.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 838
    .local v0, "map":Ljava/util/Map;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 839
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 840
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 841
    .local v2, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object v2, v1

    const-string v4, "async"

    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 842
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    .line 847
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "walletConfigNebulaVersion":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .end local v1    # "walletConfigNebulaVersion":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateNebulaAppAsync appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 856
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 857
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 858
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->b:Landroid/os/Bundle;

    .line 860
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$21;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    .line 863
    .local v1, "updateAppParam":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 866
    .end local v1    # "updateAppParam":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .end local v2    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_1
    return-void
.end method
