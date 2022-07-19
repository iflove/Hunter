.class public Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5AppCenterService;
.source "H5AppCenterServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;-><init>()V

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    return-void
.end method


# virtual methods
.method public clearAppAmrPackage()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->f()V

    .line 74
    return-void
.end method

.method public clearAppUnzipPackage(J)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(J)V

    .line 79
    return-void
.end method

.method public findUrlMappedAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->c()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    return-object v0
.end method

.method public getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->d()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPresetApp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public loadPresetAppList(Ljava/io/InputStream;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Ljava/io/InputStream;)V

    .line 31
    return-void
.end method

.method public loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;",
            ">;",
            "Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;",
            ")V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a()V

    .line 26
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->b()V

    .line 36
    return-void
.end method

.method public declared-synchronized setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V

    .line 112
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V

    .line 118
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    .line 84
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V

    .line 91
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V

    .line 97
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->a:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 102
    return-void
.end method
