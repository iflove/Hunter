.class public Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;
.super Ljava/lang/Object;
.source "H5NetworkSuScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NetworkSuScheduler"

.field private static volatile sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;


# instance fields
.field private entityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    .line 19
    return-void
.end method

.method private execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
    .locals 3
    .param p1, "h5NetworkSupervisor"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0

    return-void

    .line 52
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v1, "tmpEntityList":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-string v0, "H5NetworkSuScheduler"

    new-instance v2, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;-><init>(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;Ljava/util/List;Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 70
    return-void

    .line 54
    .end local v1    # "tmpEntityList":Ljava/util/List;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;
    .locals 2

    .line 22
    sget-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->sInstance:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    return-object v0
.end method


# virtual methods
.method public exec()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    const/4 v1, 0x0

    .line 40
    .local v1, "h5NetworkSupervisor":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V

    .line 44
    return-void
.end method

.method public post(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;)V
    .locals 2
    .param p1, "entity"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->entityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
