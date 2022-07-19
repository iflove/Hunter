.class final Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController$1;
.super Ljava/lang/Object;
.source "UpgradeSilentDriveController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController;->doSilentDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getUpgradeInfoForSilent()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSilentDriveController"

    const-string/jumbo v2, "upgradeRes is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 72
    :cond_0
    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController;->isConformPreSilentDownloadStrategy(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController;->access$000(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->startSilentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method
