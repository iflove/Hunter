.class public Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;
.super Ljava/lang/Object;
.source "LiteNebulaXCompat.java"


# static fields
.field public static final NEBULAX_TAG:Ljava/lang/String; = "NebulaXInt:LiteProcess"

.field static a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Lite1"

    const-string v1, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Lite2"

    const-string v2, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Lite3"

    const-string v3, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Lite4"

    const-string v4, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Lite5"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 2
    .param p0, "process"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 81
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    if-nez v0, :cond_0

    .line 82
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity"

    .local v0, "clazzName":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0    # "clazzName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 86
    .restart local v0    # "clazzName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    return-void
.end method

.method static a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V
    .locals 4
    .param p0, "serverManager"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 117
    const-string v0, "NebulaXInt:LiteProcess"

    invoke-static {}, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->g()Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    move-result-object v1

    const-string v2, "NebulaXServer"

    invoke-static {v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 121
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.alipay.mobile.nebulax.integration.mpaas.ipc.server.IpcServer"

    const-string v3, "getInstance"

    invoke-static {v2, v3, v1, v1, v1}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "object":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->registerProcessLifeCycleCallback(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v2    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v2

    .line 128
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "registerBiz IpcServer.getInstance() error"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string v2, "NebulaMain registerServerBiz from LiteProcess"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "com.alipay.mobile.nebulax.integration.mpaas.main.NebulaMain"

    const-string/jumbo v3, "registerServerBiz"

    invoke-static {v2, v3, v1, v1, v1}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    return-void

    .line 138
    :catchall_1
    move-exception v1

    .line 139
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NebulaMain getInstance error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static getFromBaseActivity()Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerHandler()Landroid/os/Handler;
    .locals 1

    .line 101
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static handleStartApp(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 11
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "lpid"    # I

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 149
    .local v2, "params":Landroid/os/Bundle;
    move-object v2, v0

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v6, "is_preload"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->getFromBaseActivity()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FROM_BASE_ACTIVITY"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-string/jumbo v0, "perf_prepare_time"

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-string/jumbo v0, "perf_foreground_start_time"

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 154
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 153
    const-string/jumbo v0, "time_from_launch"

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    if-nez p1, :cond_1

    .line 157
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->init(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    .line 160
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 161
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "appType":Ljava/lang/String;
    iput-object v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    .line 163
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    .line 164
    iput-object p0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 165
    iput-boolean v4, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->isNebulaX:Z

    .line 166
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    const-string v3, "cold"

    iput-object v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 169
    :cond_2
    iget v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    const-string v4, "LITE_PROCESS_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    const-string v4, "PRELOAD_FROM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "APP_TYPE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$1;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$1;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v3

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onTinyAppStarted(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->cancelPreloadTaskIfExist()V

    .line 184
    .end local v0    # "appType":Ljava/lang/String;
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;)V

    .line 185
    return-object v2
.end method

.method public static initInLite(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startParams"    # Landroid/os/Bundle;

    .line 219
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->b:Z

    if-eqz v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->b:Z

    .line 224
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->init(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 226
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 228
    if-nez p2, :cond_1

    .line 229
    return-void

    .line 231
    :cond_1
    const-string v1, "LITE_PROCESS_PARAMS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 232
    .local v3, "params":Landroid/os/Bundle;
    move-object v3, v1

    if-nez v1, :cond_2

    .line 233
    return-void

    .line 235
    :cond_2
    const-string v1, "UID"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/Util;->b(Ljava/lang/String;)V

    .line 236
    const-string v1, "FROM_BASE_ACTIVITY"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v2, "fromBaseActivity":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    sput-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    .line 240
    :cond_3
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 241
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->hasStartApp:Z

    .line 242
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$2;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method public static isNebulaXActivity(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onAppRestart(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "startParams"    # Landroid/os/Bundle;

    .line 251
    const-string v0, "LITE_PROCESS_PARAMS"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/common/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    move-object v2, v1

    .line 252
    .local v2, "params":Landroid/os/Bundle;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    const-string v0, "FROM_BASE_ACTIVITY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v1, "fromBaseActivity":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    .line 259
    :cond_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 260
    return-void
.end method

.method public static prepareProcess()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v1, :cond_0

    .line 197
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcess(Z)V

    .line 199
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static recordAppStart(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 263
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    const-string v0, "chInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    const-string v2, "is_local"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setLocal(Z)V

    .line 268
    const-string/jumbo v1, "perf_open_app_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setOpenAppTime(J)V

    .line 269
    const-string/jumbo v1, "perf_rpc_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setRpcTime(J)V

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 273
    const-string/jumbo v0, "qrCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "ch_scan"

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    const-string v0, "customParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chInfo=app_desktop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "app_desktop"

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    const-string v0, "ap_framework_sceneId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sceneId_"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    .line 283
    :cond_3
    :goto_0
    const-string v0, "LITE_PROCESS_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    .local v1, "params":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 285
    const-string v0, "is_preload"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreload(Z)V

    .line 286
    const-string/jumbo v0, "perf_prepare_time"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPrepareTime(J)V

    .line 287
    const-string v0, "PRELOAD_FROM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreloadFrom(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "perf_foreground_start_time"

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setForegroundStartTime(J)V

    .line 289
    const-string/jumbo v0, "time_from_launch"

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setTimeFromLaunch(J)V

    .line 290
    const-string/jumbo v0, "perf_preload_wait"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setIsPreloadWait(Z)V

    .line 292
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->recordAppStart(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static registerBiz()V
    .locals 3

    .line 106
    :try_start_0
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.ipc.client.ClientMsgReceiver"

    const-string/jumbo v1, "registerClientHandler"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "NebulaXInt:LiteProcess"

    const-string/jumbo v2, "registerBiz ClientMsgReceiver.registerClientHandler() error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static removeFromRecentTasksList(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 1
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->a(Ljava/util/Set;)Z

    .line 94
    return-void
.end method

.method public static declared-synchronized startAppInLite(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "sourceAppId"    # Ljava/lang/String;
    .param p1, "targetAppId"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "sceneParams"    # Landroid/os/Bundle;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 298
    .local v3, "msg":Landroid/os/Message;
    move-object v3, v1

    const/16 v4, 0x15

    iput v4, v1, Landroid/os/Message;->what:I

    .line 299
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v4, v2

    .line 300
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v4, v1

    const-string v5, "START_APP_IN_CURRENT_PROCESS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 301
    const-string v1, "START_APP_IN_LITE"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 302
    const-string v1, "SOURCEAPPID_IN_LITE"

    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "TARGETAPPID_IN_LITE"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/fulllinktracker/api/FullLinkSdk;->getDriverApi()Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;->snapshotFLData()Landroid/os/Parcelable;

    move-result-object v1

    .line 308
    .local v2, "restoreData":Landroid/os/Parcelable;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "FL_RESTORE_DATA"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .end local v2    # "restoreData":Landroid/os/Parcelable;
    :cond_0
    goto :goto_0

    .line 311
    :catchall_0
    move-exception v1

    .line 312
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "LiteNebulaXCompat"

    invoke-interface {v2, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    const-string v1, "FROM_BASE_ACTIVITY_IN_LITE"

    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 320
    const-string v1, "LiteProcess"

    invoke-static {v1, v3}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess.SAIL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAppInLite@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " finish "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    monitor-exit v0

    return-void

    .line 296
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local p0    # "sourceAppId":Ljava/lang/String;
    .end local p1    # "targetAppId":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "sceneParams":Landroid/os/Bundle;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopLiteProcessInServer(I)V
    .locals 1
    .param p0, "lpid"    # I

    .line 144
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(I)V

    .line 145
    return-void
.end method

.method public static takeReadyProcess(Z)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 4
    .param p0, "startService"    # Z

    .line 204
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const/4 v2, 0x0

    move-object v3, v2

    .line 206
    .local v3, "process":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcess(Z)V

    .line 209
    :cond_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 210
    .end local v3    # "process":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v1, "process":Lcom/alipay/mobile/liteprocess/LiteProcess;
    sput-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 211
    monitor-exit v0

    return-object v1

    .line 212
    .end local v1    # "process":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
