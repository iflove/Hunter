.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateSilentAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

.field final synthetic val$map:Ljava/util/HashMap;

.field final synthetic val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

.field final synthetic val$sdkVersion:Ljava/lang/String;

.field final synthetic val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$sdkVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$map:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iput-object p5, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object p1

    sget-object p2, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$sdkVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$map:Ljava/util/HashMap;

    const-string v2, "Upgrade_Click_Silent_Sure"

    invoke-interface {p1, v2, p2, v0, v1}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string p2, "SILENT-UPGRADE"

    const-string v0, "AboutSilentUpgrade.install"

    const-string v1, "160201-05"

    const-string v2, "newversion"

    invoke-static {p2, v0, v1, v2, p1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->reportClickInstall(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$600(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 291
    return-void
.end method
