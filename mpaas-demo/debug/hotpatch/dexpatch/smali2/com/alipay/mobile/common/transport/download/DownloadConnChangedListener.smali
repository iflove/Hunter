.class public Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;
.super Ljava/lang/Object;
.source "DownloadConnChangedListener.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/download/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 126
    :cond_0
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 128
    monitor-exit p0

    return-object v0

    .line 130
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    .line 131
    monitor-exit p0

    .line 132
    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;
    .locals 2

    .line 22
    sget-object v0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->a:Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->a:Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    if-eqz v1, :cond_1

    .line 27
    monitor-exit v0

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->a:Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addNetworkSensitiveTask(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)V
    .locals 4
    .param p1, "downloadRequest"    # Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 38
    if-nez p1, :cond_0

    .line 39
    return-void

    .line 43
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .restart local p1    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :catchall_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DownloadConnChangedListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[addNetworkSensitiveTask] Remove exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public notifyNetworkChangedEvent()V
    .locals 7

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    const-string v0, "DownloadConnChangedListener"

    const-string v1, "[notifyNetworkChangedEvent] Network unavailable, don\'t cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 88
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isWiFiMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    const-string v0, "DownloadConnChangedListener"

    const-string v1, "[notifyNetworkChangedEvent] Current is wi-fi network, don\'t stop task."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    return-void

    .line 95
    :cond_4
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 98
    .local v2, "size":I
    move v2, v0

    if-gtz v0, :cond_5

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    .line 98
    :cond_5
    move v0, v1

    .local v0, "i":I
    const/4 v3, 0x0

    .line 103
    :cond_6
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 104
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .local v3, "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v3, v4

    if-eqz v4, :cond_6

    .line 109
    :try_start_2
    const-string v4, "The current task can only be downloaded under wifi."

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->cancel(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "DownloadConnChangedListener"

    const-string v6, "[notifyNetworkChangedEvent] cancel exception"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v3    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_7
    const-string v0, "DownloadConnChangedListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[notifyNetworkChangedEvent] The number of cancellation tasks is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v1, "DownloadConnChangedListener"

    const-string v3, "[notifyNetworkChangedEvent] Batch cancel exception"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "size":I
    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public removeNetworkSensitiveTask(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)V
    .locals 4
    .param p1, "downloadRequest"    # Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 53
    if-nez p1, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 57
    return-void

    .line 62
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .restart local p1    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :catchall_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DownloadConnChangedListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[removeNetworkSensitiveTask] Remove exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
