.class Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService$1;
.super Ljava/lang/Object;
.source "UpgradeExternalDownloadIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService$1;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService$1;->val$downloadUrl:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;->cancel(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;Ljava/lang/String;)V

    .line 91
    return-void
.end method
