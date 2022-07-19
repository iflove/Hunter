.class public Lcom/alipay/mobile/quinox/utils/AppState;
.super Ljava/lang/Object;
.source "AppState.java"


# static fields
.field private static volatile sPreloadActivityEntry:Z

.field private static final sPreloadActivityFinishCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sPreloadActivityLaunch:Z

.field private static volatile sPreloadingActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityLaunch:Z

    .line 13
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadingActivity:Z

    .line 14
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityEntry:Z

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityFinishCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addPreloadActivityFinishCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/quinox/utils/AppState;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityFinishCallback:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    .line 61
    .end local p0    # "callback":Lcom/alipay/mobile/quinox/utils/Callback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isPreloadActivityEntry()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityEntry:Z

    return v0
.end method

.method public static isPreloadActivityLaunch()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityLaunch:Z

    return v0
.end method

.method public static declared-synchronized isPreloadingActivity()Z
    .locals 2

    const-class v0, Lcom/alipay/mobile/quinox/utils/AppState;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadingActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setPreloadActivityEntry(Z)V
    .locals 0
    .param p0, "entry"    # Z

    .line 55
    sput-boolean p0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityEntry:Z

    .line 56
    return-void
.end method

.method public static setPreloadActivityLaunch(Z)V
    .locals 0
    .param p0, "preloadActivityLaunch"    # Z

    .line 18
    sput-boolean p0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityLaunch:Z

    .line 19
    return-void
.end method

.method public static declared-synchronized setPreloadingActivity(Z)V
    .locals 4
    .param p0, "preloadingActivity"    # Z

    const-class v0, Lcom/alipay/mobile/quinox/utils/AppState;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadingActivity:Z

    if-eq v1, p0, :cond_1

    .line 30
    sput-boolean p0, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadingActivity:Z

    .line 31
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadActivityLaunch()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadingActivity:Z

    if-nez v1, :cond_1

    .line 32
    sget-object v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityFinishCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/utils/Callback;

    .line 33
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/AppState;->sPreloadActivityFinishCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit v0

    return-void

    .line 28
    .end local p0    # "preloadingActivity":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
