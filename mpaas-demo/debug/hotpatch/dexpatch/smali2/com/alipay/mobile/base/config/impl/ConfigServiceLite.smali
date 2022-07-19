.class public Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;
.super Lcom/alipay/mobile/base/config/ConfigService;
.source "ConfigServiceLite.java"


# static fields
.field private static final RESERVE_CONFIG_KEY_USERID:Ljava/lang/String; = "reserveConfigKeyUserId"

.field private static sIpcConfigCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIpcConfigCacheExecuted:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChangedConfigs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/ContextWrapper;

.field private mFirstForegroundTime:J

.field private mLoadLocalSp:Z

.field private mLoginUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCacheExecuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/ConfigService;-><init>()V

    .line 33
    const-string v0, "ConfigServiceLite"

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->TAG:Ljava/lang/String;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mFirstForegroundTime:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoadLocalSp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Landroid/content/ContextWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContext:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoadLocalSp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Lcom/alipay/mobile/base/config/impl/ConfigDataManager;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;
    .param p1, "x1"    # Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigDataManager()Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigFromSp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private checkAndInitConfigDataManager(Z)V
    .locals 7
    .param p1, "needCheckConfig"    # Z

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 62
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    new-instance v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$1;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Z)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "checkAndInitConfigDataManager"

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 100
    return-void
.end method

.method private doAbTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 149
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$3;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private getConfigDataManager()Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 5

    .line 174
    iget-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mFirstForegroundTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoadLocalSp:Z

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mFirstForegroundTime:J

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->checkAndInitConfigDataManager(Z)V

    goto :goto_0

    .line 177
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mFirstForegroundTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mFirstForegroundTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoadLocalSp:Z

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->unload()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    return-object v0
.end method

.method private getConfigFromSp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoginUserId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 205
    .local v1, "stringOnlyUser":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    return-object v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 212
    .local v4, "configs":Ljava/util/HashMap;
    move-object v4, v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 213
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 215
    .end local v4    # "configs":Ljava/util/HashMap;
    :cond_1
    goto :goto_0

    .line 216
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 219
    :cond_3
    move-object v0, v2

    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v3, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v0, "strInCommon":Ljava/lang/String;
    return-object v2
.end method

.method public static getIpcConfigCache(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCacheExecuted:Z

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCacheExecuted:Z

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".configprovider/config"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "load_cached_liteprocess_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    .line 108
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    .local v1, "cursor":Landroid/database/Cursor;
    move-object v1, v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "ret":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$2;

    invoke-direct {v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$2;-><init>()V

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCache:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_1
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigService"

    const-string v3, "getIpcConfigCache error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    .locals 1
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public getAbtestInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigDataManager()Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigIpc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigFromSp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "configLoadCallBack"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method

.method public getConfigForAB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;

    .line 140
    if-eqz p2, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->doAbTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigIpc(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 187
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->sIpcConfigCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContext:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContentUri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 191
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "ret":Ljava/lang/Object;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 195
    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 199
    .end local v0    # "ret":Ljava/lang/Object;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigServiceLite"

    const-string v3, "getConfig error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getConfigSyncReporter()Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;
    .locals 1

    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseTime()J
    .locals 2

    .line 359
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRegistered(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)Z
    .locals 1
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public loadConfig()V
    .locals 0

    .line 226
    return-void
.end method

.method public loadConfigImmediately(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContext:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".configprovider/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContentUri:Landroid/net/Uri;

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->checkAndInitConfigDataManager(Z)V

    .line 56
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 385
    return-void
.end method

.method public preloadKeys(Ljava/util/List;)V
    .locals 0
    .param p1, "keys"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 340
    return-void
.end method

.method public refreshAfterLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 235
    return-void
.end method

.method public registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 0
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 325
    return-void
.end method

.method public removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V
    .locals 0
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 370
    return-void
.end method

.method public saveConfig(Lcom/alipay/mobile/base/config/model/PLData;)Ljava/lang/String;
    .locals 1
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;

    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveConfig(Lcom/alipay/mobile/base/config/model/PLData;ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;
    .param p2, "persist"    # Z
    .param p3, "onlyUser"    # Z

    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveConfigs(Ljava/util/Map;)V
    .locals 6
    .param p1, "configs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mLoadLocalSp:Z

    if-nez v1, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigServiceLite"

    const-string/jumbo v3, "receive config change broadcast"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "data_overflow"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "data_overflow"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v2

    const/4 v1, 0x0

    .line 245
    .local v3, "dataOverflow":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-eqz v1, :cond_2

    .line 247
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->unload()V

    .line 248
    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 249
    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    return-void

    .line 290
    .end local v3    # "dataOverflow":Z
    :cond_2
    return-void

    .line 252
    .restart local v3    # "dataOverflow":Z
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-nez v1, :cond_4

    .line 253
    return-void

    .line 255
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "ConfigServiceLite"

    const-string/jumbo v5, "receive config change broadcast, save changed configs"

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "changed_configs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v0

    .line 257
    .local v4, "configData":Ljava/lang/String;
    move-object v4, v1

    if-eqz v1, :cond_7

    .line 258
    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$4;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)V

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 260
    .local v1, "changedConfigs":Ljava/util/HashMap;
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    if-nez v2, :cond_5

    .line 261
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    .line 263
    :cond_5
    if-eqz v1, :cond_6

    .line 264
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 265
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 266
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "configs":Ljava/util/Map;
    :try_start_2
    throw v5

    .line 268
    .end local v1    # "changedConfigs":Ljava/util/HashMap;
    .restart local p1    # "configs":Ljava/util/Map;
    :cond_6
    return-void

    .line 269
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    if-nez v1, :cond_8

    .line 270
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    .line 272
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 273
    .local v2, "changedConfigs":Ljava/util/HashMap;
    move-object v2, v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 275
    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 276
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "configs":Ljava/util/Map;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 279
    .end local v2    # "changedConfigs":Ljava/util/HashMap;
    .end local v3    # "dataOverflow":Z
    .end local v4    # "configData":Ljava/lang/String;
    .restart local p1    # "configs":Ljava/util/Map;
    :catchall_2
    move-exception v1

    .line 280
    .local v1, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ConfigServiceLite"

    const-string v4, "handle config change error!"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    :try_start_5
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-eqz v2, :cond_9

    .line 283
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->unload()V

    .line 284
    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 285
    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mChangedConfigs:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 289
    :cond_9
    return-void

    .line 287
    :catchall_3
    move-exception v0

    .line 291
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public setConfigSyncReporter(Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;)V
    .locals 0
    .param p1, "reporter"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    .line 380
    return-void
.end method

.method public setContext(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContext:Landroid/content/ContextWrapper;

    .line 127
    return-void
.end method

.method public unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 0
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 330
    return-void
.end method
