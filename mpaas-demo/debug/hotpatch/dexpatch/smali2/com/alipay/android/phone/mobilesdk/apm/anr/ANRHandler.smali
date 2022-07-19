.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;
.super Ljava/lang/Object;
.source "ANRHandler.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

.field private static b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

.field private static c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

.field private static d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

.field private static e:Z

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->e:Z

    .line 33
    :try_start_0
    const-string v0, "MI MAX 2"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ANRHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->f:I

    return-void
.end method

.method public static a()V
    .locals 8

    .line 44
    const-string v0, "ANRHandler"

    :try_start_0
    sget-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->e:Z

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    const-wide/16 v2, 0x1388

    const-string v4, "1000"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;-><init>(JLjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    .line 48
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    const-wide/16 v2, 0x2710

    const-string v4, "1114"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;-><init>(JLjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    .line 51
    :cond_1
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    .line 53
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    const-wide/16 v4, 0x0

    iget v1, v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a:I

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    .line 55
    :cond_2
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a()V

    .line 56
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a()V

    .line 57
    const/4 v1, 0x1

    sput v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->f:I

    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    if-nez v1, :cond_4

    .line 60
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    .line 61
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    const-wide/16 v4, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    .line 63
    :cond_4
    const/4 v1, 0x0

    sput v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->f:I

    .line 65
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "startAnrWatch"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static b()V
    .locals 4

    .line 73
    const-string v0, "ANRHandler"

    :try_start_0
    sget v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 74
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b()V

    .line 77
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b()V

    .line 80
    :cond_1
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    if-eqz v1, :cond_3

    .line 81
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 82
    sput-object v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->d:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    goto :goto_0

    .line 84
    :cond_2
    if-nez v1, :cond_3

    .line 85
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 87
    sput-object v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    .line 90
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "stopAnrWatch"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
