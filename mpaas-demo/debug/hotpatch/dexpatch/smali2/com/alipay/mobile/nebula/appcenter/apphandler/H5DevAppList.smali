.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
.super Ljava/lang/Object;
.source "H5DevAppList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DevAppList"

.field private static h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

.field private static tinyProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevAppMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tinyAppRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    .line 50
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 52
    .local v2, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v1, "appSet":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, "id":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v1    # "appSet":Ljava/util/Set;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    .line 68
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerInstallAdvice()V
    .locals 3

    .line 271
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    .line 274
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.installApp(String, String, Bundle, FragmentActivity)"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 278
    :cond_0
    return-void
.end method

.method private unRegisterInstallAdvice()V
    .locals 2

    .line 282
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->unRegisterPointCutAdvice(Lcom/alipay/mobile/aspect/Advice;)V

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5DevAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    monitor-enter p0

    .line 73
    if-nez p1, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    const-string v1, "H5DevAppList"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 112
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 117
    .local v0, "appId":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 118
    .local v2, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tinyAppRecordMap put appId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void

    .line 113
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "is not tinyApp"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    move-object v3, v2

    .line 202
    .local v3, "containBool":Ljava/lang/Boolean;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v0

    .line 207
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    :cond_0
    :try_start_1
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v2

    .line 209
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 211
    :try_start_2
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 212
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 213
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->containDevAppId(Ljava/lang/String;)Z

    move-result v0

    .line 215
    .local v0, "contain":Z
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    monitor-exit p0

    return v0

    .line 220
    .end local v0    # "contain":Z
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_1
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "H5DevAppList"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "containBool":Ljava/lang/Boolean;
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    nop

    .line 237
    :goto_0
    monitor-exit p0

    return v1

    .line 225
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "h5_read_use_dev_db"

    .line 226
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 230
    :cond_4
    if-nez p1, :cond_5

    .line 231
    monitor-exit p0

    return v1

    .line 234
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    .line 198
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevInfoNbsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 163
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 166
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 168
    :try_start_1
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 169
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 170
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getDevNbsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "H5DevAppList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    :cond_1
    nop

    .line 191
    :goto_0
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 181
    :cond_2
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 182
    monitor-exit p0

    return-object v1

    .line 184
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v1

    .line 185
    .local v2, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object v2, v0

    if-nez v0, :cond_4

    .line 186
    monitor-exit p0

    return-object v1

    .line 189
    :cond_4
    :try_start_5
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v0

    .line 160
    .end local v2    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDevAppInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "scene"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DevAppList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "online"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_2
    :goto_0
    return v1
.end method

.method public needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 7
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 127
    :cond_0
    const-string v0, "H5DevAppList"

    if-nez p1, :cond_1

    .line 128
    const-string v2, "appInfo == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_1
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 132
    .local v2, "startAppId":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 133
    .local v3, "startVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " startAppId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 141
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tinyAppRecordMap not contain appId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    .local v4, "recordVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recordVersion : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1

    .line 138
    .end local v4    # "recordVersion":Ljava/lang/String;
    :cond_6
    :goto_0
    const-string/jumbo v4, "tinyAppRecordMap isEmpty, return false"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v1

    .line 135
    :cond_7
    :goto_1
    return v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 80
    if-nez p1, :cond_0

    .line 81
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "IO"

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 102
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    :cond_1
    :try_start_1
    const-string v0, "H5DevAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " remove : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 79
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUseDevMode(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "use"    # Z

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUseDevMode appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", use: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", h5InstallAppAdvice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DevAppList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->registerInstallAdvice()V

    goto :goto_1

    .line 248
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-eqz v0, :cond_1

    .line 249
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->restoreApplicationDescription(Ljava/lang/String;)V

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->unRegisterInstallAdvice()V

    goto :goto_1

    .line 255
    :cond_2
    const-string v0, ""

    .line 256
    .local v0, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 260
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dev list is not empty still exist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v0    # "log":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 265
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4
    return-void
.end method
