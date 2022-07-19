.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->retryDownloadOrNot(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$forceExitApp:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;->val$forceExitApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1038
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;->val$forceExitApp:Z

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 1039
    return-void
.end method
