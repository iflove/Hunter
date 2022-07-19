.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceUpdateDownloadFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 997
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$200(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object p1

    const-string p2, "about_ignore_update_version"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->remove(Ljava/lang/String;)V

    .line 998
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 p2, 0x1

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->retryDownloadOrNot(ZZ)V
    invoke-static {p1, p2, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1700(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZZ)V

    .line 999
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const-string p2, "force_redown"

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->writeRetryChoiceLog(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;)V

    .line 1000
    return-void
.end method
