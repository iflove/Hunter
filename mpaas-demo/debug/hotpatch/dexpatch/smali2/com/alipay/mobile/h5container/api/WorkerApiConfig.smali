.class public Lcom/alipay/mobile/h5container/api/WorkerApiConfig;
.super Ljava/lang/Object;
.source "WorkerApiConfig.java"


# static fields
.field private static sAsyncApiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableSyncJsApiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    .line 11
    sput-object v0, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultAsyncJsApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    sput-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "getSystemInfo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "remoteLog"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "httpRequest"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "request"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "reportData"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "getAuthCode"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "setTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "getTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "removeTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "trackerConfig"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string/jumbo v2, "reportData"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "configService.getConfig"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "getAuthUserInfo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;

    const-string v2, "localLog"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sAsyncApiList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSyncJsApiSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    sput-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getSystemInfo"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string/jumbo v2, "setAPDataStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getAPDataStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string/jumbo v2, "removeAPDataStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "clearAPDataStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string/jumbo v2, "setTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string/jumbo v2, "removeTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "clearTinyLocalStorage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getTinyLocalStorageInfo"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getStartupParams"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "internalAPI"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string/jumbo v2, "measureText"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getBackgroundAudioOption"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getForegroundAudioOption"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "NBComponent.sendMessage"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;

    const-string v2, "getBatteryInfo"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->sEnableSyncJsApiSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
