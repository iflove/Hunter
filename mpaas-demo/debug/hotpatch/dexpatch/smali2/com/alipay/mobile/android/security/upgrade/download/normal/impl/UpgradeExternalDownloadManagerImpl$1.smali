.class Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl$1;
.super Ljava/util/TimerTask;
.source "UpgradeExternalDownloadManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->addDownload(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ExternalDownloadManagerImpl"

    const-string/jumbo v2, "start-ExternalDownloadIntentService"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v2, "command"

    const-string v3, "add"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "isUsedInAppCenter"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "request"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method
