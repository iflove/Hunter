.class Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;
.super Ljava/lang/Object;
.source "DynamicUcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicUcHelper"

.field private static volatile isDownloading:Z

.field private static sHasInitPresetUcCore:Z

.field private static sHasPresetUcCore:Z

.field private static sUnzipLocalUpdatePath:Ljava/lang/String;

.field private static sUnzipLocalUpdateVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z

    .line 26
    const-string v1, ""

    sput-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    .line 45
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasInitPresetUcCore:Z

    .line 46
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasPresetUcCore:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 22
    sput-boolean p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z

    return p0
.end method

.method public static canInit()Z
    .locals 4

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->hasPresetUcCore()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 31
    return v1

    .line 33
    :cond_0
    const-string v0, "DynamicUcHelper"

    const-string v2, "do not use default uc so."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 35
    const-string v1, "uc so is downloading, can not init."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return v3

    .line 38
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->hasDownloadUcCore()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    return v1

    .line 41
    :cond_2
    const-string v1, "can not use uc, plz download uc so."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v3
.end method

.method public static declared-synchronized downloadUcCore(Landroid/os/Bundle;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 10
    .param p0, "param"    # Landroid/os/Bundle;
    .param p1, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    const-class v0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "DynamicUcHelper"

    const-string v2, "uc so is downloading,plz do not download repeatedly."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    .line 82
    :cond_0
    :try_start_1
    const-string v1, "coreVersion"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "coreVersion":Ljava/lang/String;
    const-string v2, "classifier"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "classifier":Ljava/lang/String;
    const-string v3, "url"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "downloadUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z

    .line 90
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    const-string v5, "plugins_lib"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 91
    .local v4, "ucmParentDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 94
    .local v6, "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    new-instance v7, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v7, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    invoke-virtual {v7, v5}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 96
    new-instance v8, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v1, p1, v9}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$1;)V

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 97
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    .line 86
    .end local v4    # "ucmParentDir":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    .end local v7    # "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :cond_2
    :goto_0
    :try_start_2
    const-string v4, "DynamicUcHelper"

    const-string v5, "download uc error, param is empty."

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    .line 77
    .end local v1    # "coreVersion":Ljava/lang/String;
    .end local v2    # "classifier":Ljava/lang/String;
    .end local v3    # "downloadUrl":Ljava/lang/String;
    .end local p0    # "param":Landroid/os/Bundle;
    .end local p1    # "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasDownloadUcCore()Z
    .locals 3

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_ucsdkLocalUpdatePath"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 67
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const-string v1, "path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 68
    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use dynamic uc so.\npath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nversion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicUcHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static declared-synchronized hasPresetUcCore()Z
    .locals 5

    const-class v0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasInitPresetUcCore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 51
    const/4 v1, 0x1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-string v2, "DynamicUcHelper"

    const-string v3, "has preset uc so."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasPresetUcCore:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_0
    :try_start_2
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasInitPresetUcCore:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DynamicUcHelper"

    const-string v4, "hasPresetUcCore error. "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasInitPresetUcCore:Z

    .line 59
    :goto_0
    goto :goto_2

    .line 58
    :goto_1
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasInitPresetUcCore:Z

    throw v2

    .line 61
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->sHasPresetUcCore:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return v1

    .line 48
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
