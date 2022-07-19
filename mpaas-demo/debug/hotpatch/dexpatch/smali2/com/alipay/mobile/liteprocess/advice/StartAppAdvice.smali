.class public Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;
.super Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;
.source "StartAppAdvice.java"


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

.field public static hasStartedliteApp:Z


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->hasStartedliteApp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 231
    const-string v0, "REALLY_DOSTARTAPP"

    const-string v1, "LiteProcess"

    const/4 v2, 0x3

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p2, v4

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aget-object v6, p2, v5

    aput-object v6, v3, v5

    const/4 v6, 0x2

    aput-object p3, v3, v6

    .line 234
    .local v3, "new_args":[Ljava/lang/Object;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "com.alipay.mobile.appstoreapp.receiver.OpenplatformAppAdvice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    .local v0, "cls":Ljava/lang/Class;
    iget-object v7, p0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->b:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->b:Ljava/lang/Object;

    .line 240
    :cond_0
    const-string/jumbo v7, "onExecutionAfter"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v5

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v8, v6

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 242
    iget-object v8, p0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v9, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    aput-object v9, v2, v4

    aput-object p1, v2, v5

    aput-object v3, v2, v6

    invoke-virtual {v7, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v4, "callOpenPlatformAppAdvice success"

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "new_args":[Ljava/lang/Object;
    return-void

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callOpenPlatformAppAdvice "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static register()V
    .locals 4

    .line 58
    sget-object v0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "register startAppAdvice"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    sget-object v3, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 69
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 16
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    move-object/from16 v1, p2

    const-string v0, ""

    .local v0, "sourceAppId":Ljava/lang/String;
    const-string v2, ""

    .line 76
    .local v2, "targetAppId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, "startParams":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 79
    .local v4, "sceneParams":Landroid/os/Bundle;
    const/4 v5, 0x0

    if-eqz v1, :cond_18

    array-length v6, v1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_18

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "StartAppAdvice@Main onExecutionAround args = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LiteProcess"

    invoke-interface {v6, v8, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v6, 0x0

    aget-object v7, v1, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 83
    aget-object v7, v1, v6

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_0

    .line 82
    :cond_0
    move-object v7, v0

    .line 86
    .end local v0    # "sourceAppId":Ljava/lang/String;
    .local v7, "sourceAppId":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x1

    aget-object v0, v1, v9

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 87
    aget-object v0, v1, v9

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 89
    :cond_1
    const/4 v0, 0x2

    aget-object v10, v1, v0

    instance-of v10, v10, Landroid/os/Bundle;

    if-eqz v10, :cond_2

    .line 90
    aget-object v0, v1, v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 93
    :cond_2
    array-length v0, v1

    const/4 v10, 0x5

    if-lt v0, v10, :cond_3

    const/4 v0, 0x4

    aget-object v10, v1, v0

    instance-of v10, v10, Landroid/os/Bundle;

    if-eqz v10, :cond_3

    .line 94
    aget-object v0, v1, v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 101
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onStartAppEvent(Ljava/lang/String;)V

    .line 103
    const-string v0, "10000007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;->register()V

    .line 105
    invoke-static {v9}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->register(Z)V

    .line 106
    return-object v5

    .line 109
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "99999999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 111
    new-instance v0, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 114
    :cond_5
    const-string v0, "20000056"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "20000992"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_5

    .line 118
    :cond_6
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->hasCheckParam(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "StartAppAdvice targetAppId "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->NEED_LITE:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->hasPreloadProcess()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->URGENT_PRELOAD:Z

    if-eqz v0, :cond_a

    .line 123
    const-string v0, "60000155"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v6, -0x2

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    goto :goto_1

    .line 125
    :cond_7
    const-string v0, "66666666"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v6, -0x3

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    goto :goto_1

    .line 127
    :cond_8
    const-string v0, "20001003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v6, -0x4

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    goto :goto_1

    .line 129
    :cond_9
    const-string v0, "2018072560844004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v6, -0x7

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 133
    :cond_a
    :goto_1
    return-object v5

    .line 136
    :cond_b
    const/4 v10, 0x0

    .line 138
    .local v10, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 141
    goto :goto_2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "ignore":Ljava/lang/Exception;
    :goto_2
    if-nez v10, :cond_c

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "StartAppAdvice h5AppProvider is null targetAppId "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v5

    .line 148
    :cond_c
    const-string v0, "66666672"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, " startParams = "

    const-string v12, " targetAppId = "

    const-string v13, "StartAppAdvice startApp in main process sourceAppId = "

    const-string/jumbo v5, "perf_open_app_time"

    const-string/jumbo v14, "tiny_launch_cost"

    const-string v15, "is_local"

    if-eqz v0, :cond_e

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v9, "hit 66666672"

    invoke-interface {v0, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->init(Ljava/lang/String;)V

    .line 151
    const-string v0, "is_preload"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreload(Z)V

    .line 152
    const/4 v6, 0x1

    invoke-virtual {v3, v15, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setLocal(Z)V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 155
    .local v0, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "7 StartAppAdvice#onExecutionAroundInMainProcess launch_cost maybe start:"

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v14, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPrepareTime(J)V

    .line 157
    if-eqz v4, :cond_d

    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 158
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 161
    :cond_d
    const-wide/16 v14, -0x1

    invoke-virtual {v3, v5, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setOpenAppTime(J)V

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x0

    return-object v6

    .line 168
    .end local v0    # "time":J
    :cond_e
    const/4 v6, 0x0

    const-string v0, "START_APP_IN_CURRENT_PROCESS"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess.SAIL"

    const-string/jumbo v5, "startAppInCurrentProcess@Main finish and return"

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v6

    .line 173
    :cond_f
    const-string v0, "START_APP_IN_LITE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 174
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startAppInLiteStep3(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 178
    :cond_10
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v10, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->enableMultiProcess(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->NEED_LITE:Z

    if-eqz v0, :cond_13

    .line 182
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->hasStartedliteApp:Z

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    .line 185
    .local v1, "newParams":Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "appType":Ljava/lang/String;
    const-string v0, "APP_TYPE"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "tinyApp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 189
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string v6, "com.alipay.tiny.api.TinyService"

    invoke-interface {v0, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    :cond_11
    if-eqz v4, :cond_12

    .line 194
    :try_start_1
    const-string v0, "flRestoreData"

    invoke-static {}, Lcom/alipay/android/phone/fulllinktracker/api/FullLinkSdk;->getDriverApi()Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;->snapshotFLData()Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v9, "snapshotFLData error"

    invoke-interface {v6, v8, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 198
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_12
    :goto_3
    nop

    .line 200
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "StartAppAdvice startApp targetAppId "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " appType "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v1, v4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startAppAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    invoke-direct {v6, v9, v8, v0}, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->a(Ljava/lang/Object;[Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 204
    new-instance v0, Landroid/util/Pair;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 178
    .end local v1    # "newParams":Landroid/os/Bundle;
    .end local v5    # "appType":Ljava/lang/String;
    :cond_13
    move-object/from16 v6, p0

    move-object/from16 v9, p1

    .line 205
    invoke-interface {v10, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isUseAppX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->init(Ljava/lang/String;)V

    .line 207
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreload(Z)V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v3, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setLocal(Z)V

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    .local v0, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "8 StartAppAdvice#onExecutionAroundInMainProcess launch_cost maybe start:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v14, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPrepareTime(J)V

    .line 214
    if-eqz v4, :cond_14

    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 215
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    :cond_14
    const-wide/16 v14, -0x1

    invoke-virtual {v3, v5, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setOpenAppTime(J)V

    .line 218
    if-eqz v3, :cond_15

    const-string/jumbo v5, "query"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 219
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setStartupQuery(Ljava/lang/String;)V

    .line 222
    :cond_15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v5, 0x0

    return-object v5

    .line 226
    .end local v0    # "time":J
    :cond_16
    const/4 v5, 0x0

    return-object v5

    .line 115
    .end local v10    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_17
    :goto_5
    return-object v5

    .line 98
    .end local v7    # "sourceAppId":Ljava/lang/String;
    .local v0, "sourceAppId":Ljava/lang/String;
    :cond_18
    return-object v5
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;

    .line 310
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 11
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "flRestoreData"

    .line 256
    const-string v1, ""

    .local v1, "sourceAppId":Ljava/lang/String;
    const-string v2, ""

    .line 257
    .local v2, "targetAppId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, "startParams":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 260
    .local v4, "sceneParams":Landroid/os/Bundle;
    const-string v5, "LiteProcess"

    const/4 v6, 0x1

    .line 289
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 260
    if-eqz p2, :cond_3

    array-length v8, p2

    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "StartAppAdvice@Lite onExecutionAround args = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v8, 0x0

    aget-object v9, p2, v8

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 264
    aget-object v8, p2, v8

    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    .line 267
    :cond_0
    aget-object v8, p2, v6

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 268
    aget-object v6, p2, v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 270
    :cond_1
    const/4 v6, 0x2

    aget-object v8, p2, v6

    instance-of v8, v8, Landroid/os/Bundle;

    if-eqz v8, :cond_2

    .line 271
    aget-object v6, p2, v6

    move-object v3, v6

    check-cast v3, Landroid/os/Bundle;

    .line 274
    :cond_2
    array-length v6, p2

    const/4 v8, 0x5

    if-lt v6, v8, :cond_3

    const/4 v6, 0x4

    aget-object v8, p2, v6

    instance-of v8, v8, Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 275
    aget-object v6, p2, v6

    move-object v4, v6

    check-cast v4, Landroid/os/Bundle;

    .line 280
    :cond_3
    const/4 v6, 0x0

    if-eqz p2, :cond_5

    .line 281
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v8

    .line 282
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 283
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    move-object v9, v6

    .line 284
    .local v9, "micoApp":Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/alipay/mobile/framework/MicroApplicationContext;->setStartActivityContext(Landroid/content/Context;)V

    .line 287
    .end local v9    # "micoApp":Lcom/alipay/mobile/framework/MicroApplicationContext;
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isTinyProcess()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isUsingNebulaX()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 288
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->startAppInLite(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 289
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 293
    :cond_6
    if-eqz v4, :cond_7

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "restoreFLData"

    invoke-interface {v8, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/alipay/android/phone/fulllinktracker/api/FullLinkSdk;->getDriverApi()Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;

    move-result-object v8

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;->restoreFLData(Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "snapshotFLData error"

    invoke-interface {v8, v5, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 299
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_0
    nop

    .line 301
    :goto_1
    if-eqz v3, :cond_8

    const-string v0, "START_APP_IN_CURRENT_PROCESS"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->startAppInLiteStep1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 303
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 305
    :cond_8
    return-object v6
.end method

.method public bridge synthetic onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
