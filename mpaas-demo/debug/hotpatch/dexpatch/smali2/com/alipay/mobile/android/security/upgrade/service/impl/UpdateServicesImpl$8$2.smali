.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->onFailed(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->closeDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-boolean v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$forceExitApp:Z

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;->val$upgradeVersion:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->dealDownloadFailed(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1600(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLjava/lang/String;)V

    .line 712
    return-void
.end method
