.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->normalUpdate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic val$downLoadFileMD5:Ljava/lang/String;

.field final synthetic val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

.field final synthetic val$forceExitApp:Z

.field final synthetic val$upgradeVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$downLoadFileMD5:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    iput-object p6, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V
    .locals 2

    .line 721
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z

    .line 723
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "UPDATE"

    const-string/jumbo v1, "\u5728\u7ebf\u4e0b\u8f7donCancel\uff0csetDoSilentDownload true"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;ILjava/lang/String;)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onFailed(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;ILjava/lang/String;)V

    .line 698
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 p2, 0x0

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z

    .line 699
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->recordDownloadFailed()V

    .line 700
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 701
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->getDownloadFailedCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "upgrade_download_fail_count"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    const-string/jumbo p3, "newversion"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object p2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string p3, "download_failed"

    const-string v0, "UPGRADE-DOWNLOAD-FAILED-0323"

    const-string v1, ""

    invoke-static {p2, p3, v0, v1, p1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 705
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "UPDATE"

    const-string/jumbo p3, "\u5728\u7ebf\u4e0b\u8f7donFailed\uff0csetDoSilentDownload true"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    if-eqz p1, :cond_1

    .line 707
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;)V

    const-wide/16 v0, 0x1194

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 715
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->closeDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 717
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Ljava/lang/String;)V
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onFinish(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Ljava/lang/String;)V

    .line 659
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object p1

    const-string v0, "NORMAL_UPDATE"

    const-string/jumbo v1, "normalUpdate_UpdateSuccess_Time"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 660
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V

    .line 662
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 663
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upgrade_download_time_consume"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    const-string/jumbo v1, "newversion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v1, "download_consume_time"

    const-string v2, "UPGRADE-DOWNLOAD-TIME-CONSUME-0323"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 668
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z

    .line 669
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 670
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 671
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    .line 673
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 690
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "UPDATE"

    const-string/jumbo v0, "\u5728\u7ebf\u4e0b\u8f7donFinish\uff0csetDoSilentDownload true"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public onLoadNotificationConfig(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onLoadNotificationConfig(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 635
    :cond_0
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mLastUpdatingTime:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1402(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;J)J

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onPrepare(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 652
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;I)V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$extCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onProgress(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;I)V

    .line 643
    :cond_0
    return-void
.end method
