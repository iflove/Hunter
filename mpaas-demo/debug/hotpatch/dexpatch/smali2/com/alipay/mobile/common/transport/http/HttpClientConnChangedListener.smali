.class public Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;
.super Ljava/lang/Object;
.source "HttpClientConnChangedListener.java"


# static fields
.field private static b:Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 41
    monitor-exit p0

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a:Ljava/util/List;

    .line 44
    monitor-exit p0

    .line 45
    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;
    .locals 2

    .line 23
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->b:Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    if-eqz v0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->b:Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    if-eqz v1, :cond_1

    .line 28
    monitor-exit v0

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->b:Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addClientConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 3
    .param p1, "clientConnectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[addClientConnectionManager] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpClientConnChangedListener"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public notifyNetworkChangedEvent()V
    .locals 8

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    .local v1, "clientConnectionManagers":Ljava/util/List;
    move-object v1, v0

    const-string v2, "HttpClientConnChangedListener"

    if-nez v0, :cond_0

    .line 67
    const-string v0, "[notifyNetworkChangedEvent] clientConnectionManagers maybe null."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 72
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/conn/ClientConnectionManager;

    .line 74
    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "i":I
    :cond_1
    const-string v3, "[notifyNetworkChangedEvent] Idle connection is closed."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "size":I
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[notifyNetworkChangedEvent] Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public removeClientConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 3
    .param p1, "clientConnectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeClientConnectionManager] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpClientConnChangedListener"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
