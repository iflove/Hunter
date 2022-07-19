.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;
.super Ljava/lang/Object;
.source "PowerDegradeManager.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:J

.field private static h:Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;


# instance fields
.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->b:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->c:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->d:I

    .line 23
    const-string v0, ".action.degrade.power.wifiscan"

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->e:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    .line 30
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->f:J

    .line 31
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->i:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->h:Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->h:Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->h:Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->h:Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    return-object v0
.end method

.method private static a(Z)V
    .locals 6
    .param p0, "killself"    # Z

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getMainProcessId()I

    move-result v0

    const/4 v1, 0x0

    .line 148
    .local v1, "pid":I
    move v1, v0

    if-lez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "BIZ_FRAME"

    const-string v4, "BACK_EXIT_APP"

    const-string v5, "10000000"

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    const-string v3, "killProcess now !"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v3, "applog"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 166
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .line 126
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a()Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "monitor.action.dump.sensor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    const-string v2, " Wallet process in not runnning."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 89
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    if-lez v0, :cond_4

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPowerDegrade:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 94
    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "isBackgroundRunning:false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;
    :cond_0
    const/4 v0, 0x1

    .line 100
    .local v0, "killself":Z
    :try_start_1
    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    sget v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->d:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 105
    :cond_1
    sget v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 107
    .local v3, "degrade":Landroid/content/Intent;
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .end local v3    # "degrade":Landroid/content/Intent;
    :cond_2
    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-eqz v0, :cond_3

    .line 115
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(Z)V

    throw v1

    .line 117
    :catch_0
    move-exception v1

    .line 120
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_3
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 123
    .end local v0    # "killself":Z
    :cond_4
    monitor-exit p0

    return-void

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(FLcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)V
    .locals 9
    .param p1, "batteryPercent"    # F
    .param p2, "batterySipper"    # Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 56
    if-nez p2, :cond_0

    .line 57
    return-void

    .line 61
    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    iget-wide v1, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    sget-wide v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->f:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    iget-wide v1, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    const-wide v3, 0x40e86a0000000000L    # 50000.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 64
    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    sget v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    .line 68
    :cond_1
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    sget-wide v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->g:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 70
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    sget v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->b()V

    .line 75
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 76
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 77
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    sget v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    .line 81
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    if-lez v0, :cond_4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "degradeActionFlag is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caused by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "degradeLog":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    .end local v0    # "degradeLog":Ljava/lang/String;
    :cond_4
    return-void
.end method
