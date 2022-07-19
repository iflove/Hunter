.class public Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;
.super Ljava/lang/Object;
.source "UpgradeExternalDownloadCallback.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# static fields
.field private static final NOTIFY_TAG:Ljava/lang/String; = "DOWNLOAD"

.field private static final SEND_NOTIFY_TIME:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "DOWNLOAD"

.field private static i:I


# instance fields
.field private broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private context:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private downloadPath:Ljava/lang/String;

.field private lastProgress:I

.field private mNotificationChannelId:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notifyId:I

.field private request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

.field private targetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Ljava/lang/String;)V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x698

    iput v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->lastProgress:I

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "upgrade_notification_channel"

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->mNotificationChannelId:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 60
    nop

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 65
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notificationManager error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DOWNLOAD"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    .line 72
    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getTargetFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    goto :goto_1

    .line 76
    :cond_0
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 77
    if-lez v1, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getTargetFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    .line 81
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->initNotification(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 82
    return-void
.end method

.method private cancelNotification()V
    .locals 4

    .line 309
    const-string v0, "DOWNLOAD"

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 311
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 318
    :cond_0
    return-void
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    .line 144
    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    const-string v2, "downloadRequest"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    return-object v0
.end method

.method private downloadFailedNotification()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->cancelNotification()V

    .line 211
    :cond_0
    return-void
.end method

.method private downloadFinishNotification()V
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->openplatform_exdownload_finished:I

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->openplatform_exdownload_percent_title:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 293
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 294
    const-string v3, "id"

    const-string v4, "download_process_title_txt"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 298
    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "100%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_process_bar"

    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    const-string v3, "DOWNLOAD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 304
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->cancelNotification()V

    .line 306
    :cond_0
    return-void
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 322
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 324
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 325
    :catch_0
    move-exception p1

    .line 328
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string v0, "DOWNLOAD"

    invoke-interface {p2, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    const/4 p1, -0x1

    return p1
.end method

.method private initNotification(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V
    .locals 11

    .line 214
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isShowRunningNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isShowDefaultNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->i:I

    const v1, 0x186a0

    if-le v0, v1, :cond_0

    .line 216
    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->i:I

    .line 218
    :cond_0
    sget v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->i:I

    iput v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    .line 219
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 220
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->openplatform_exdownload:I

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 224
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 225
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    const-string v3, "layout"

    const-string v4, "download_progress"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 229
    const-string v2, "id"

    const-string v3, "download_process_bar"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 231
    const-string v3, "download_process_title_txt"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 232
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 235
    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 237
    const-string v4, "about_process_icon"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 239
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    const-class v6, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v4, "command"

    const-string v6, "cancel"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    nop

    .line 245
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    .line 244
    const-string v8, "downloadUrl"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v7, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 248
    invoke-interface {v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v7

    iget v9, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    .line 247
    const/high16 v10, 0x10000000

    invoke-static {v7, v9, v3, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 251
    const-string/jumbo v7, "update_cancel_btn"

    invoke-direct {p0, v2, v7}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 255
    const-string v2, "drawable"

    const-string v3, "download_icon"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 257
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 258
    nop

    .line 259
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->mNotificationChannelId:Ljava/lang/String;

    const/4 v7, 0x2

    const-string/jumbo v9, "mpaas"

    invoke-direct {v2, v3, v9, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 260
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 261
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 263
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadIntentService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    nop

    .line 272
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    const-string/jumbo v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    const-string p1, "cancelDownloadConfirm"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 278
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    .line 277
    invoke-static {p1, v5, v0, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 282
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 284
    :cond_3
    return-void
.end method

.method private notifyProcess(I)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isShowRunningNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 173
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->lastProgress:I

    sub-int v1, p1, v1

    if-le v1, v0, :cond_1

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "status"

    const-string v2, "downloading"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->sendDownloadEvent(Landroid/content/Intent;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->updateNotificationProcess(I)V

    .line 183
    iput p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->lastProgress:I

    .line 185
    :cond_1
    return-void
.end method

.method private sendDownloadEvent(Landroid/content/Intent;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 139
    return-void
.end method

.method private updateNotificationProcess(I)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 190
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->openplatform_exdownload_percent_title:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "id"

    const-string/jumbo v3, "progress_text"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_process_bar"

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notification:Landroid/app/Notification;

    const-string v3, "DOWNLOAD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0b\u8f7d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%,notifyId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public onAddDownload()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->updateNotificationProcess(I)V

    .line 101
    return-void
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "DOWNLOAD"

    const-string/jumbo v1, "\u53d6\u6d88\u4e0b\u8f7d"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 89
    const-string/jumbo v0, "status"

    const-string v1, "cancel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->sendDownloadEvent(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->cancelNotification()V

    .line 93
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 97
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOWNLOAD"

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 163
    const-string/jumbo v0, "status"

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v0, "errorCode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string p2, "errorMsg"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->sendDownloadEvent(Landroid/content/Intent;)V

    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadFailedNotification()V

    .line 169
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4e0b\u8f7d\u5b8c\u6210, downloadpath:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",targetpath:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DOWNLOAD"

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    .line 124
    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->targetPath:Ljava/lang/String;

    .line 130
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 131
    const-string/jumbo p2, "status"

    const-string v0, "finish"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->sendDownloadEvent(Landroid/content/Intent;)V

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->downloadFinishNotification()V

    .line 135
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "DOWNLOAD"

    const-string/jumbo v1, "\u51c6\u5907\u4e0b\u8f7d"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 108
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "prepare"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->sendDownloadEvent(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->request:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->isNeedProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p2, p2, v0

    double-to-int p1, p2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadCallback;->notifyProcess(I)V

    .line 155
    :cond_0
    return-void
.end method
