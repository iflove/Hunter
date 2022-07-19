.class public Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;
.super Ljava/lang/Object;
.source "TrafficPowerSipper.java"


# static fields
.field private static final a:[I

.field private static b:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

.field private static final c:J


# instance fields
.field private d:Landroid/content/Context;

.field private e:J

.field private f:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->a:[I

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->c:J

    return-void

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->f:Ljava/text/SimpleDateFormat;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private static a(I)J
    .locals 9
    .param p0, "pid"    # I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "statFile":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 110
    .local v1, "statsData":[J
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->a:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 112
    const/4 v2, 0x2

    aget-wide v5, v1, v2

    const/4 v2, 0x3

    aget-wide v7, v1, v2

    add-long/2addr v5, v7

    move-wide v7, v3

    .line 114
    .local v7, "time":J
    move-wide v7, v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    return-wide v7

    :cond_0
    return-wide v3

    .line 116
    .end local v7    # "time":J
    :cond_1
    return-wide v3
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    if-nez v0, :cond_1

    .line 97
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 609
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    .local v1, "key":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 626
    :cond_2
    return-void

    .line 610
    :cond_3
    :goto_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 632
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Ljava/lang/String;)Z

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v1

    const-string v2, "TrafficPowerSipper"

    if-eqz v1, :cond_0

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "monitor.action.MONITOR_POWER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    goto :goto_0

    .line 639
    :catchall_0
    move-exception v3

    .line 642
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 644
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, " Wallet process in not runnning."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 647
    :goto_1
    new-instance v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;-><init>(Landroid/content/Context;)V

    .line 648
    .local v1, "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    move-object v1, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h()Z

    move-result v3

    if-nez v3, :cond_1

    .line 649
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "powerInfo refresh fail"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 24

    .line 122
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->e:J

    .line 128
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 131
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 132
    .local v2, "myUid":I
    const-wide/16 v3, 0x0

    .line 133
    .local v3, "cpuTime":J
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ActivityManager;

    .line 135
    .local v5, "am":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 136
    .local v6, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v6, v7

    if-eqz v7, :cond_1

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v2, :cond_1

    .line 137
    long-to-double v7, v3

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->a(I)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v9, v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    double-to-long v3, v7

    .line 139
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "TrafficPowerSipper"

    const-string v8, "collectCpuTime"

    invoke-interface {v6, v7, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 146
    .local v6, "now":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v8, "snapshotCpuTime"

    const-wide/16 v9, -0x1

    invoke-virtual {v0, v8, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v11

    .line 147
    .local v11, "snapshotCpuTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v13, "snapshotElapseTime"

    invoke-virtual {v0, v13, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v9

    .line 150
    .local v9, "snapshotElapseTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 151
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v13, v6, v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 154
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-ltz v0, :cond_5

    cmp-long v0, v9, v13

    if-gez v0, :cond_3

    move/from16 v21, v2

    move-wide/from16 v22, v3

    goto :goto_3

    .line 159
    :cond_3
    sub-long v15, v3, v11

    .line 160
    .local v15, "deltaCpuTime":J
    sub-long v17, v6, v9

    .line 161
    .local v17, "deltaElapseTime":J
    cmp-long v0, v15, v13

    if-ltz v0, :cond_4

    cmp-long v0, v17, v13

    if-ltz v0, :cond_4

    .line 162
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v8, "totalCpuTime"

    invoke-virtual {v0, v8, v13, v14}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v19

    .line 163
    .local v19, "totalCpuTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v1, "totalElapseTime"

    invoke-virtual {v0, v1, v13, v14}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v13

    .line 164
    .local v13, "totalElapseTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    move/from16 v21, v2

    move-wide/from16 v22, v3

    .end local v2    # "myUid":I
    .end local v3    # "cpuTime":J
    .local v21, "myUid":I
    .local v22, "cpuTime":J
    add-long v2, v19, v15

    invoke-virtual {v0, v8, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 165
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    add-long v2, v13, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    goto :goto_2

    .line 161
    .end local v13    # "totalElapseTime":J
    .end local v19    # "totalCpuTime":J
    .end local v21    # "myUid":I
    .end local v22    # "cpuTime":J
    .restart local v2    # "myUid":I
    .restart local v3    # "cpuTime":J
    :cond_4
    move/from16 v21, v2

    move-wide/from16 v22, v3

    .line 167
    .end local v2    # "myUid":I
    .end local v3    # "cpuTime":J
    .restart local v21    # "myUid":I
    .restart local v22    # "cpuTime":J
    :goto_2
    return-void

    .line 154
    .end local v15    # "deltaCpuTime":J
    .end local v17    # "deltaElapseTime":J
    .end local v21    # "myUid":I
    .end local v22    # "cpuTime":J
    .restart local v2    # "myUid":I
    .restart local v3    # "cpuTime":J
    :cond_5
    move/from16 v21, v2

    move-wide/from16 v22, v3

    .line 155
    .end local v2    # "myUid":I
    .end local v3    # "cpuTime":J
    .restart local v21    # "myUid":I
    .restart local v22    # "cpuTime":J
    :goto_3
    return-void
.end method

.method private static c()F
    .locals 9

    .line 172
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v1, "totalCpuTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v4

    .line 173
    .local v4, "totalCpuTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v6, "totalElapseTime"

    invoke-virtual {v0, v6, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v7

    .line 174
    .local v7, "totalElapseTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "cpuBatteryLevel":F
    cmp-long v1, v7, v2

    if-lez v1, :cond_0

    .line 180
    const v1, 0x3f23d70a    # 0.64f

    long-to-float v2, v4

    const/4 v3, 0x0

    add-float/2addr v2, v3

    mul-float v2, v2, v1

    long-to-float v1, v7

    div-float/2addr v2, v1

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v2, v1

    .line 181
    move v0, v2

    cmpg-float v1, v2, v3

    if-gez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 186
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "analysisCpuBatteryLevel,totalCpuTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",totalElapseTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",cpuBatteryLevel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrafficPowerSipper"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 112

    move-object/from16 v1, p0

    const-string v2, "deltaElapsed"

    const-string v3, "deltaPower"

    const-string/jumbo v4, "prevTimespan"

    const-string/jumbo v5, "prevPower"

    const-string v6, "currTimespan"

    const-string v7, "deviceReboot"

    const-string v8, "batteryDesc"

    const-string v9, "analysisTraficPower.normal"

    const-string v10, "TrafficPowerReport"

    const-string v11, "TrafficPowerSipper"

    .line 195
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    invoke-interface {v12, v11, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string v12, "lastTraficPowerDump"

    const-wide/16 v13, 0x0

    invoke-virtual {v0, v12, v13, v14}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v15

    .line 202
    .local v15, "lastTraficPowerDumpTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v19, v13

    .line 203
    .local v19, "curentTime":J
    move-wide/from16 v21, v17

    .end local v19    # "curentTime":J
    .local v21, "curentTime":J
    sub-long v17, v17, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    .line 205
    .local v19, "dumpInterval":J
    move-wide/from16 v23, v17

    .end local v19    # "dumpInterval":J
    .local v23, "dumpInterval":J
    sget-wide v19, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->c:J

    cmp-long v0, v17, v19

    if-gez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "TrafficPowerReport, return by interval"

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v13, "TrafficPowerReport, start"

    invoke-interface {v0, v11, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    move-wide/from16 v13, v21

    .end local v21    # "curentTime":J
    .local v13, "curentTime":J
    invoke-virtual {v0, v12, v13, v14}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 213
    const-wide/16 v19, 0x0

    .local v19, "startTime":J
    const-string v12, ""

    .line 214
    .local v12, "startTimeS":Ljava/lang/String;
    const-wide/16 v21, 0x0

    .local v21, "endTime":J
    const-string v25, ""

    .line 216
    .local v25, "endTimeS":Ljava/lang/String;
    const-wide/16 v26, 0x3

    .line 217
    .local v26, "trafficInterval":J
    const-wide/16 v28, 0x0

    .line 218
    .local v28, "wifiUploadSize":J
    const-wide/16 v30, 0x0

    .line 219
    .local v30, "wifiDownloadSize":J
    const-wide/16 v32, 0x0

    .line 220
    .local v32, "mobileUploadSize":J
    const-wide/16 v34, 0x0

    .line 221
    .local v34, "mobileDownloadSize":J
    const-wide/16 v36, 0x0

    .line 222
    .local v36, "totalUploadSize":J
    const-wide/16 v38, 0x0

    .line 224
    .local v38, "totalDownloadSize":J
    const/16 v40, 0x0

    .line 225
    .local v40, "trafficReport":Z
    const/16 v41, 0x0

    .line 226
    .local v41, "trafficReportDesc":Ljava/lang/String;
    const/16 v42, 0x0

    .line 227
    .local v42, "trafficOverflow":Z
    const/16 v43, 0x0

    .line 228
    .local v43, "trafficOverflowDesc":Ljava/lang/String;
    const/16 v44, 0x0

    .line 229
    .local v44, "trafficDegrade":Z
    const/16 v45, 0x0

    .line 231
    .local v45, "trafficDegradeDesc":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->c()F

    move-result v46

    .line 232
    .local v46, "cpuBatteryLevel":F
    const/16 v47, -0x1

    .line 233
    .local v47, "consumeBatteryIndex":I
    const/high16 v48, -0x40800000    # -1.0f

    .line 234
    .local v48, "consumeBatteryLevel":F
    const/high16 v49, -0x40800000    # -1.0f

    .line 235
    .local v49, "consumeBatteryLevelReal":F
    const/16 v50, 0x0

    .line 237
    .local v50, "batteryDescript":Ljava/lang/String;
    const/16 v51, 0x0

    .line 238
    .local v51, "currHightestDrainName":Ljava/lang/String;
    const-wide/16 v52, -0x1

    const-wide/16 v17, 0x0

    .local v52, "currHightestDrainPower":J
    move-wide/from16 v54, v17

    .line 239
    .local v54, "currHightestDrainTimespan":J
    const-string v0, ""

    move-object/from16 v56, v12

    .end local v12    # "startTimeS":Ljava/lang/String;
    .local v0, "currHightestDrainTimespanS":Ljava/lang/String;
    .local v56, "startTimeS":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v57, v12

    .local v57, "prevHightestDrainName":Ljava/lang/String;
    move-wide/from16 v58, v17

    .local v58, "currHightestDrainUptime":J
    move-wide/from16 v60, v17

    .local v60, "currHightestDrainElapsed":J
    move-object/from16 v62, v0

    .line 244
    .end local v0    # "currHightestDrainTimespanS":Ljava/lang/String;
    .local v62, "currHightestDrainTimespanS":Ljava/lang/String;
    const-wide/16 v63, -0x1

    .local v63, "prevHightestDrainPower":J
    move-wide/from16 v65, v17

    .line 245
    .local v65, "prevHightestDrainTimespan":J
    const-string v0, ""

    .local v0, "prevHightestDrainTimespanS":Ljava/lang/String;
    move-wide/from16 v67, v17

    .local v67, "prevHightestDrainElapsed":J
    move-object/from16 v69, v0

    .end local v0    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v69, "prevHightestDrainTimespanS":Ljava/lang/String;
    move-wide/from16 v70, v17

    .line 249
    .local v70, "prevHightestDrainUptime":J
    const/16 v72, 0x0

    .line 250
    .local v72, "isDeltaHightestDrainValid":Z
    const-wide/16 v73, -0x1

    .line 251
    .local v73, "deltaHightestDrainPower":J
    const-wide/16 v75, -0x1

    .local v75, "deltaHightestDrainTimespan":J
    const-string v77, ""

    .line 252
    .local v77, "deltaHightestDrainTimespanS":Ljava/lang/String;
    const-wide/16 v78, -0x1

    .local v78, "deltaHightestDrainElapsed":J
    const-string v80, ""

    .line 253
    .local v80, "deltaHightestDrainElapsedS":Ljava/lang/String;
    const-wide/16 v81, -0x1

    .local v81, "deltaHightestDrainUptime":J
    const-string v0, ""

    .local v0, "deltaHightestDrainUptimeS":Ljava/lang/String;
    const/4 v12, 0x0

    move/from16 v83, v12

    .local v83, "isDeviceRebooted":Z
    move-object/from16 v84, v0

    .line 254
    .end local v0    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v84, "deltaHightestDrainUptimeS":Ljava/lang/String;
    const-string v85, ""

    .line 256
    .local v85, "isDeviceRebootedS":Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, "isPrintStackTraces":Z
    const/high16 v86, 0x41200000    # 10.0f

    cmpl-float v87, v46, v86

    if-ltz v87, :cond_1

    .line 259
    new-instance v12, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;

    move/from16 v88, v0

    .end local v0    # "isPrintStackTraces":Z
    .local v88, "isPrintStackTraces":Z
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    move-wide/from16 v89, v13

    const/4 v13, 0x0

    .end local v13    # "curentTime":J
    .local v89, "curentTime":J
    invoke-virtual {v12, v13}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Z)Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    move/from16 v88, v0

    .end local v88    # "isPrintStackTraces":Z
    .restart local v0    # "isPrintStackTraces":Z
    goto :goto_1

    .line 258
    .end local v89    # "curentTime":J
    .restart local v13    # "curentTime":J
    :cond_1
    move/from16 v88, v0

    move-wide/from16 v89, v13

    .line 264
    .end local v0    # "isPrintStackTraces":Z
    .end local v13    # "curentTime":J
    .restart local v88    # "isPrintStackTraces":Z
    .restart local v89    # "curentTime":J
    :goto_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-direct {v0, v12}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    move-object v13, v12

    .line 265
    .local v13, "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    move-object v12, v0

    .end local v13    # "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .local v12, "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->readFromSP(Landroid/content/SharedPreferences;)V

    .line 266
    invoke-virtual {v12}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v13

    move-wide/from16 v19, v13

    .line 267
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->f:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    sget-wide v91, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->LOAD_TIME_SCALE:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-wide/from16 v93, v15

    .end local v15    # "lastTraficPowerDumpTime":J
    .local v93, "lastTraficPowerDumpTime":J
    mul-long v14, v19, v91

    :try_start_2
    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v13, v0

    .line 268
    .end local v56    # "startTimeS":Ljava/lang/String;
    .local v13, "startTimeS":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "previous TrafficConsumeInfo: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v11, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    iget-object v14, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-direct {v0, v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    move-object v15, v14

    .line 271
    .local v15, "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    move-object v14, v0

    const/4 v15, 0x0

    .end local v15    # "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .local v14, "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    invoke-virtual {v0, v15}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->load(Z)V

    .line 272
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->writeToSP(Landroid/content/SharedPreferences$Editor;)V

    .line 273
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v15

    move-wide/from16 v21, v15

    .line 274
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->f:Ljava/text/SimpleDateFormat;

    new-instance v15, Ljava/util/Date;

    sget-wide v91, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->LOAD_TIME_SCALE:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v16, v2

    move-object/from16 v95, v3

    mul-long v2, v21, v91

    :try_start_4
    invoke-direct {v15, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current TrafficConsumeInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v12}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-gtz v0, :cond_2

    .line 279
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "TrafficPowerReport, return by no last traffic"

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    const-string v2, "analysisTraficPower.noLastTraffic"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 281
    return-void

    .line 297
    .end local v12    # "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .end local v14    # "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    :catch_0
    move-exception v0

    move-object v12, v13

    goto/16 :goto_4

    .line 285
    .restart local v12    # "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .restart local v14    # "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    :cond_2
    :try_start_6
    invoke-virtual {v14, v12}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->subtraction(Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;)V

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result TrafficConsumeInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiTxBytes()J

    move-result-wide v2

    move-wide/from16 v28, v2

    .line 289
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiRxBytes()J

    move-result-wide v2

    move-wide/from16 v30, v2

    .line 290
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsTxBytes()J

    move-result-wide v2

    move-wide/from16 v32, v2

    .line 291
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsRxBytes()J

    move-result-wide v2

    move-wide/from16 v34, v2

    .line 292
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalTxBytes()J

    move-result-wide v2

    move-wide/from16 v36, v2

    .line 293
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalRxBytes()J

    move-result-wide v2

    move-wide/from16 v38, v2

    .line 295
    invoke-virtual {v14}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v15, v12

    move-object/from16 v56, v13

    .end local v12    # "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .end local v13    # "startTimeS":Ljava/lang/String;
    .local v15, "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    const-wide/16 v12, 0x1

    :try_start_7
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    div-long/2addr v2, v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-wide/from16 v26, v2

    .line 299
    .end local v14    # "curConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .end local v15    # "lastConsumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    move-object v12, v15

    move-object/from16 v2, v25

    move-wide/from16 v14, v26

    move-object/from16 v13, v56

    goto :goto_5

    .line 297
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v95, v3

    :goto_2
    move-object/from16 v56, v13

    move-object/from16 v12, v56

    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v95, v3

    :goto_3
    move-object/from16 v12, v56

    goto :goto_4

    .end local v93    # "lastTraficPowerDumpTime":J
    .local v15, "lastTraficPowerDumpTime":J
    :catch_5
    move-exception v0

    move-object/from16 v95, v3

    move-wide/from16 v93, v15

    move-object/from16 v16, v2

    move-object/from16 v12, v56

    .line 298
    .end local v15    # "lastTraficPowerDumpTime":J
    .end local v56    # "startTimeS":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .local v12, "startTimeS":Ljava/lang/String;
    .restart local v93    # "lastTraficPowerDumpTime":J
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v13, v12

    move-object/from16 v2, v25

    move-wide/from16 v14, v26

    move-object v12, v0

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "startTimeS":Ljava/lang/String;
    .end local v25    # "endTimeS":Ljava/lang/String;
    .end local v26    # "trafficInterval":J
    .local v2, "endTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    .local v14, "trafficInterval":J
    :goto_5
    :try_start_8
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 304
    move-object v3, v0

    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .local v3, "trafficReportDesc":Ljava/lang/String;
    :try_start_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 305
    xor-int/lit8 v0, v0, 0x1

    move/from16 v40, v0

    if-eqz v0, :cond_3

    .line 306
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    move-object/from16 v25, v12

    new-instance v12, Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v26, v2

    .end local v2    # "endTimeS":Ljava/lang/String;
    .local v26, "endTimeS":Ljava/lang/String;
    :try_start_b
    const-string/jumbo v2, "report: "

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 326
    :catchall_1
    move-exception v0

    move-object/from16 v41, v3

    move-object/from16 v56, v13

    goto/16 :goto_9

    .end local v26    # "endTimeS":Ljava/lang/String;
    .restart local v2    # "endTimeS":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v41, v3

    move-object/from16 v56, v13

    .end local v2    # "endTimeS":Ljava/lang/String;
    .restart local v26    # "endTimeS":Ljava/lang/String;
    goto/16 :goto_9

    .line 305
    .end local v26    # "endTimeS":Ljava/lang/String;
    .restart local v2    # "endTimeS":Ljava/lang/String;
    :cond_3
    move-object/from16 v26, v2

    move-object/from16 v25, v12

    .line 309
    .end local v2    # "endTimeS":Ljava/lang/String;
    .restart local v26    # "endTimeS":Ljava/lang/String;
    :goto_6
    :try_start_c
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 310
    move-object v2, v0

    .end local v43    # "trafficOverflowDesc":Ljava/lang/String;
    .local v2, "trafficOverflowDesc":Ljava/lang/String;
    :try_start_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 311
    xor-int/lit8 v0, v0, 0x1

    move/from16 v42, v0

    if-eqz v0, :cond_4

    .line 312
    :try_start_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v27, v3

    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .local v27, "trafficReportDesc":Ljava/lang/String;
    :try_start_f
    const-string/jumbo v3, "overflow: "

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_7

    .line 326
    :catchall_3
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v56, v13

    move-object/from16 v41, v27

    goto/16 :goto_9

    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v43, v2

    move-object/from16 v56, v13

    move-object/from16 v41, v27

    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v27    # "trafficReportDesc":Ljava/lang/String;
    goto/16 :goto_9

    .line 311
    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    :cond_4
    move-object/from16 v27, v3

    .line 315
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v27    # "trafficReportDesc":Ljava/lang/String;
    :goto_7
    :try_start_10
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 316
    move-object v3, v0

    .end local v45    # "trafficDegradeDesc":Ljava/lang/String;
    .local v3, "trafficDegradeDesc":Ljava/lang/String;
    :try_start_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 317
    xor-int/lit8 v0, v0, 0x1

    move/from16 v44, v0

    if-eqz v0, :cond_5

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v56, v13

    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    :try_start_12
    const-string v13, "degrade: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v96, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v97, "degrade"

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    move-object/from16 v102, v3

    invoke-static/range {v96 .. v102}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    goto :goto_8

    .line 320
    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    :cond_5
    move-object/from16 v56, v13

    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    if-eqz v42, :cond_6

    .line 321
    sget-object v96, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v97, "overflow"

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    move-object/from16 v102, v2

    invoke-static/range {v96 .. v102}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    .line 325
    :cond_6
    :goto_8
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 329
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;)V

    .line 330
    move-object v9, v3

    move-object/from16 v12, v25

    move-object/from16 v3, v27

    goto :goto_a

    .line 326
    :catchall_5
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v45, v3

    move-object/from16 v41, v27

    goto :goto_9

    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v56, v13

    move-object/from16 v43, v2

    move-object/from16 v45, v3

    move-object/from16 v41, v27

    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_9

    .end local v3    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    .restart local v45    # "trafficDegradeDesc":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v56, v13

    move-object/from16 v43, v2

    move-object/from16 v41, v27

    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_9

    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .end local v56    # "startTimeS":Ljava/lang/String;
    .local v3, "trafficReportDesc":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v56, v13

    move-object/from16 v43, v2

    move-object/from16 v41, v27

    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v27    # "trafficReportDesc":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_9

    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    .restart local v43    # "trafficOverflowDesc":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v56, v13

    move-object/from16 v41, v27

    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v27    # "trafficReportDesc":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_9

    .end local v26    # "endTimeS":Ljava/lang/String;
    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .end local v56    # "startTimeS":Ljava/lang/String;
    .local v2, "endTimeS":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v56, v13

    move-object/from16 v41, v27

    .end local v2    # "endTimeS":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v26    # "endTimeS":Ljava/lang/String;
    .restart local v27    # "trafficReportDesc":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    goto :goto_9

    .end local v26    # "endTimeS":Ljava/lang/String;
    .end local v27    # "trafficReportDesc":Ljava/lang/String;
    .end local v56    # "startTimeS":Ljava/lang/String;
    .restart local v2    # "endTimeS":Ljava/lang/String;
    .restart local v13    # "startTimeS":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v56, v13

    .end local v2    # "endTimeS":Ljava/lang/String;
    .end local v13    # "startTimeS":Ljava/lang/String;
    .restart local v26    # "endTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    :goto_9
    move-object v12, v0

    .line 327
    .local v12, "e":Ljava/lang/Throwable;
    :try_start_13
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3e

    .line 329
    .end local v12    # "e":Ljava/lang/Throwable;
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;)V

    .line 330
    move-object/from16 v3, v41

    move-object/from16 v2, v43

    move-object/from16 v9, v45

    .line 335
    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v43    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v45    # "trafficDegradeDesc":Ljava/lang/String;
    .local v2, "trafficOverflowDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .local v9, "trafficDegradeDesc":Ljava/lang/String;
    :goto_a
    :try_start_14
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->b(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    move-result-object v0

    .line 337
    .local v12, "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    move-object v12, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b()I

    move-result v0

    move/from16 v47, v0

    .line 338
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a()F

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_34

    .line 339
    move/from16 v48, v0

    move v13, v0

    .line 340
    .end local v49    # "consumeBatteryLevelReal":F
    .local v13, "consumeBatteryLevelReal":F
    :try_start_15
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_33

    move-object/from16 v25, v0

    .line 342
    .end local v50    # "batteryDescript":Ljava/lang/String;
    .local v25, "batteryDescript":Ljava/lang/String;
    :try_start_16
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_32

    .line 343
    .local v0, "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    move-object/from16 v27, v9

    .end local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .local v27, "trafficDegradeDesc":Ljava/lang/String;
    :try_start_17
    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    move-result-object v9

    invoke-virtual {v9, v13, v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(FLcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_31

    .line 346
    if-eqz v0, :cond_9

    .line 349
    move-object v9, v2

    move-object/from16 v41, v3

    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .local v9, "trafficOverflowDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    :try_start_18
    iget-wide v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    const-wide v49, 0x40f86a0000000000L    # 100000.0

    cmpg-double v43, v2, v49

    if-gez v43, :cond_7

    :try_start_19
    iget-wide v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    const-wide/32 v49, 0xaae60

    cmp-long v43, v2, v49

    if-gez v43, :cond_7

    iget-wide v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    const-wide/32 v49, 0xf4240

    cmp-long v43, v2, v49

    if-gez v43, :cond_7

    .line 350
    const/high16 v2, -0x40800000    # -1.0f

    move/from16 v48, v2

    .end local v48    # "consumeBatteryLevel":F
    .local v2, "consumeBatteryLevel":F
    goto :goto_b

    .line 473
    .end local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v2    # "consumeBatteryLevel":F
    .end local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .restart local v48    # "consumeBatteryLevel":F
    :catchall_c
    move-exception v0

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v45, v9

    move-object/from16 v91, v10

    move-object/from16 v105, v11

    move/from16 v49, v13

    move-wide/from16 v103, v14

    move-object/from16 v50, v25

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    goto/16 :goto_15

    .line 354
    .restart local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_7
    :goto_b
    cmpl-float v2, v48, v86

    if-lez v2, :cond_8

    :try_start_1a
    iget-wide v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    move-object/from16 v43, v0

    .end local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .local v43, "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    move-object/from16 v45, v9

    move-object/from16 v91, v10

    .end local v9    # "trafficOverflowDesc":Ljava/lang/String;
    .local v45, "trafficOverflowDesc":Ljava/lang/String;
    const-wide/16 v9, 0x14

    :try_start_1b
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v0, v2, v9

    if-lez v0, :cond_a

    .line 355
    if-nez v88, :cond_a

    .line 356
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;

    iget-object v2, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Z)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 357
    const/16 v88, 0x1

    goto :goto_c

    .line 473
    .end local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :catchall_d
    move-exception v0

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move/from16 v49, v13

    move-wide/from16 v103, v14

    move-object/from16 v50, v25

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    goto/16 :goto_15

    .line 354
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v9    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_8
    move-object/from16 v43, v0

    move-object/from16 v45, v9

    move-object/from16 v91, v10

    .end local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v9    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    goto :goto_c

    .line 473
    .end local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v9    # "trafficOverflowDesc":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object/from16 v45, v9

    move-object/from16 v91, v10

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move/from16 v49, v13

    move-wide/from16 v103, v14

    move-object/from16 v50, v25

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    .end local v9    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    goto/16 :goto_15

    .line 346
    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .local v2, "trafficOverflowDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_9
    move-object/from16 v43, v0

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-object/from16 v91, v10

    .line 362
    .end local v0    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    :cond_a
    :goto_c
    :try_start_1c
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_30

    move-object v2, v0

    .line 363
    .end local v51    # "currHightestDrainName":Ljava/lang/String;
    .local v2, "currHightestDrainName":Ljava/lang/String;
    :try_start_1d
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e()D

    move-result-wide v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2f

    double-to-long v9, v9

    .line 364
    .end local v52    # "currHightestDrainPower":J
    .local v9, "currHightestDrainPower":J
    :try_start_1e
    invoke-virtual {v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f()J

    move-result-wide v49
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2e

    move-wide/from16 v51, v49

    .line 365
    .end local v54    # "currHightestDrainTimespan":J
    .local v51, "currHightestDrainTimespan":J
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v49
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2d

    move-wide/from16 v53, v49

    .line 366
    .end local v60    # "currHightestDrainElapsed":J
    .local v53, "currHightestDrainElapsed":J
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v49
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2c

    move-wide/from16 v58, v49

    .line 368
    :try_start_21
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2b

    move-object/from16 v92, v12

    .end local v12    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .local v92, "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    const-string/jumbo v12, "topDrainUptime"

    move-wide/from16 v103, v14

    .end local v14    # "trafficInterval":J
    .local v103, "trafficInterval":J
    const-string/jumbo v14, "topDrainElapsed"

    const-string/jumbo v15, "topDrainTimespan"

    move-object/from16 v105, v11

    const-string/jumbo v11, "topDrainPower"

    const-string/jumbo v1, "topDrainName"

    if-eqz v3, :cond_b

    .line 371
    :try_start_22
    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 372
    move-object/from16 v106, v4

    const-wide/16 v3, 0x0

    :try_start_23
    invoke-interface {v0, v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v0, v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0, v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0, v12, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    move-object v3, v5

    move-object v12, v6

    move-object v1, v7

    move-wide/from16 v60, v53

    move-object/from16 v11, v62

    move-object/from16 v14, v69

    move-object/from16 v15, v77

    move-object/from16 v109, v84

    move-object/from16 v7, v85

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v6, p0

    move-wide/from16 v54, v51

    move-wide/from16 v52, v9

    move-object/from16 v10, v25

    move-object/from16 v9, v80

    goto/16 :goto_16

    .line 473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :catchall_f
    move-exception v0

    move-object v3, v5

    move-object v12, v6

    move-object v1, v7

    move/from16 v49, v13

    move-object/from16 v7, v16

    move-object/from16 v50, v25

    move-wide/from16 v60, v53

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v6, p0

    move-wide/from16 v54, v51

    goto :goto_d

    :catchall_10
    move-exception v0

    move-object v3, v5

    move-object v12, v6

    move-object v1, v7

    move/from16 v49, v13

    move-object/from16 v7, v16

    move-object/from16 v50, v25

    move-wide/from16 v60, v53

    move-object/from16 v6, p0

    move-object v5, v4

    move-wide/from16 v54, v51

    move-object/from16 v4, v95

    :goto_d
    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    goto/16 :goto_15

    .line 379
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_b
    move-object/from16 v106, v4

    :try_start_24
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2a

    .line 380
    .end local v57    # "prevHightestDrainName":Ljava/lang/String;
    .local v3, "prevHightestDrainName":Ljava/lang/String;
    :try_start_25
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_29

    move-object/from16 v107, v5

    move-object/from16 v108, v6

    const-wide/16 v5, 0x0

    :try_start_26
    invoke-virtual {v4, v11, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v63, v17

    .line 381
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v4

    invoke-virtual {v4, v15, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v65, v17

    .line 382
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v4

    invoke-virtual {v4, v14, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v67, v17

    .line 383
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v4

    invoke-virtual {v4, v12, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v49

    move-wide/from16 v70, v49

    .line 385
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0, v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_28

    .line 387
    move-wide/from16 v4, v51

    .end local v51    # "currHightestDrainTimespan":J
    .local v4, "currHightestDrainTimespan":J
    :try_start_27
    invoke-interface {v0, v15, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 388
    move-object v1, v7

    move-wide/from16 v6, v53

    .end local v53    # "currHightestDrainElapsed":J
    .local v6, "currHightestDrainElapsed":J
    :try_start_28
    invoke-interface {v0, v14, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    .line 389
    move-wide/from16 v14, v58

    .end local v58    # "currHightestDrainUptime":J
    .local v14, "currHightestDrainUptime":J
    :try_start_29
    invoke-interface {v0, v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->isDeviceRebootRecently()Z

    move-result v11

    move/from16 v83, v11

    .line 394
    const/4 v11, 0x0

    .line 396
    .local v11, "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_25

    if-eqz v12, :cond_e

    const-wide/16 v17, 0x0

    cmp-long v12, v63, v17

    if-lez v12, :cond_e

    cmp-long v12, v65, v17

    if-lez v12, :cond_e

    cmp-long v12, v67, v17

    if-lez v12, :cond_e

    cmp-long v12, v70, v17

    if-lez v12, :cond_e

    .line 400
    const/16 v72, 0x1

    .line 401
    sub-long v49, v9, v63

    .line 402
    .end local v73    # "deltaHightestDrainPower":J
    .local v49, "deltaHightestDrainPower":J
    sub-long v75, v4, v65

    .line 403
    sub-long v53, v6, v67

    .line 404
    .end local v78    # "deltaHightestDrainElapsed":J
    .local v53, "deltaHightestDrainElapsed":J
    sub-long v58, v14, v70

    .line 406
    .end local v81    # "deltaHightestDrainUptime":J
    .local v58, "deltaHightestDrainUptime":J
    cmpl-float v12, v48, v86

    if-lez v12, :cond_d

    const-wide/16 v51, 0x0

    move-wide/from16 v60, v51

    .line 409
    .local v60, "deltaHightestDrainStandard":J
    :try_start_2a
    sget-object v12, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    move-object/from16 v55, v3

    const/4 v3, 0x0

    move-wide/from16 v110, v6

    move-wide/from16 v6, v51

    move-wide/from16 v51, v110

    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v6    # "currHightestDrainElapsed":J
    .local v51, "currHightestDrainElapsed":J
    .local v55, "prevHightestDrainName":Ljava/lang/String;
    :try_start_2b
    invoke-static {v12, v6, v7, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    move-result-object v12

    .line 410
    move-object v11, v12

    iput-wide v9, v12, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J

    .line 412
    if-eqz v83, :cond_c

    .line 413
    move-wide/from16 v6, v53

    .line 414
    .end local v60    # "deltaHightestDrainStandard":J
    .local v6, "deltaHightestDrainStandard":J
    const-string v3, "1"

    move-object/from16 v85, v3

    .end local v85    # "isDeviceRebootedS":Ljava/lang/String;
    .local v3, "isDeviceRebootedS":Ljava/lang/String;
    goto :goto_e

    .line 416
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v6    # "deltaHightestDrainStandard":J
    .restart local v60    # "deltaHightestDrainStandard":J
    .restart local v85    # "isDeviceRebootedS":Ljava/lang/String;
    :cond_c
    move-wide/from16 v6, v58

    .line 417
    .end local v60    # "deltaHightestDrainStandard":J
    .restart local v6    # "deltaHightestDrainStandard":J
    const-string v3, "0"

    .end local v85    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    move-object/from16 v85, v3

    .line 420
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v85    # "isDeviceRebootedS":Ljava/lang/String;
    :goto_e
    const-string/jumbo v3, "warnName"

    const-string v12, "longTimeCost"

    invoke-virtual {v11, v3, v12}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 421
    const-string/jumbo v3, "warnVal"

    invoke-virtual {v11, v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 422
    const-string v3, "deltaTimespan"

    invoke-static/range {v75 .. v76}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 423
    const-string v3, "deltaStandard"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    move-wide/from16 v73, v49

    move-wide/from16 v78, v53

    move-wide/from16 v81, v58

    move-object/from16 v3, v85

    goto/16 :goto_f

    .line 473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "deltaHightestDrainStandard":J
    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :catchall_11
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-wide/from16 v73, v49

    move-wide/from16 v60, v51

    move-wide/from16 v78, v53

    move-object/from16 v57, v55

    move-wide/from16 v81, v58

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v51, v2

    move-wide/from16 v54, v4

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-wide/from16 v58, v14

    move-object/from16 v50, v25

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    goto/16 :goto_15

    .end local v51    # "currHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .local v3, "prevHightestDrainName":Ljava/lang/String;
    .local v6, "currHightestDrainElapsed":J
    :catchall_12
    move-exception v0

    move-object/from16 v55, v3

    move-wide/from16 v51, v6

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-wide/from16 v73, v49

    move-wide/from16 v60, v51

    move-wide/from16 v78, v53

    move-object/from16 v57, v55

    move-wide/from16 v81, v58

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v51, v2

    move-wide/from16 v54, v4

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-wide/from16 v58, v14

    move-object/from16 v50, v25

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v6    # "currHightestDrainElapsed":J
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    goto/16 :goto_15

    .line 406
    .end local v51    # "currHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v6    # "currHightestDrainElapsed":J
    .restart local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_d
    move-object/from16 v55, v3

    move-wide/from16 v51, v6

    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v6    # "currHightestDrainElapsed":J
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    move-wide/from16 v73, v49

    move-wide/from16 v78, v53

    move-wide/from16 v81, v58

    move-object/from16 v3, v85

    goto :goto_f

    .line 396
    .end local v49    # "deltaHightestDrainPower":J
    .end local v51    # "currHightestDrainElapsed":J
    .end local v53    # "deltaHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v58    # "deltaHightestDrainUptime":J
    .restart local v3    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v6    # "currHightestDrainElapsed":J
    .restart local v73    # "deltaHightestDrainPower":J
    .restart local v78    # "deltaHightestDrainElapsed":J
    .restart local v81    # "deltaHightestDrainUptime":J
    :cond_e
    move-object/from16 v55, v3

    move-wide/from16 v51, v6

    .line 432
    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v6    # "currHightestDrainElapsed":J
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    move-object/from16 v3, v85

    .end local v85    # "isDeviceRebootedS":Ljava/lang/String;
    .local v3, "isDeviceRebootedS":Ljava/lang/String;
    :goto_f
    if-nez v11, :cond_f

    .line 433
    :try_start_2c
    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    move-object v7, v11

    const-wide/16 v11, 0x0

    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .local v7, "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    invoke-static {v6, v11, v12, v2}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    move-result-object v6

    .line 434
    move-object v11, v6

    .end local v7    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .restart local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    iput-wide v9, v6, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    goto :goto_10

    .line 473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :catchall_13
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v85, v3

    move/from16 v49, v13

    move-wide/from16 v58, v14

    move-object/from16 v7, v16

    move-object/from16 v50, v25

    move-wide/from16 v60, v51

    move-object/from16 v57, v55

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v51, v2

    move-wide/from16 v54, v4

    move-wide/from16 v52, v9

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    goto/16 :goto_15

    .line 432
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_f
    move-object v7, v11

    .line 437
    :goto_10
    :try_start_2d
    const-string v6, "cpuLevel"

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 438
    const-string v6, "batteryIndex"

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 439
    const-string v6, "batteryLevel"

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 440
    const-string/jumbo v6, "realLevel"

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    .line 441
    move-object/from16 v6, v25

    .end local v25    # "batteryDescript":Ljava/lang/String;
    .local v6, "batteryDescript":Ljava/lang/String;
    :try_start_2e
    invoke-virtual {v11, v8, v6}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 443
    invoke-static {v4, v5}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v7
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_23

    .line 444
    .end local v62    # "currHightestDrainTimespanS":Ljava/lang/String;
    .local v7, "currHightestDrainTimespanS":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {v11, v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 445
    const-string v12, "currPower"

    move-object/from16 v25, v0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v25, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_22

    .line 446
    move-object/from16 v12, v108

    :try_start_30
    invoke-virtual {v11, v12, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_21

    .line 448
    if-eqz v72, :cond_10

    .line 449
    :try_start_31
    invoke-static/range {v65 .. v66}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1e

    move-object/from16 v49, v0

    .line 450
    .end local v69    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v49, "prevHightestDrainTimespanS":Ljava/lang/String;
    :try_start_32
    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1d

    move-object/from16 v50, v0

    .line 451
    .end local v77    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v50, "deltaHightestDrainTimespanS":Ljava/lang/String;
    :try_start_33
    invoke-static/range {v78 .. v79}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    move-object/from16 v53, v0

    .line 452
    .end local v80    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v53, "deltaHightestDrainElapsedS":Ljava/lang/String;
    :try_start_34
    invoke-static/range {v81 .. v82}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    move-object/from16 v54, v0

    .line 454
    .end local v84    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v54, "deltaHightestDrainUptimeS":Ljava/lang/String;
    :try_start_35
    invoke-static/range {v63 .. v64}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    move-object/from16 v57, v3

    move-object/from16 v3, v107

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .local v57, "isDeviceRebootedS":Ljava/lang/String;
    :try_start_36
    invoke-virtual {v11, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    .line 455
    move-wide/from16 v96, v4

    move-object/from16 v4, v49

    move-object/from16 v5, v106

    .end local v49    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v4, "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v96, "currHightestDrainTimespan":J
    :try_start_37
    invoke-virtual {v11, v5, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 456
    invoke-static/range {v73 .. v74}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_18

    move-object/from16 v49, v4

    move-object/from16 v4, v95

    .end local v4    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v49    # "prevHightestDrainTimespanS":Ljava/lang/String;
    :try_start_38
    invoke-virtual {v11, v4, v0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 457
    const-string v0, "deltaTimespanS"
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_17

    move-object/from16 v95, v6

    move-object/from16 v6, v50

    .end local v50    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v6, "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v95, "batteryDescript":Ljava/lang/String;
    :try_start_39
    invoke-virtual {v11, v0, v6}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    .line 458
    move-object/from16 v50, v6

    move-object/from16 v6, v53

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v53    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v6, "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v16, "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v50    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    :try_start_3a
    invoke-virtual {v11, v7, v6}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 459
    const-string v0, "deltaUptime"
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_15

    move-object/from16 v53, v6

    move-object/from16 v6, v54

    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v53    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    :try_start_3b
    invoke-virtual {v11, v0, v6}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_14

    move-object/from16 v84, v6

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-object/from16 v80, v53

    goto/16 :goto_11

    .line 473
    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :catchall_14
    move-exception v0

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    goto/16 :goto_15

    .end local v53    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v6, "deltaHightestDrainElapsedS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v6, v54

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v53    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v50    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v6, "deltaHightestDrainTimespanS":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-object/from16 v50, v6

    move-object/from16 v6, v54

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v50    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .local v6, "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move-object/from16 v95, v6

    move-object/from16 v6, v54

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v49    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v4    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v6, "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_18
    move-exception v0

    move-object/from16 v49, v4

    move-object/from16 v4, v95

    move-object/from16 v95, v6

    move-object/from16 v6, v54

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v4    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v49    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .local v4, "currHightestDrainTimespan":J
    .local v6, "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_19
    move-exception v0

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v95, v6

    move-object/from16 v6, v54

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v4    # "currHightestDrainTimespan":J
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .local v6, "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_1a
    move-exception v0

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v6, v54

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v84, v6

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v6, p0

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v54    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v6, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .local v6, "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v84    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :catchall_1b
    move-exception v0

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v6, p0

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v80, v53

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v53    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v80    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    :catchall_1c
    move-exception v0

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v6, p0

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-object/from16 v77, v50

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v50    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v77    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    :catchall_1d
    move-exception v0

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v6, p0

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-object/from16 v69, v49

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move/from16 v49, v13

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v49    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v69    # "prevHightestDrainTimespanS":Ljava/lang/String;
    :catchall_1e
    move-exception v0

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-object/from16 v6, p0

    move/from16 v49, v13

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-object/from16 v51, v2

    move-wide/from16 v52, v9

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .line 448
    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .restart local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_10
    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v95, v6

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    .line 462
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    :goto_11
    :try_start_3c
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->report()V

    .line 464
    cmpl-float v0, v48, v86

    if-lez v0, :cond_13

    .line 465
    const-string v0, "cpu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 466
    if-nez v88, :cond_11

    .line 467
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    move-object/from16 v6, p0

    move-object/from16 v49, v2

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .local v49, "currHightestDrainName":Ljava/lang/String;
    :try_start_3d
    iget-object v2, v6, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Z)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1f

    goto :goto_12

    .line 473
    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :catchall_1f
    move-exception v0

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    move/from16 v49, v13

    goto/16 :goto_15

    .line 466
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .restart local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .restart local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    :cond_11
    move-object/from16 v6, p0

    move-object/from16 v49, v2

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    goto :goto_12

    .line 465
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    :cond_12
    move-object/from16 v6, p0

    move-object/from16 v49, v2

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    goto :goto_12

    .line 464
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    :cond_13
    move-object/from16 v6, p0

    move-object/from16 v49, v2

    .line 475
    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v11    # "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v43    # "targetSipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v92    # "powerInfo":Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    :goto_12
    move-wide/from16 v58, v14

    move-object/from16 v11, v16

    move-object/from16 v2, v49

    move-wide/from16 v60, v51

    move-object/from16 v14, v69

    move-object/from16 v15, v77

    move-object/from16 v109, v84

    move-object/from16 v16, v7

    move-wide/from16 v52, v9

    move-object/from16 v7, v57

    move-object/from16 v9, v80

    move-object/from16 v10, v95

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    goto/16 :goto_16

    .line 473
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    :catchall_20
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v49, v2

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    :catchall_21
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    goto :goto_13

    :catchall_22
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    :goto_13
    move-object/from16 v95, v6

    move-object/from16 v6, p0

    move-object/from16 v110, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v110

    move-wide/from16 v58, v14

    move-object/from16 v62, v16

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .end local v7    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v16    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v62    # "currHightestDrainTimespanS":Ljava/lang/String;
    :catchall_23
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v95, v6

    move-object/from16 v6, p0

    move-wide/from16 v58, v14

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "batteryDescript":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .local v25, "batteryDescript":Ljava/lang/String;
    :catchall_24
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v49, v2

    move-object/from16 v57, v3

    move-wide/from16 v96, v4

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v95, v25

    move-wide/from16 v58, v14

    move-wide/from16 v60, v51

    move-object/from16 v85, v57

    move-object/from16 v50, v95

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v57, v55

    move-wide/from16 v54, v96

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v51    # "currHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v57    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .local v3, "prevHightestDrainName":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .local v6, "currHightestDrainElapsed":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v85    # "isDeviceRebootedS":Ljava/lang/String;
    :catchall_25
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v55, v3

    move-wide/from16 v96, v4

    move-wide/from16 v51, v6

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v6, p0

    move-object/from16 v95, v25

    move-wide/from16 v58, v14

    move-wide/from16 v60, v51

    move-object/from16 v57, v55

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "currHightestDrainElapsed":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v14    # "currHightestDrainUptime":J
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v51    # "currHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v6    # "currHightestDrainElapsed":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v58, "currHightestDrainUptime":J
    :catchall_26
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v55, v3

    move-wide/from16 v96, v4

    move-wide/from16 v51, v6

    move-object/from16 v7, v16

    move-wide/from16 v14, v58

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v6, p0

    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v57, v55

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v6    # "currHightestDrainElapsed":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v58    # "currHightestDrainUptime":J
    .restart local v14    # "currHightestDrainUptime":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v14    # "currHightestDrainUptime":J
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v51    # "currHightestDrainElapsed":J
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v4    # "currHightestDrainTimespan":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v53, "currHightestDrainElapsed":J
    .restart local v58    # "currHightestDrainUptime":J
    :catchall_27
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v49, v2

    move-object/from16 v55, v3

    move-wide/from16 v96, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-wide/from16 v51, v53

    move-wide/from16 v14, v58

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v57, v55

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v4    # "currHightestDrainTimespan":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v53    # "currHightestDrainElapsed":J
    .end local v58    # "currHightestDrainUptime":J
    .restart local v14    # "currHightestDrainUptime":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v51    # "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v14    # "currHightestDrainUptime":J
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v3    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainTimespan":J
    .restart local v53    # "currHightestDrainElapsed":J
    .restart local v58    # "currHightestDrainUptime":J
    :catchall_28
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v49, v2

    move-object/from16 v55, v3

    move-object v1, v7

    move-object/from16 v7, v16

    move-wide/from16 v96, v51

    move-wide/from16 v51, v53

    move-wide/from16 v14, v58

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v3, v107

    move-object/from16 v12, v108

    goto :goto_14

    :catchall_29
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v55, v3

    move-object v3, v5

    move-object v12, v6

    move-object v1, v7

    move-object/from16 v7, v16

    move-wide/from16 v96, v51

    move-wide/from16 v51, v53

    move-wide/from16 v14, v58

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v6, p0

    :goto_14
    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v57, v55

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v3    # "prevHightestDrainName":Ljava/lang/String;
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v53    # "currHightestDrainElapsed":J
    .end local v58    # "currHightestDrainUptime":J
    .restart local v14    # "currHightestDrainUptime":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .local v51, "currHightestDrainElapsed":J
    .restart local v55    # "prevHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v14    # "currHightestDrainUptime":J
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v55    # "prevHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainTimespan":J
    .restart local v53    # "currHightestDrainElapsed":J
    .local v57, "prevHightestDrainName":Ljava/lang/String;
    .restart local v58    # "currHightestDrainUptime":J
    :catchall_2a
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object v1, v7

    move-object/from16 v7, v16

    move-wide/from16 v96, v51

    move-wide/from16 v51, v53

    move-wide/from16 v14, v58

    move-object/from16 v4, v95

    move-object/from16 v5, v106

    move-object/from16 v6, p0

    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v53    # "currHightestDrainElapsed":J
    .end local v58    # "currHightestDrainUptime":J
    .restart local v14    # "currHightestDrainUptime":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .local v51, "currHightestDrainElapsed":J
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .end local v103    # "trafficInterval":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .local v14, "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainTimespan":J
    .restart local v53    # "currHightestDrainElapsed":J
    .restart local v58    # "currHightestDrainUptime":J
    :catchall_2b
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-wide/from16 v96, v51

    move-wide/from16 v51, v53

    move-wide/from16 v14, v58

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v53    # "currHightestDrainElapsed":J
    .end local v58    # "currHightestDrainUptime":J
    .local v14, "currHightestDrainUptime":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .local v51, "currHightestDrainElapsed":J
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .end local v103    # "trafficInterval":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .local v14, "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainTimespan":J
    .restart local v53    # "currHightestDrainElapsed":J
    .restart local v58    # "currHightestDrainUptime":J
    :catchall_2c
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-wide/from16 v96, v51

    move-wide/from16 v51, v53

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move-wide/from16 v60, v51

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v53    # "currHightestDrainElapsed":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .local v51, "currHightestDrainElapsed":J
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .end local v103    # "trafficInterval":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainTimespan":J
    .local v60, "currHightestDrainElapsed":J
    :catchall_2d
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-wide/from16 v96, v51

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v50, v95

    move-wide/from16 v54, v96

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .end local v51    # "currHightestDrainTimespan":J
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v96    # "currHightestDrainTimespan":J
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v96    # "currHightestDrainTimespan":J
    .end local v103    # "trafficInterval":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v54, "currHightestDrainTimespan":J
    :catchall_2e
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move-wide/from16 v52, v9

    move-object/from16 v51, v49

    move-object/from16 v50, v95

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v9    # "currHightestDrainPower":J
    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .restart local v2    # "currHightestDrainName":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v52    # "currHightestDrainPower":J
    :catchall_2f
    move-exception v0

    move-object/from16 v49, v2

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move-object/from16 v51, v49

    move-object/from16 v50, v95

    move/from16 v49, v13

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v49    # "currHightestDrainName":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v49    # "currHightestDrainName":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    .local v51, "currHightestDrainName":Ljava/lang/String;
    :catchall_30
    move-exception v0

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move/from16 v49, v13

    move-object/from16 v50, v95

    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .local v2, "trafficOverflowDesc":Ljava/lang/String;
    .local v3, "trafficReportDesc":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    :catchall_31
    move-exception v0

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v91, v10

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move/from16 v49, v13

    move-object/from16 v50, v95

    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto/16 :goto_15

    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .restart local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .local v9, "trafficDegradeDesc":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .restart local v25    # "batteryDescript":Ljava/lang/String;
    :catchall_32
    move-exception v0

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v27, v9

    move-object/from16 v91, v10

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move-object/from16 v95, v25

    move/from16 v49, v13

    move-object/from16 v50, v95

    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .end local v25    # "batteryDescript":Ljava/lang/String;
    .restart local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v95    # "batteryDescript":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto :goto_15

    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v95    # "batteryDescript":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .restart local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .local v50, "batteryDescript":Ljava/lang/String;
    :catchall_33
    move-exception v0

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v27, v9

    move-object/from16 v91, v10

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    move/from16 v49, v13

    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .restart local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    goto :goto_15

    .end local v13    # "consumeBatteryLevelReal":F
    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .restart local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v14    # "trafficInterval":J
    .local v49, "consumeBatteryLevelReal":F
    :catchall_34
    move-exception v0

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-object v3, v5

    move-object v12, v6

    move-object/from16 v27, v9

    move-object/from16 v91, v10

    move-object/from16 v105, v11

    move-wide/from16 v103, v14

    move-object v6, v1

    move-object v5, v4

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v95

    .line 474
    .end local v2    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .end local v9    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v14    # "trafficInterval":J
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    .restart local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    :goto_15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    move-object/from16 v9, v105

    invoke-interface {v2, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v92, v0

    move-object/from16 v16, v7

    move/from16 v13, v49

    move-object/from16 v10, v50

    move-object/from16 v2, v51

    move-object/from16 v11, v62

    move-object/from16 v14, v69

    move-object/from16 v15, v77

    move-object/from16 v9, v80

    move-object/from16 v109, v84

    move-object/from16 v7, v85

    .line 478
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v49    # "consumeBatteryLevelReal":F
    .end local v50    # "batteryDescript":Ljava/lang/String;
    .end local v51    # "currHightestDrainName":Ljava/lang/String;
    .end local v62    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v69    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v77    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .end local v80    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v84    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .end local v85    # "isDeviceRebootedS":Ljava/lang/String;
    .local v2, "currHightestDrainName":Ljava/lang/String;
    .local v7, "isDeviceRebootedS":Ljava/lang/String;
    .local v9, "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v10, "batteryDescript":Ljava/lang/String;
    .local v11, "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v13    # "consumeBatteryLevelReal":F
    .local v14, "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v15, "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v109, "deltaHightestDrainUptimeS":Ljava/lang/String;
    :goto_16
    const-wide/16 v17, 0x0

    cmp-long v0, v103, v17

    if-lez v0, :cond_16

    .line 479
    const-wide/16 v17, 0x3e8

    div-long v49, v38, v17

    iget-object v0, v6, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f()J

    move-result-wide v84

    mul-long v84, v84, v103

    cmp-long v0, v49, v84

    if-gtz v0, :cond_15

    div-long v49, v36, v17

    iget-object v0, v6, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    .line 480
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e()J

    move-result-wide v84

    mul-long v84, v84, v103

    cmp-long v0, v49, v84

    if-gtz v0, :cond_15

    add-long v49, v38, v36

    div-long v49, v49, v17

    iget-object v0, v6, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    .line 482
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g()J

    move-result-wide v17

    mul-long v17, v17, v103

    cmp-long v0, v49, v17

    if-lez v0, :cond_14

    goto :goto_17

    :cond_14
    move-object/from16 v95, v4

    move-object/from16 v106, v5

    move-wide/from16 v4, v103

    goto :goto_18

    .line 484
    :cond_15
    :goto_17
    const/16 v42, 0x1

    .line 485
    sget-object v96, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "interval:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v95, v4

    move-object/from16 v106, v5

    move-wide/from16 v4, v103

    .end local v103    # "trafficInterval":J
    .local v4, "trafficInterval":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v102

    const-string/jumbo v97, "total_overflow"

    move-wide/from16 v98, v36

    move-wide/from16 v100, v38

    invoke-static/range {v96 .. v102}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    goto :goto_18

    .line 478
    .end local v4    # "trafficInterval":J
    .restart local v103    # "trafficInterval":J
    :cond_16
    move-object/from16 v95, v4

    move-object/from16 v106, v5

    move-wide/from16 v4, v103

    .line 490
    .end local v103    # "trafficInterval":J
    .restart local v4    # "trafficInterval":J
    :goto_18
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    move-object/from16 v6, v92

    .line 491
    .local v6, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v6, v0

    move-object/from16 v17, v9

    move-object/from16 v9, v91

    .end local v9    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v17, "deltaHightestDrainElapsedS":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, "romVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    move-object/from16 v18, v15

    .end local v15    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v18, "deltaHightestDrainTimespanS":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getManufacturer()Ljava/lang/String;

    move-result-object v15

    .line 495
    .local v15, "manufacturer":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    move-object/from16 v25, v14

    .end local v14    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v25, "prevHightestDrainTimespanS":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getBrandName()Ljava/lang/String;

    move-result-object v14

    .line 496
    .local v14, "brandName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    move-object/from16 v107, v3

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getDisplayID()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "displayID":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    move-object/from16 v43, v11

    .end local v11    # "currHightestDrainTimespanS":Ljava/lang/String;
    .local v43, "currHightestDrainTimespanS":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getFingerPrint()Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, "fingerPrint":Ljava/lang/String;
    const-string/jumbo v0, "romVersion"

    invoke-virtual {v6, v0, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v0, "manufacturer"

    invoke-virtual {v6, v0, v15}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v0, "phoneBrand"

    invoke-virtual {v6, v0, v14}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "displayId"

    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v0, "phoneFinger"

    invoke-virtual {v6, v0, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->getCpuTemperature()I

    move-result v49

    .line 506
    .local v49, "cpuTemp":I
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v3

    .end local v3    # "displayID":Ljava/lang/String;
    .local v50, "displayID":Ljava/lang/String;
    const-string v3, "cpuTemp"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "startTime"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "endTime"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, "startTimeS"

    move-object/from16 v3, v56

    .end local v56    # "startTimeS":Ljava/lang/String;
    .local v3, "startTimeS":Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "endTimeS"

    move-object/from16 v3, v26

    .end local v26    # "endTimeS":Ljava/lang/String;
    .local v3, "endTimeS":Ljava/lang/String;
    .restart local v56    # "startTimeS":Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "endTimeS":Ljava/lang/String;
    .restart local v26    # "endTimeS":Ljava/lang/String;
    const-string/jumbo v3, "wifiUploadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wifiDownloadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mobileUploadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mobileDownloadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "totalUploadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "totalDownloadSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "trafficInterval"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    add-long v84, v38, v36

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "totalSize"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static/range {v46 .. v46}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cpuBatteryLevel"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "consumeBatteryIndex"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static/range {v48 .. v48}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "consumeBatteryLevel"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "consumeBatteryLevelReal"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v6, v8, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "highestDrain"

    invoke-virtual {v6, v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "highestDrainPower"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "trafficReport"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v0, "trafficReportDesc"

    move-object/from16 v3, v41

    .end local v41    # "trafficReportDesc":Ljava/lang/String;
    .local v3, "trafficReportDesc":Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "trafficOverflow"

    invoke-virtual {v6, v8, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v0, "trafficOverflowDesc"

    move-object/from16 v8, v45

    .end local v45    # "trafficOverflowDesc":Ljava/lang/String;
    .local v8, "trafficOverflowDesc":Ljava/lang/String;
    invoke-virtual {v6, v0, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "trafficReportDesc":Ljava/lang/String;
    .restart local v41    # "trafficReportDesc":Ljava/lang/String;
    const-string/jumbo v3, "trafficDegrade"

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string/jumbo v0, "trafficDegradeDesc"

    move-object/from16 v3, v27

    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .local v3, "trafficDegradeDesc":Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 539
    invoke-virtual {v6, v1, v7}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    move-object/from16 v1, v43

    .end local v43    # "currHightestDrainTimespanS":Ljava/lang/String;
    .local v1, "currHightestDrainTimespanS":Ljava/lang/String;
    invoke-virtual {v6, v12, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    if-eqz v72, :cond_17

    .line 543
    invoke-static/range {v63 .. v64}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v107

    invoke-virtual {v6, v12, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v43, v1

    move-object/from16 v12, v25

    move-object/from16 v1, v106

    .end local v1    # "currHightestDrainTimespanS":Ljava/lang/String;
    .end local v25    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .local v12, "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v43    # "currHightestDrainTimespanS":Ljava/lang/String;
    invoke-virtual {v6, v1, v12}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static/range {v73 .. v74}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v95

    invoke-virtual {v6, v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "deltaTimeStr"

    move-object/from16 v1, v18

    .end local v18    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .local v1, "deltaHightestDrainTimespanS":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object/from16 v1, v17

    move-object/from16 v110, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v110

    .end local v2    # "currHightestDrainName":Ljava/lang/String;
    .end local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v1, "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v16, "currHightestDrainName":Ljava/lang/String;
    .restart local v18    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    invoke-virtual {v6, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "deltaUptime"

    move-object/from16 v2, v109

    .end local v109    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v2, "deltaHightestDrainUptimeS":Ljava/lang/String;
    invoke-virtual {v6, v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 542
    .end local v12    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v16    # "currHightestDrainName":Ljava/lang/String;
    .end local v43    # "currHightestDrainTimespanS":Ljava/lang/String;
    .local v1, "currHightestDrainTimespanS":Ljava/lang/String;
    .local v2, "currHightestDrainName":Ljava/lang/String;
    .restart local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .restart local v25    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v109    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :cond_17
    move-object/from16 v43, v1

    move-object/from16 v16, v2

    move-object/from16 v1, v17

    move-object/from16 v12, v25

    move-object/from16 v2, v109

    .end local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v25    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v109    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .local v1, "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v2, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v12    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainName":Ljava/lang/String;
    .restart local v43    # "currHightestDrainTimespanS":Ljava/lang/String;
    goto :goto_19

    .line 538
    .end local v1    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v12    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v16    # "currHightestDrainName":Ljava/lang/String;
    .local v2, "currHightestDrainName":Ljava/lang/String;
    .restart local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .restart local v25    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v109    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    :cond_18
    move-object/from16 v16, v2

    move-object/from16 v1, v17

    move-object/from16 v12, v25

    move-object/from16 v2, v109

    .line 554
    .end local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v25    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v109    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v1    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .local v2, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v12    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v16    # "currHightestDrainName":Ljava/lang/String;
    :goto_19
    move-object/from16 v17, v1

    move-object/from16 v1, p0

    .end local v1    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .restart local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    :try_start_3e
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_39

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move-wide/from16 v2, v23

    .end local v3    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v23    # "dumpInterval":J
    .local v2, "dumpInterval":J
    .local v25, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v27    # "trafficDegradeDesc":Ljava/lang/String;
    :try_start_3f
    invoke-static {v0, v2, v3}, Lcom/alipay/tianyan/mobilesdk/CyclicalReportDispatcher;->onCyclicalReport(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_38

    const/16 v23, 0x0

    move-object/from16 v24, v23

    .line 555
    .local v24, "bundles":Ljava/util/Map;
    move-object/from16 v23, v0

    .end local v24    # "bundles":Ljava/util/Map;
    .local v23, "bundles":Ljava/util/Map;
    if-eqz v0, :cond_19

    :try_start_40
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 556
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 557
    .local v24, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v51, v0

    move-object/from16 v0, v45

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v6, v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_35

    .line 558
    .end local v24    # "entry":Ljava/util/Map$Entry;
    move-object/from16 v0, v51

    goto :goto_1a

    .line 561
    .end local v23    # "bundles":Ljava/util/Map;
    :catchall_35
    move-exception v0

    move-wide/from16 v103, v4

    move-object/from16 v5, v105

    goto :goto_1b

    .line 560
    .restart local v23    # "bundles":Ljava/util/Map;
    :cond_19
    :try_start_41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_38

    move-wide/from16 v103, v4

    .end local v4    # "trafficInterval":J
    .restart local v103    # "trafficInterval":J
    :try_start_42
    const-string/jumbo v4, "obtain by onCyclicalReport (push)"
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_37

    move-object/from16 v5, v105

    :try_start_43
    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_36

    .line 563
    .end local v23    # "bundles":Ljava/util/Map;
    goto :goto_1c

    .line 561
    :catchall_36
    move-exception v0

    goto :goto_1b

    :catchall_37
    move-exception v0

    move-object/from16 v5, v105

    goto :goto_1b

    .end local v103    # "trafficInterval":J
    .restart local v4    # "trafficInterval":J
    :catchall_38
    move-exception v0

    move-wide/from16 v103, v4

    move-object/from16 v5, v105

    .end local v4    # "trafficInterval":J
    .restart local v103    # "trafficInterval":J
    goto :goto_1b

    .end local v25    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .local v2, "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v3    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v4    # "trafficInterval":J
    .local v23, "dumpInterval":J
    :catchall_39
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move-wide/from16 v103, v4

    move-wide/from16 v2, v23

    move-object/from16 v5, v105

    .line 562
    .end local v3    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v4    # "trafficInterval":J
    .end local v23    # "dumpInterval":J
    .local v0, "t":Ljava/lang/Throwable;
    .local v2, "dumpInterval":J
    .restart local v25    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .restart local v103    # "trafficInterval":J
    :goto_1b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v23, v0

    .line 567
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1c
    :try_start_44
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a(J)Ljava/util/List;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_3c

    move-object/from16 v4, v23

    .line 568
    .local v4, "extraUsages":Ljava/util/List;
    move-object v4, v0

    if-eqz v0, :cond_1a

    :try_start_45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 569
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v24, v23

    .line 570
    .local v24, "extraBundle":Landroid/os/Bundle;
    move-object/from16 v23, v0

    move-object/from16 v0, v24

    .end local v24    # "extraBundle":Landroid/os/Bundle;
    .local v0, "extraBundle":Landroid/os/Bundle;
    invoke-static {v6, v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3a

    .line 571
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    move-object/from16 v0, v23

    goto :goto_1d

    .line 574
    .end local v4    # "extraUsages":Ljava/util/List;
    :catchall_3a
    move-exception v0

    move-wide/from16 v23, v2

    goto :goto_1e

    .line 573
    .restart local v4    # "extraUsages":Ljava/util/List;
    :cond_1a
    :try_start_46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_3c

    move-wide/from16 v23, v2

    .end local v2    # "dumpInterval":J
    .restart local v23    # "dumpInterval":J
    :try_start_47
    const-string/jumbo v2, "obtain by obtainExtraUsages (main)"

    invoke-interface {v0, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3b

    .line 576
    .end local v4    # "extraUsages":Ljava/util/List;
    goto :goto_1f

    .line 574
    :catchall_3b
    move-exception v0

    goto :goto_1e

    .end local v23    # "dumpInterval":J
    .restart local v2    # "dumpInterval":J
    :catchall_3c
    move-exception v0

    move-wide/from16 v23, v2

    .end local v2    # "dumpInterval":J
    .restart local v23    # "dumpInterval":J
    :goto_1e
    move-object v4, v0

    .line 575
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1f
    :try_start_48
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->b()V

    .line 581
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "disconnect AIDL with main process"

    invoke-interface {v0, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_3d

    .line 584
    goto :goto_20

    .line 582
    :catchall_3d
    move-exception v0

    move-object v4, v0

    .line 583
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v2, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 587
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 588
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v2, "applog"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v91

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 595
    .local v2, "message":Ljava/lang/StringBuilder;
    move-object v2, v0

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 596
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "TrafficPowerReport, all end."

    invoke-interface {v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->b()V

    .line 605
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/monitor/util/TransUtils;->uploadLeisureLogcategory(Z)Z

    .line 606
    return-void

    .line 329
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .end local v6    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .end local v7    # "isDeviceRebootedS":Ljava/lang/String;
    .end local v8    # "trafficOverflowDesc":Ljava/lang/String;
    .end local v9    # "romVersion":Ljava/lang/String;
    .end local v10    # "batteryDescript":Ljava/lang/String;
    .end local v11    # "fingerPrint":Ljava/lang/String;
    .end local v12    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .end local v13    # "consumeBatteryLevelReal":F
    .end local v15    # "manufacturer":Ljava/lang/String;
    .end local v16    # "currHightestDrainName":Ljava/lang/String;
    .end local v17    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .end local v18    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .end local v25    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .end local v27    # "trafficDegradeDesc":Ljava/lang/String;
    .end local v103    # "trafficInterval":J
    .local v14, "trafficInterval":J
    .local v43, "trafficOverflowDesc":Ljava/lang/String;
    .local v45, "trafficDegradeDesc":Ljava/lang/String;
    .local v49, "consumeBatteryLevelReal":F
    .local v50, "batteryDescript":Ljava/lang/String;
    .restart local v51    # "currHightestDrainName":Ljava/lang/String;
    .restart local v62    # "currHightestDrainTimespanS":Ljava/lang/String;
    .restart local v69    # "prevHightestDrainTimespanS":Ljava/lang/String;
    .restart local v77    # "deltaHightestDrainTimespanS":Ljava/lang/String;
    .restart local v80    # "deltaHightestDrainElapsedS":Ljava/lang/String;
    .restart local v84    # "deltaHightestDrainUptimeS":Ljava/lang/String;
    .restart local v85    # "isDeviceRebootedS":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    move-wide/from16 v103, v14

    .end local v14    # "trafficInterval":J
    .restart local v103    # "trafficInterval":J
    iget-object v2, v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerSipper;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;)V

    throw v0
.end method
