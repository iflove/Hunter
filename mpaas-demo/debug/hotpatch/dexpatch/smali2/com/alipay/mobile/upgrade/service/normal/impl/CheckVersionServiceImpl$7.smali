.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateNormalAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
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

    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$sdkVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$map:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iput-object p5, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 338
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object p1

    sget-object p2, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$sdkVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$map:Ljava/util/HashMap;

    const-string v2, "Upgrade_Click_Normal_Sure"

    invoke-interface {p1, v2, p2, v0, v1}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 340
    new-instance p1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 341
    const-string p2, "now"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 342
    const-string p2, "UC-SECURITY-ABOUT-151224-01"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 343
    const-string p2, "remindUpgradeView"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 344
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v0, "newversion"

    invoke-virtual {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 347
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 348
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v0, "update_version"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 350
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    iget-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateCacheJustForRetry(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 352
    return-void
.end method
