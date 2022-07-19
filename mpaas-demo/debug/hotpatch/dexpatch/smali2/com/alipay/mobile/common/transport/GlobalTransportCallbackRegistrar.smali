.class public Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;
.super Ljava/lang/Object;
.source "GlobalTransportCallbackRegistrar.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;
    .locals 2

    .line 23
    sget-object v0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    if-eqz v0, :cond_0

    .line 24
    return-object v0

    .line 27
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    if-eqz v1, :cond_1

    .line 29
    monitor-exit v0

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    .line 32
    monitor-exit v0

    .line 34
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 4
    .param p1, "transportCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 42
    const-string v0, "GlobalTransportCallbackRegistrar"

    if-nez p1, :cond_0

    .line 43
    const-string v1, "[addTransportCallback] transportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getCallbackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[addTransportCallback] transportCallback class name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[addTransportCallback] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method getCallbackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 80
    monitor-exit p0

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->b:Ljava/util/List;

    .line 83
    monitor-exit p0

    .line 84
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method refCallbackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->b:Ljava/util/List;

    return-object v0
.end method

.method public removeTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 4
    .param p1, "transportCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 60
    const-string v0, "GlobalTransportCallbackRegistrar"

    if-nez p1, :cond_0

    .line 61
    const-string v1, "[removeTransportCallback] transportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getCallbackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeTransportCallback] transportCallback class name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[removeTransportCallback] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
