.class Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "UpgradeBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 58
    const-string/jumbo v0, "upgrade_exist_new_version"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UpgradeBroadcastReceiver"

    const-string/jumbo v3, "start a thread"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->access$000(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;)Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "updateServices == null"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alipay.mobile.about.UPDATE_CLIENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    nop

    .line 69
    const-string v4, "0"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xc9

    if-nez v4, :cond_3

    .line 70
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const/16 v0, 0xca

    goto :goto_0

    .line 75
    :cond_1
    const-string v4, "2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const/16 v0, 0xcb

    goto :goto_0

    .line 78
    :cond_2
    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const/16 v0, 0xcc

    goto :goto_0

    .line 84
    :cond_3
    const/16 v0, 0xc9

    :goto_0
    new-instance v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;-><init>()V

    .line 85
    const-string/jumbo v6, "upgrade_download_url"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->downloadURL:Ljava/lang/String;

    .line 86
    const-string/jumbo v6, "upgrade_guide_memo"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->guideMemo:Ljava/lang/String;

    .line 87
    const-string/jumbo v6, "upgrade_newest_version"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->newestVersion:Ljava/lang/String;

    .line 88
    iput v0, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->resultStatus:I

    .line 89
    const-string/jumbo v6, "upgrade_package_full_md5"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->fullMd5:Ljava/lang/String;

    .line 90
    const-string/jumbo v6, "upgrade_version"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->upgradeVersion:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args: downloadUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->downloadURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args: guideMemo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->guideMemo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args: newestVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->newestVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args: resultStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args:fullMd5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->fullMd5:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE args:upgradeVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->reportBehaviorLog(ILcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V
    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->access$100(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;ILcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V

    .line 101
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V

    .line 104
    if-eq v0, v5, :cond_4

    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getCanAlertTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateImmediately()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_4
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "\u89e3\u6790\u767b\u5f55\u4fe1\u606f\u5f02\u5e38"

    invoke-interface {v3, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.alipay.security.login"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentDriveController;->onUserLoginEvent()V

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6536\u5230onresume\u5e7f\u64ad:activityName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->isInAlertWhiteList(Ljava/lang/String;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateImmediately()V

    .line 123
    :cond_7
    return-void
.end method
