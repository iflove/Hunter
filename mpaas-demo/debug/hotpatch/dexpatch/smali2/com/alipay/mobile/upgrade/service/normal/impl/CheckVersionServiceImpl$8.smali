.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;
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

    .line 353
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$sdkVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$map:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iput-object p5, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object p2

    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$sdkVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$map:Ljava/util/HashMap;

    const-string v3, "Upgrade_Click_Normal_Cancel"

    invoke-interface {p2, v3, v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 358
    new-instance p2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 359
    const-string v0, "later"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 360
    const-string v0, "UC-SECURITY-ABOUT-151224-02"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 361
    const-string v0, "remindUpgradeView"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$result:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v1, "newversion"

    invoke-virtual {p2, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 365
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;->val$updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 367
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "CheckVersionServiceImpl"

    const-string v0, "\u5173\u4e8e--\u666e\u901a\u5f39\u6846user cancel"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method
