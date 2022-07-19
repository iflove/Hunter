.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

.field final synthetic val$downLoadFileMD5:Ljava/lang/String;

.field final synthetic val$downLoadUrl:Ljava/lang/String;

.field final synthetic val$forceExitApp:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadFileMD5:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$forceExitApp:Z

    iput-object p5, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 557
    nop

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v1, "update_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 561
    :goto_0
    nop

    .line 564
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadFileMD5:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$forceExitApp:Z

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMD5(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    invoke-static {v1, v7, v2, v3, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v2, "reuse_upgrade_package"

    const-string v3, "UPGRADE-REUSE-DOWNLOAD-PACKAGE"

    const-string v4, ""

    const-string/jumbo v5, "newversion"

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/16 v2, 0x16

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->reportClickInstallApk(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$900(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;I)V

    .line 571
    invoke-static {v7}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-boolean v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$forceExitApp:Z

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    return-void

    .line 578
    :cond_1
    goto :goto_1

    .line 576
    :catch_0
    move-exception v1

    .line 577
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UPDATE"

    const-string/jumbo v3, "\u68c0\u67e5\u5b89\u88c5\u5305\u662f\u5426\u5b8c\u6574\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 580
    new-instance v2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method
