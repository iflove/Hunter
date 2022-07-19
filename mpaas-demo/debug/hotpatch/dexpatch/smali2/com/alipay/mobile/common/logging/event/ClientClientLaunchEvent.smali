.class public Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;
.super Ljava/lang/Object;
.source "ClientClientLaunchEvent.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/event/ClientEvent;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->a:Z

    .line 32
    const-string v0, "last_advanced_sync_time"

    sput-object v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 73
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->e()Z

    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$1;-><init>(Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;)V

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->f()Z

    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$2;-><init>(Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;)V

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_2
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ClientClientLaunchEvent"

    const-string v2, "checkUpload ex"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/Object;

    .line 37
    sget-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->a:Z

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->a:Z

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    .line 42
    .local v1, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->b:J

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyClientEvent: ClientEvent_ClientLaunch, update clientLaunchTimestamp to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v4, "ClientClientLaunchEvent"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v4, "refreshSession"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v2

    iget-wide v2, v2, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientLaunchTimestamp"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    const-string v3, "boot"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->queryStrategy(Ljava/lang/String;Z)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->clientLaunch()V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v0

    const-string v2, "ClientEvent_ClientLaunch"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->b()V

    .line 67
    return-void
.end method
