.class public Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

.field private b:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    .line 25
    new-instance v0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->b:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    .line 26
    return-void
.end method


# virtual methods
.method public checkNewVersion(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 41
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->checkNewVersion(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public fastCheckHasNewVersion()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->b:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-interface {v0}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->checkHasNewVersion()I

    move-result v0

    return v0
.end method

.method public fastCheckNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->b:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->checkNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method public fastGetClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->b:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-interface {v0}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->getClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installApk(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 1
    .param p1, "res"    # Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 65
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->installApk(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 66
    return-void
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->installApk(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->setDownloadPath(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setForceExitCallback(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;)V
    .locals 0
    .param p1, "forceExitCallback"    # Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    .line 33
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->setForceExitCallBack(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;)V

    .line 34
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 37
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->setIntervalTime(J)V

    .line 38
    return-void
.end method

.method public setUpgradeCallback(Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    .line 29
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->setMPaaSCheckCallBack(Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;)V

    .line 30
    return-void
.end method

.method public update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 1
    .param p1, "res"    # Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .param p2, "callback"    # Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 57
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/upgrade/MPUpgrade;->a:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;->update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 58
    return-void
.end method
