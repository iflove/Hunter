.class public Lcom/alipay/mobile/android/security/upgrade/sync/DeviceSyncMsgInit;
.super Ljava/lang/Object;
.source "DeviceSyncMsgInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceSyncMsgInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerUpgradeSync()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->registUpgradeSync()V

    .line 30
    return-void
.end method

.method private reportInstallSuccess()V
    .locals 5

    .line 36
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->checkIsUpgradeSuccess()Z

    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DeviceSyncMsgInit"

    const-string/jumbo v2, "\u5347\u7ea7\u6700\u65b0\u7248\u672c\u6210\u529f\uff0c\u7248\u672c\u53f7="

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->getUpgradeInstallType()I

    move-result v0

    .line 40
    nop

    .line 41
    const/16 v1, 0xb

    const-string v2, "INSTALL-BY-NORMAL"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    nop

    .line 44
    const-string v2, "INSTALL-BY-FORCE"

    goto :goto_0

    .line 49
    :cond_1
    nop

    .line 50
    goto :goto_0

    .line 46
    :cond_2
    nop

    .line 47
    const-string v2, "INSTALL-BY-SILENT"

    .line 54
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->getClickInstallLastVersion()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "UPGRADE-INSTALL-SUCCESS-160216-002"

    const-string v3, "UpgradeInstallSucccess"

    const-string v4, "lastversion"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->removeClickUpgradeTargetVersion()V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->removeClickInstallLastVersion()V

    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/DeviceSyncMsgInit;->registerUpgradeSync()V

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/DeviceSyncMsgInit;->reportInstallSuccess()V

    .line 22
    return-void
.end method
