.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;
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

    .line 292
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$sdkVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$map:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iput-object p5, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 295
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object p2

    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$sdkVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$map:Ljava/util/HashMap;

    const-string v3, "Upgrade_Click_Silent_Cancel"

    invoke-interface {p2, v3, v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v0, "SILENT-UPGRADE"

    const-string v1, "AboutSilentUpgrade.cancel"

    const-string v2, "160201-06"

    const-string v3, "newversion"

    invoke-static {v0, v1, v2, v3, p2}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 300
    return-void
.end method
