.class public Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;
.super Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadManager;
.source "UpgradeExternalDownloadManagerImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalDownloadManagerImpl"

.field private static downloadRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 31
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private registerCallback(Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 0

    .line 108
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 109
    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 4

    .line 40
    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalDownloadManagerImpl"

    if-eqz v0, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadRequest.getDownloadUrl()\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; downloadRequest.isAutoInstall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isAutoInstall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isAutoInstall()Z

    move-result p2

    if-nez p2, :cond_4

    .line 64
    sget-object p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadRequestList.size()=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_2
    sget-object p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->timer:Ljava/util/Timer;

    if-nez p1, :cond_3

    .line 70
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->timer:Ljava/util/Timer;

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->timer:Ljava/util/Timer;

    new-instance p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl$1;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 91
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object p2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "command"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/4 v1, 0x0

    const-string v2, "isUsedInAppCenter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 44
    :cond_5
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a\uff01"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 46
    const-string v1, "android-phone-wallet-openplatform"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const/16 v1, 0x270f

    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->openplatform_exdownloadservice_fail:I

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-interface {p2, p1, v1, v0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onFailed(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;ILjava/lang/String;)V

    .line 49
    return-void

    .line 99
    :cond_6
    :goto_1
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v2, "command"

    const-string v3, "cancel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "downloadUrl"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    :cond_0
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 0

    .line 140
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 127
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .line 131
    sget-object p1, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->downloadRequestList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->timer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 134
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/impl/UpgradeExternalDownloadManagerImpl;->timer:Ljava/util/Timer;

    .line 136
    :cond_0
    return-void
.end method
