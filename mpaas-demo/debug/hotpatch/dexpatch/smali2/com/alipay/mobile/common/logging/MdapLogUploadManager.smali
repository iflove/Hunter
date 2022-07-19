.class public Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
.super Ljava/lang/Object;
.source "MdapLogUploadManager.java"


# static fields
.field public static a:I

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;


# instance fields
.field private d:Lcom/alipay/mobile/common/logging/http/ConfigChangeBroadCastReceiver;

.field private f:Landroid/content/Context;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/high16 v0, 0x3200000

    sput v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a:I

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$2;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mdap/upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mdap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->h:Ljava/io/File;

    .line 102
    return-void
.end method

.method public static a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
    .locals 2

    .line 82
    sget-object v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->e:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    if-eqz v0, :cond_0

    .line 85
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->e:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->e:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    .line 78
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->e:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(I)V
    .locals 0
    .param p0, "maxSize"    # I

    .line 105
    sput p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a:I

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "logCategory"    # Ljava/lang/String;

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http upload logCategory = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdapLogUploadManager"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isRealTimeLogCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MdapLogUploadManager"

    const-string/jumbo v3, "upload real time logCategory in tool!!"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 198
    .local v1, "rpcUploader":Lcom/alipay/mobile/common/logging/uploader/RpcUploader;
    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 200
    .end local v1    # "rpcUploader":Lcom/alipay/mobile/common/logging/uploader/RpcUploader;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v0, "maxLogCount"

    const-string v2, "event"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getNetworkInfoGetter()Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    move-result-object v0

    .line 202
    .local v1, "netWorkInfo":Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;->isConnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MdapLogUploadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload time is maxLogCount and network is not available!!! Do not upload category = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 207
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 211
    .end local v1    # "netWorkInfo":Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 192
    .end local p1    # "logCategory":Ljava/lang/String;
    .end local p2    # "uploadUrl":Ljava/lang/String;
    .end local p3    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 110
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "com.alipay.mobile.client.multi.CONFIG_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/alipay/mobile/common/logging/http/ConfigChangeBroadCastReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/http/ConfigChangeBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->d:Lcom/alipay/mobile/common/logging/http/ConfigChangeBroadCastReceiver;

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MdapLogUploadManager"

    const-string/jumbo v3, "registerConfigChangeBroadCastReceiver finish"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 11

    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "backupFileDir":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/mdap/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "logFileDir":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 125
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    const-string/jumbo v4, "mdap"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 126
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "upload"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    .line 131
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "MdapLogUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncLog backupFileDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 135
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->f:Landroid/content/Context;

    const-string/jumbo v5, "mdap"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 136
    move-object v1, v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :cond_1
    goto :goto_1

    .line 139
    :catchall_1
    move-exception v2

    .line 140
    .restart local v2    # "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "MdapLogUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncLog logFileDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 123
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
    :cond_2
    move-object v2, v3

    .line 144
    :goto_1
    if-nez v1, :cond_3

    .line 145
    monitor-exit p0

    return-void

    .line 148
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 149
    .local v2, "logfiles":[Ljava/io/File;
    move-object v2, v4

    if-nez v4, :cond_4

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "MdapLogUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncLog: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    array-length v4, v2

    const/4 v5, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v2, v6

    .line 155
    .local v3, "file":Ljava/io/File;
    move-object v3, v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_6

    .line 157
    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getMdapStyleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 159
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v7, "uploadFile":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 162
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v8, "backupFile":Ljava/io/File;
    invoke-static {v3, v8}, Lcom/alipay/mobile/common/logging/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 166
    .end local v8    # "backupFile":Ljava/io/File;
    :cond_5
    invoke-static {v3, v7}, Lcom/alipay/mobile/common/logging/util/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 169
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "uploadFile":Ljava/io/File;
    goto :goto_3

    .line 167
    :catchall_2
    move-exception v5

    .line 168
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string v8, "MdapLogUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", syncLog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 153
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 174
    .end local v2    # "logfiles":[Ljava/io/File;
    :cond_7
    monitor-exit p0

    return-void

    .line 172
    :catchall_3
    move-exception v2

    .line 173
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MdapLogUploadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "syncLog, move fail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 175
    .end local v2    # "t":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 119
    .end local v0    # "backupFileDir":Ljava/io/File;
    .end local v1    # "logFileDir":Ljava/io/File;
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/io/File;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->g:Ljava/io/File;

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->h:Ljava/io/File;

    return-object v0
.end method
