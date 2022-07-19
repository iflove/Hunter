.class public Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeExternalDownloadStatusReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalDownloadStatusReceiver"

.field private static callbackData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isDownloadTaskExists(Ljava/lang/String;)Z
    .locals 2

    .line 128
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 132
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static registerCallback(Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 2

    .line 106
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 107
    nop

    .line 108
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    .line 110
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    goto :goto_1

    .line 112
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_1
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 116
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    return-void
.end method

.method private static unRegisterCallbacks(Ljava/lang/String;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 34
    nop

    .line 35
    const-string p1, "downloadUrl"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    nop

    .line 37
    if-eqz p1, :cond_0

    .line 38
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    nop

    .line 44
    const-string v1, "downloadRequest"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    .line 46
    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string/jumbo v3, "prepare"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 49
    invoke-interface {p2, v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onPrepare(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void

    .line 55
    :cond_3
    const-string v3, "downloading"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 56
    const-string/jumbo p1, "progress"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 58
    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onProgress(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;I)V

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    return-void

    .line 63
    :cond_5
    const-string v3, "finish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive downloaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExternalDownloadStatusReceiver"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    nop

    .line 66
    const-string v2, "filePath"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 68
    invoke-interface {v2, v1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onFinish(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Ljava/lang/String;)V

    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_7
    const-string v3, "fail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 75
    nop

    .line 76
    const-string v2, "errorMsg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "errorCode"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 80
    invoke-interface {v3, v1, p2, v2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onFailed(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;ILjava/lang/String;)V

    .line 81
    goto :goto_4

    .line 82
    :cond_8
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 83
    return-void

    .line 86
    :cond_9
    const-string p1, "cancel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    .line 88
    invoke-interface {p2, v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onCancel(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 89
    goto :goto_5

    .line 93
    :cond_a
    return-void
.end method
