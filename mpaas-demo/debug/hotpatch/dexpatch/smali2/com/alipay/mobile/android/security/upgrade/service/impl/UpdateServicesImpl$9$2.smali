.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 952
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;

    iget-object p1, p1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;

    iget-boolean p2, p2, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->val$forceExitApp:Z

    const/4 v0, 0x0

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->retryDownloadOrNot(ZZ)V
    invoke-static {p1, v0, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1700(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZZ)V

    .line 953
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;

    iget-object p1, p1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const-string p2, "cancel"

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->writeRetryChoiceLog(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;)V

    .line 954
    return-void
.end method
