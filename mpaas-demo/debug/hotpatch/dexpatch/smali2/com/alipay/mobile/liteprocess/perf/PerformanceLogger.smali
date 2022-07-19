.class public Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;,
        Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/util/Random;

.field private static C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:J

.field static f:Z

.field static g:J

.field static h:J

.field static i:J

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field private static final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/Boolean;

.field private static p:Ljava/lang/Boolean;

.field private static q:Ljava/lang/String;

.field private static r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

.field private static s:J

.field private static t:Z

.field private static u:Z

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string v0, "PerformanceLogger"

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    .line 77
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->f:Z

    .line 78
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->g:J

    .line 79
    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->h:J

    .line 85
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->UNKNOWN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 87
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    .line 88
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->t:Z

    .line 89
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->u:Z

    .line 90
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->v:Z

    .line 91
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->w:Z

    .line 92
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->x:Z

    .line 93
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->y:Z

    .line 97
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->B:Ljava/util/Random;

    .line 936
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V
    .locals 11
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "beforeRetrieveUcDataCommonParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "retrieveUcData"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    .line 414
    .local v2, "contentView":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.alipay.mobile.nebulauc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 416
    const-string v3, "getUCExtension"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v3, v0

    .line 417
    .local v3, "getExtensionMethod":Ljava/lang/reflect/Method;
    move-object v3, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 418
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 419
    .local v1, "extensions":Ljava/lang/Object;
    new-instance v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$2;

    invoke-direct {v6, p1, p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$2;-><init>(Ljava/util/Map;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 437
    .local v6, "callback":Landroid/webkit/ValueCallback;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 438
    const-string v8, "getStartupPerformanceStatistics"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Landroid/webkit/ValueCallback;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 439
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {v7, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    nop

    .end local v1    # "extensions":Ljava/lang/Object;
    .end local v3    # "getExtensionMethod":Ljava/lang/reflect/Method;
    .end local v6    # "callback":Landroid/webkit/ValueCallback;
    return-void

    .line 441
    :cond_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    .end local v2    # "contentView":Landroid/view/View;
    return-void

    .line 443
    :catchall_0
    move-exception v1

    .line 444
    .local v1, "thr":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "retrieveUcData error!"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/Map;

    .line 61
    invoke-static {p0, p1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 5
    .param p0, "subType"    # Ljava/lang/String;
    .param p1, "extParams"    # Ljava/util/Map;
    .param p2, "logLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;-><init>()V

    const/4 v1, 0x0

    .line 908
    .local v1, "builder":Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;
    move-object v1, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setSubType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 919
    if-eqz p1, :cond_0

    .line 920
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 921
    .local v2, "stringStringEntry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 922
    .end local v2    # "stringStringEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 924
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "running_process"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 926
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "log#%s, %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->build()Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object v0

    .line 929
    .local v0, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    if-lez p2, :cond_1

    .line 930
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    .line 932
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 933
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->t:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->TINY_APP:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 148
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WINDOW_APPEAR:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 151
    .local v1, "lastWindowAppear":Ljava/lang/Long;
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isUsingNebulaX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WINDOW_APPEAR:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    .line 156
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->t:Z

    .line 157
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    .line 158
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->h:J

    .line 159
    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->A:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 163
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 164
    .local v2, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "3 PerformanceLogger#initInner launch_cost maybe start:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tiny_launch_cost"

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->registerAppearAdvice()V

    .line 168
    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-class v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;

    monitor-enter v2

    .line 457
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v5, "doLogStartup"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 459
    if-eqz v5, :cond_0

    sget-wide v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 461
    const-string v0, "last start up equal, duplicate."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 463
    monitor-exit v2

    return-void

    .line 466
    :cond_0
    :try_start_1
    sget-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PREPARE:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 467
    sget-object v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WINDOW_APPEAR:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 468
    sget-object v8, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_START:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 469
    sget-object v9, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 470
    sget-object v10, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_RENDER:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 471
    sget-object v11, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_APP_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 472
    sget-object v12, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 473
    sget-object v13, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED_CLIENT:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 474
    sget-object v14, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WORKER_FRAMEWORK_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 475
    sget-object v15, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PROCESS_LAUNCH_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 476
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FOREGROUND_START_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 477
    move-object/from16 v16, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_H5_RPC_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 478
    move-object/from16 v17, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_DATALEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 479
    move-object/from16 v18, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_RENDERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 480
    move-object/from16 v19, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_TRANSFERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 481
    move-object/from16 v20, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_MAP_CREAT_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 483
    const/16 v21, 0x0

    const/16 v22, 0x1

    if-eqz v5, :cond_2a

    if-eqz v7, :cond_2a

    if-eqz v8, :cond_2a

    if-nez v9, :cond_1

    goto/16 :goto_a

    .line 492
    :cond_1
    move-object/from16 v23, v1

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    move-object/from16 v24, v15

    sget-object v15, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->TINY_APP:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    if-ne v1, v15, :cond_2

    if-nez v6, :cond_2

    .line 495
    const-string/jumbo v0, "prepareBegin time is null in tiny app!!"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "logStartup#prepareBegin time is null in tiny app!"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 498
    monitor-exit v2

    return-void

    .line 500
    :cond_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    sget-object v15, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->H5:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    if-ne v1, v15, :cond_3

    if-nez v6, :cond_3

    .line 502
    move-object v6, v5

    .line 505
    :cond_3
    if-nez v10, :cond_4

    .line 507
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v10, "page Render does not callback!"

    invoke-interface {v1, v4, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    move-object v10, v9

    .line 510
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sput-wide v25, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    .line 512
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 513
    if-eqz v1, :cond_5

    .line 515
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    const-string v14, "launch cost has domReady info, domReady:"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", pageRender:"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v4, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 518
    :cond_5
    move-object/from16 v25, v14

    move-object v1, v10

    .line 520
    :goto_0
    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 521
    if-nez v4, :cond_6

    .line 522
    move-object v4, v6

    .line 526
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 527
    if-eqz v0, :cond_7

    .line 528
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 530
    :cond_7
    sget-wide v14, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->g:J

    const-wide/16 v26, 0x0

    cmp-long v0, v14, v26

    if-eqz v0, :cond_8

    .line 531
    const-string/jumbo v0, "preload_cost"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_8
    const-string/jumbo v0, "prepare_cost"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sub-long v14, v14, v28

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v0, "load_cost"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sub-long v14, v14, v28

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v0, "appear_cost"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v0, "loadcomplete_cost"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v0, "render_cost"

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v0, "from_app_start"

    sget-wide v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    if-nez v12, :cond_9

    move-wide/from16 v6, v26

    goto :goto_1

    :cond_9
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 540
    :goto_1
    if-nez v13, :cond_a

    move-wide/from16 v13, v26

    goto :goto_2

    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 541
    :goto_2
    move-object v0, v11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v15, v3

    move-object/from16 v28, v4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 542
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide/from16 v30, v6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 543
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 544
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v34, v3

    sub-long v3, v6, v32

    .line 545
    move-wide/from16 v32, v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 p1, v0

    move-object/from16 v29, v1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 546
    const-string v6, "launch_cost"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v6, "launch_cost_client"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    if-eqz v6, :cond_b

    const-string/jumbo v7, "main"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    const-string/jumbo v7, "main"

    .line 549
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "WEBVIEW_EVENT_TYPE_LOADING_STATUS_T2"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 550
    sget-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    const-string/jumbo v7, "main"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "WEBVIEW_EVENT_TYPE_LOADING_STATUS_T2"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 551
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    sub-long v6, v6, v36

    .line 552
    const-string v8, "launch_cost_t2"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_b
    const-string v6, "loading_screen_launch_cost"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v6, "ipc_cost"

    sget-wide v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->i:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "tiny_launch_cost"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v36, v15

    const-string/jumbo v15, "openAppTime: "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v28

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v12

    const-string v12, " pageLoadedTimeStamp: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object/from16 v37, v6

    move-wide/from16 v5, v30

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pageLoadedTimeStampClient: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " domReady: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pageFinish: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " launch_cost_end: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v34

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " launch_cost: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " launch_cost_client_end: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v32

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " launch_cost_client: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " loading_screen_launch_cost: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_c

    .line 571
    const-string v0, "app_loaded_cost"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_c
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_JS_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 574
    if-eqz v0, :cond_d

    .line 575
    const-string v1, "js_launch_cost"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_d
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_e

    .line 579
    const-string/jumbo v0, "page_loaded_cost"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "app_first_page"

    const-string v1, "firstPage"

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_e
    if-eqz v25, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_f

    .line 584
    const-string/jumbo v0, "worker_framework_loaded_cost"

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_f
    if-eqz v24, :cond_10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_10

    .line 588
    const-string/jumbo v0, "ready_process_launched"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_10
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_11

    .line 592
    const-string v0, "foreground_start_time"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_11
    if-eqz v17, :cond_12

    .line 596
    const-string v0, "h5_rpc_time"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_12
    if-eqz v18, :cond_13

    .line 600
    const-string v0, "js_dataLen"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_13
    if-eqz v19, :cond_14

    .line 603
    const-string v0, "js_renderTime"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_14
    if-eqz v20, :cond_15

    .line 606
    const-string v0, "js_transferTime"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_15
    sget-wide v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->h:J

    cmp-long v3, v0, v26

    if-eqz v3, :cond_16

    .line 610
    const-string v3, "before_load_url"

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_16
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_17

    .line 616
    :try_start_3
    const-string/jumbo v0, "map_type"

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->A:Ljava/lang/String;

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string/jumbo v0, "map_load_cost"

    const-string/jumbo v1, "main"

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string/jumbo v3, "map_loaded"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string/jumbo v1, "main"

    .line 618
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string/jumbo v5, "map_data_ready"

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 617
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 618
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 617
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    goto :goto_3

    .line 619
    :catchall_0
    move-exception v0

    .line 620
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "process map data error!"

    invoke-interface {v1, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    :cond_17
    :goto_3
    const-string/jumbo v0, "main"

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 626
    if-eqz v28, :cond_18

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v26

    if-eqz v1, :cond_18

    .line 627
    const-string/jumbo v1, "pageLoaded"

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    .line 626
    :cond_18
    move-object/from16 v3, v28

    .line 630
    :goto_4
    move-object/from16 v1, p0

    if-eqz v1, :cond_21

    .line 632
    :try_start_5
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 634
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 635
    array-length v6, v4

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_1a

    aget-object v8, v4, v7

    .line 636
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 639
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 640
    aget-object v9, v8, v21

    aget-object v8, v8, v22

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 642
    :cond_1a
    const-string v4, "as9"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 645
    const-string v4, "d1"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 646
    const-string/jumbo v4, "sw.init.start"

    const-string v8, "d1"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_1b
    const-string v4, "d4"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 649
    const-string/jumbo v4, "sw.init.end"

    const-string v8, "d4"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_1c
    const-string v4, "e0"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 653
    const-string v4, "as0"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 654
    sub-long/2addr v8, v10

    add-long/2addr v8, v6

    .line 657
    const-string v4, "e3"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 658
    const-string/jumbo v4, "render.layout"

    const-string v6, "e3"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_1d
    const-string v4, "e2"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 662
    const-string/jumbo v4, "render.first.frame"

    const-string v6, "e2"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_1e
    const-string v4, "e5"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 666
    const-string v4, "e5"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v8, v4

    .line 667
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v26

    if-eqz v6, :cond_1f

    .line 668
    const-string v4, "first_screen"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_1f
    const-string/jumbo v3, "render.first.screen"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_20
    const-string/jumbo v0, "uc_data"

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 676
    goto :goto_6

    .line 674
    :catchall_1
    move-exception v0

    .line 675
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "process uc data error!"

    invoke-interface {v1, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :cond_21
    :goto_6
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_27

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_26

    .line 683
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_22

    .line 685
    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_22
    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "##"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    if-eqz v4, :cond_24

    .line 690
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 691
    if-eqz v3, :cond_24

    .line 692
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 693
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    goto :goto_8

    .line 695
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 698
    :cond_24
    goto :goto_7

    .line 699
    :cond_25
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 701
    :cond_26
    const-string v1, "detail_info"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_27
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->j:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_28

    .line 706
    :try_start_7
    const-string v0, "com.alipay.mobile.quinox.LauncherActivity"

    const-string/jumbo v1, "sLastCreateTime"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 707
    const-string v3, "launcher_create"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string/jumbo v0, "startup_query"

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v0, "process_launch"

    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string/jumbo v0, "open_app_time"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 713
    goto :goto_9

    .line 711
    :catchall_2
    move-exception v0

    .line 712
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v4, "get launcher activity create time error!"

    invoke-interface {v1, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    :cond_28
    :goto_9
    if-eqz v23, :cond_29

    .line 716
    const-string/jumbo v0, "map_creat_time"

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_29
    const-string/jumbo v0, "tiny_app_launch"

    invoke-static {v0, v12}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->d(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 720
    monitor-exit v2

    return-void

    .line 484
    :cond_2a
    :goto_a
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "log time is null when logStartup!!begin:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " appear: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pageStart:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pageFinish:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "log time is null when logStartup!!, begin=%s, appear=%spageStart=%s, pageFinish=%s, firstPageUrl=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v21

    aput-object v7, v1, v22

    const/4 v3, 0x2

    aput-object v8, v1, v3

    const/4 v3, 0x3

    aput-object v9, v1, v3

    const/4 v3, 0x4

    sget-object v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 490
    monitor-exit v2

    return-void

    .line 456
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->t:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .param p0, "process"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    .line 255
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 256
    .local v1, "sectionList":Ljava/util/concurrent/ConcurrentHashMap;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v0

    .line 258
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    return-object v1
.end method

.method static synthetic c()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->d()V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "subType"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 890
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a(Ljava/lang/String;Ljava/util/Map;I)V

    .line 891
    return-void
.end method

.method private static d()V
    .locals 4

    .line 451
    const/4 v0, 0x0

    .local v0, "ext":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 452
    move-object v0, v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "do_log_startup_error"

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .line 969
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v2, "check lite app start fail, but no startup time."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    return-void

    .line 974
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 975
    .local v0, "started":Z
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check app:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " started, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    if-nez v0, :cond_3

    .line 980
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->e()V

    .line 982
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "applog"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 985
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 986
    .local v4, "params":Ljava/util/Map;
    move-object v4, v2

    const-string v5, "appId"

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "running_process"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v5, v3

    .line 991
    .local v5, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v5, v2

    if-eqz v2, :cond_2

    .line 992
    invoke-interface {v5, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    move-object v2, v3

    .line 993
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appUniqueId"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    goto :goto_0

    .line 998
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "can not get H5AppProvider when get appUinqueId"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string v2, "BIZ_FRAME"

    const-string v3, "MICROAPP_STARTUP_FAIL"

    const-string v6, "2006"

    invoke-interface {v1, v2, v3, v6, v4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1002
    .end local v4    # "params":Ljava/util/Map;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_3
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "subType"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 894
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a(Ljava/lang/String;Ljava/util/Map;I)V

    .line 895
    return-void
.end method

.method private static declared-synchronized e()V
    .locals 13

    const-class v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;

    monitor-enter v0

    .line 1017
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v3, "dumpLogAllLines, start logcatDump"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v1, "dumpLogcatForTinyApp"

    .line 1020
    .local v1, "logName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 1021
    .local v4, "logFile":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1024
    :cond_0
    const/16 v2, 0xbb8

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->dumpLogcat(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1026
    const/4 v2, 0x0

    .line 1027
    .local v2, "count":I
    const/4 v5, 0x0

    .line 1029
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 1031
    new-instance v6, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string v7, "applog"

    const-string v8, ""

    sget-object v9, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string v10, "dumpLogcatForTinyApp start**********\n"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 1032
    .local v6, "startEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 1035
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v3, "line":Ljava/lang/String;
    move-object v3, v7

    if-eqz v7, :cond_1

    .line 1040
    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string v8, "applog"

    const-string v9, ""

    sget-object v10, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 1041
    .local v7, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1042
    nop

    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    add-int/lit8 v2, v2, 0x1

    .line 1043
    goto :goto_0

    .line 1051
    .end local v6    # "startEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    :goto_1
    goto :goto_2

    .line 1052
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1045
    :catchall_1
    move-exception v3

    .line 1046
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v8, "dumpLogAllLines"

    invoke-interface {v6, v7, v8, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1049
    .end local v3    # "t":Ljava/lang/Throwable;
    if-eqz v5, :cond_2

    .line 1051
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1058
    :cond_2
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dumpLogcatForTinyApp, end logcatDump, count="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1059
    monitor-exit v0

    return-void

    .line 1049
    :catchall_2
    move-exception v3

    if-eqz v5, :cond_3

    .line 1051
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1054
    goto :goto_3

    .line 1052
    :catchall_3
    move-exception v6

    .line 1054
    :cond_3
    :goto_3
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1016
    .end local v1    # "logName":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v4    # "logFile":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static extractCommonParams(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Ljava/util/Map;
    .locals 1
    .param p0, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 723
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->extractParamsBeforeUcData(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Ljava/util/Map;

    move-result-object v0

    .line 724
    return-object v0
.end method

.method public static extractParamsBeforeUcData(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Ljava/util/Map;
    .locals 9
    .param p0, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "true"

    .line 727
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 729
    .local v1, "ext":Ljava/util/Map;
    :try_start_0
    const-string v2, "app_id"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v2, "ch_info"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v2, "preload_from"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v2, "preload_completed"

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "0"

    const-string v5, "1"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    :try_start_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v2, "h5_webview_version"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v2, "ucinit_abandoned"

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->u:Z

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string/jumbo v2, "uc_reInit_success"

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->v:Z

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v2, "app_type"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    iget-object v3, v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v2, "is_parallel_inituc"

    sget-boolean v3, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseUCParallelInit:Z

    if-eqz v3, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v2, "is_preload"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->p:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v5

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v2, "is_local"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v5

    goto :goto_5

    :cond_5
    move-object v3, v4

    :goto_5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string/jumbo v2, "url"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string/jumbo v3, "null"

    goto :goto_6

    :cond_6
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v2, "is_preload_wait"

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->y:Z

    if-eqz v3, :cond_7

    move-object v3, v5

    goto :goto_7

    :cond_7
    move-object v3, v4

    :goto_7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-boolean v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->w:Z

    if-eqz v2, :cond_9

    .line 745
    const-string/jumbo v2, "package_preloaded"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v2, "package_on_target"

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->x:Z

    if-eqz v3, :cond_8

    move-object v3, v5

    goto :goto_8

    :cond_8
    move-object v3, v4

    :goto_8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_9
    const-string/jumbo v2, "map_used_type"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v2, "is_map_preload"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v2, "enable_nio"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->isNIOEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v5

    goto :goto_9

    :cond_a
    move-object v3, v4

    :goto_9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string/jumbo v2, "record_recent_bike"

    sget-boolean v3, Lcom/alipay/mobile/h5container/api/H5PageData;->sUsePackagePreload:Z

    if-eqz v3, :cond_b

    move-object v3, v5

    goto :goto_a

    :cond_b
    move-object v3, v4

    :goto_a
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    instance-of v2, p0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_13

    .line 755
    move-object v2, p0

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x0

    .line 756
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "appId"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "appId":Ljava/lang/String;
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "enablePolyfillWorker"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 758
    .local v6, "isPolyfillWorker":Z
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "isV8Worker"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 759
    .local v0, "isV8Worker":Z
    const-string/jumbo v7, "polyfillWorker"

    if-eqz v0, :cond_c

    const-string v8, "2"

    goto :goto_b

    :cond_c
    if-eqz v6, :cond_d

    move-object v8, v5

    goto :goto_b

    :cond_d
    move-object v8, v4

    :goto_b
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 762
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->isNebulaX()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 763
    const-string v7, "isNebulaX"

    const-string v8, "YES"

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :cond_e
    const-string v7, "cubeRender"

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCubeRenderType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string/jumbo v7, "uc_create_scenario"

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreateScenario()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string/jumbo v7, "useSnapshot"

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->isUseSnapshot()Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v4, v5

    :cond_f
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_10
    if-eqz v2, :cond_11

    .line 771
    const-string v4, "appxVersion"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_11
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "subPackages"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    const-string/jumbo v5, "useSubPackage"

    if-eqz v4, :cond_12

    .line 775
    :try_start_2
    const-string/jumbo v4, "yes"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 777
    :cond_12
    const-string/jumbo v4, "no"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    .end local v0    # "isV8Worker":Z
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "isPolyfillWorker":Z
    :cond_13
    goto :goto_c

    .line 780
    :catchall_0
    move-exception v0

    .line 781
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "extractParamsBeforeUcData"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_c
    return-object v1
.end method

.method public static getCurrentAppId()Ljava/lang/String;
    .locals 1

    .line 204
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getPerformanceData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 864
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 865
    .local v0, "data":Ljava/util/HashMap;
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x0

    .line 866
    .local v2, "openAppTime":Ljava/lang/Long;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 867
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "open_app_time"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_0
    sget-wide v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->g:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "preload_complete_cost"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    return-object v0
.end method

.method public static getStackInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1066
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    return-object v0
.end method

.method public static getTimeBySection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 1078
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1079
    .local v2, "processSection":Ljava/util/concurrent/ConcurrentHashMap;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 1082
    :cond_0
    return-object v1
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "performance logger init error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static logAMapPerf(ZJJJJ)V
    .locals 5
    .param p0, "is3d"    # Z
    .param p1, "mapStart"    # J
    .param p3, "mapLoaded"    # J
    .param p5, "dataStart"    # J
    .param p7, "dataReady"    # J

    .line 875
    const-string/jumbo v0, "main"

    const-string/jumbo v1, "map_start"

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 876
    const-string/jumbo v1, "map_loaded"

    invoke-static {v0, v1, p3, p4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 877
    const-string/jumbo v1, "map_data_start"

    invoke-static {v0, v1, p5, p6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 878
    const-string/jumbo v1, "map_data_ready"

    invoke-static {v0, v1, p7, p8}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 879
    if-eqz p0, :cond_0

    const-string v0, "3d"

    goto :goto_0

    :cond_0
    const-string v0, "2d"

    :goto_0
    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->A:Ljava/lang/String;

    .line 880
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logAMapPerf mapCost = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, p3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", dataCost  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, p7, p5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public static logH5PreloadException(Ljava/lang/String;)V
    .locals 3
    .param p0, "exception"    # Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 799
    .local v1, "ext":Ljava/util/Map;
    move-object v1, v0

    const-string v2, "exception_type"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v0, "h5_preload_exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 801
    return-void
.end method

.method public static logMainProcessDied()V
    .locals 4

    .line 844
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 847
    .local v1, "ext":Ljava/util/Map;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    iget-object v0, v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->a:Ljava/lang/String;

    const-string v2, "app_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string/jumbo v0, "tiny_app_main_process_died"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 851
    .end local v1    # "ext":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public static logPageSwitch(ILjava/lang/String;Z)V
    .locals 8
    .param p0, "loadTime"    # I
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "isMainPage"    # Z

    .line 808
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->H5:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    if-ne v0, v1, :cond_0

    .line 810
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->B:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 811
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v2, "logPageSwitch, but do not satisfy the sampling."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void

    .line 816
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 818
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 821
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 822
    .local v3, "ext":Ljava/util/Map;
    move-object v3, v1

    const-string v4, "app_id"

    sget-object v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string/jumbo v1, "main_page"

    if-eqz p2, :cond_1

    const-string v4, "1"

    goto :goto_0

    :cond_1
    const-string v4, "0"

    :goto_0
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v1, "app_type"

    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    iget-object v4, v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->a:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v1, "to_url"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v1, "url"

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    if-eqz p2, :cond_2

    .line 828
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 829
    .local v2, "openAppTime":Ljava/lang/Long;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int p0, v4

    .line 833
    .end local v2    # "openAppTime":Ljava/lang/Long;
    :cond_2
    const-string v1, "cost"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string/jumbo v1, "tiny_app_page_switch"

    invoke-static {v1, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "ext":Ljava/util/Map;
    return-void

    .line 835
    :catchall_0
    move-exception v0

    .line 836
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v3, "logPageSwitch"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public static logRenderFrameworkLoaded(I)V
    .locals 4
    .param p0, "loadTime"    # I

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 790
    .local v1, "ext":Ljava/util/Map;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->r:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    iget-object v0, v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->a:Ljava/lang/String;

    const-string v2, "app_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cost"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v0, "tiny_app_render_framework_loaded"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 794
    return-void
.end method

.method public static logStartup(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 390
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    move-object v2, v1

    .line 391
    .local v2, "begin":Ljava/lang/Long;
    move-object v2, v0

    if-eqz v0, :cond_0

    sget-wide v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 393
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v1, "last start up equal, duplicate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 398
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->extractParamsBeforeUcData(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Ljava/util/Map;

    move-result-object v0

    .line 400
    .local v0, "beforeRetrieveUcDataCommonParams":Ljava/util/Map;
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {p0, v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V

    .line 407
    return-void

    .line 401
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 405
    :catchall_0
    move-exception v1

    .line 406
    .local v1, "thr":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v4, "doLogStartup error!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public static logStopShowingLiteProcess()V
    .locals 0

    .line 861
    return-void
.end method

.method public static onPackagePrelodResult(ZZ)V
    .locals 0
    .param p0, "isPreloadCompleted"    # Z
    .param p1, "isPreloadOnTarget"    # Z

    .line 264
    sput-boolean p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->w:Z

    .line 265
    sput-boolean p1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->x:Z

    .line 266
    return-void
.end method

.method public static onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 217
    return-void
.end method

.method public static onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 221
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    return-void

    .line 227
    :cond_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    .line 228
    .local v1, "begin":Ljava/lang/Long;
    move-object v1, v0

    if-eqz v0, :cond_2

    sget-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->s:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 229
    return-void

    .line 232
    :cond_2
    sget-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string v0, "H5PageImpl.loadUrl()"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->h:J

    .line 236
    :cond_3
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 238
    .local v0, "sectionList":Ljava/util/concurrent/ConcurrentHashMap;
    const-string v2, "2018030502317859"

    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "render_setData"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    const-string/jumbo v2, "mtop.tmall.tac.gateway.execute.end"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "mtop.ju.data.get.end"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 240
    return-void

    .line 243
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 244
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "sectionList":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v1    # "begin":Ljava/lang/Long;
    :cond_5
    return-void

    .line 222
    :cond_6
    :goto_0
    return-void

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "onTinyAppProcessEvent error!"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public static recordAppStart(Ljava/lang/String;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .line 942
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    return-void

    .line 945
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 946
    .local v2, "asyncHandler":Landroid/os/Handler;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 947
    return-void

    .line 950
    :cond_1
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 952
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$3;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 963
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 965
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "record app start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public static recordAppStarted(Ljava/lang/String;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "record app started:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->C:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recordAppStarted success ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1012
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentAppId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->q:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public static registerAppearAdvice()V
    .locals 3

    .line 171
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$1;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$1;-><init>()V

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 201
    return-void
.end method

.method public static setChInfo(Ljava/lang/String;)V
    .locals 0
    .param p0, "chInfo"    # Ljava/lang/String;

    .line 317
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->b:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public static setForegroundStartTime(J)V
    .locals 3
    .param p0, "time"    # J

    .line 309
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FOREGROUND_START_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public static setH5WebviewVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "version"    # Ljava/lang/String;

    .line 269
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->d:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static setIsMapPreload(Ljava/lang/String;)V
    .locals 0
    .param p0, "isMapPreload"    # Ljava/lang/String;

    .line 339
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->l:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static setIsPreloadWait(Z)V
    .locals 0
    .param p0, "isWait"    # Z

    .line 305
    sput-boolean p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->y:Z

    .line 306
    return-void
.end method

.method public static setLocal(Z)V
    .locals 3
    .param p0, "local"    # Z

    .line 210
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLocal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->o:Ljava/lang/Boolean;

    .line 213
    return-void
.end method

.method public static setMapCreatTime(J)V
    .locals 3
    .param p0, "time"    # J

    .line 343
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_MAP_CREAT_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public static setMapTypeUsed(Ljava/lang/String;)V
    .locals 0
    .param p0, "mapTypeUsed"    # Ljava/lang/String;

    .line 335
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->k:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public static setOpenAppTime(J)V
    .locals 5
    .param p0, "time"    # J

    .line 321
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v0

    .line 324
    .local v0, "startTime":J
    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PROCESS_LAUNCH_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v0    # "startTime":J
    return-void

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const-string v3, "init ready process launch time error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public static setPreload(Z)V
    .locals 1
    .param p0, "preload"    # Z

    .line 273
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->p:Ljava/lang/Boolean;

    .line 274
    return-void
.end method

.method public static setPreloadCompleted()V
    .locals 4

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->f:Z

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 293
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->g:J

    .line 294
    return-void
.end method

.method public static setPreloadFrom(Ljava/lang/String;)V
    .locals 0
    .param p0, "preloadFrom"    # Ljava/lang/String;

    .line 313
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->c:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public static setPrepareTime(J)V
    .locals 3
    .param p0, "time"    # J

    .line 277
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PREPARE:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->i:J

    .line 279
    const-string/jumbo v0, "main"

    const-string v1, "LiteProcessServerManager.startApp()"

    invoke-static {v0, v1, p0, p1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 280
    return-void
.end method

.method public static setRpcTime(J)V
    .locals 3
    .param p0, "time"    # J

    .line 297
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_H5_RPC_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public static setStartupQuery(Ljava/lang/String;)V
    .locals 0
    .param p0, "query"    # Ljava/lang/String;

    .line 331
    sput-object p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->j:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public static setTimeFromLaunch(J)V
    .locals 0
    .param p0, "time"    # J

    .line 301
    sput-wide p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->e:J

    .line 302
    return-void
.end method

.method public static setUcInitAbandoned()V
    .locals 1

    .line 283
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->u:Z

    .line 284
    return-void
.end method

.method public static setUcReInitSuccess()V
    .locals 1

    .line 287
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->v:Z

    .line 288
    return-void
.end method

.method public static track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;)V
    .locals 2
    .param p0, "type"    # Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 354
    return-void
.end method

.method public static track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V
    .locals 3
    .param p0, "type"    # Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;
    .param p1, "timeStampOrLoadTime"    # J

    .line 357
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->PAGE_SWITCH_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo v2, "track %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->n:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method
