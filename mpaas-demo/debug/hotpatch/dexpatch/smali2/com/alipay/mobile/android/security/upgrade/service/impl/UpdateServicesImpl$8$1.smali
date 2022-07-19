.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->onFinish(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;Ljava/lang/String;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->val$savePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$downLoadFileMD5:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-boolean v3, v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v4, v4, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMD5(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->reInitDownloadFailedCount()V

    .line 678
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->reInitDownloadMd5Failed()V

    .line 679
    const/16 v0, 0x16

    .line 680
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-boolean v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    if-eqz v1, :cond_0

    .line 681
    const/16 v0, 0x21

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->reportClickInstallApk(Ljava/lang/String;I)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$900(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;I)V

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->val$savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-boolean v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->closeDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 688
    return-void
.end method
