.class public Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;
.super Ljava/lang/Object;
.source "TimestampInfoImpl.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/TimestampInfo;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->b:J

    .line 25
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->c:J

    .line 26
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->d:J

    .line 27
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->e:J

    .line 28
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->f:J

    .line 29
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->g:J

    .line 30
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->h:J

    .line 31
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->i:J

    .line 32
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->j:J

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->k:I

    .line 36
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "traceSuffix"    # Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " process should not invoke this, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isntMainProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->stackTraceToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "stackTrace":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TimestampInfo"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v0    # "stackTrace":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getClientCurrentStartupTime()J
    .locals 5

    .line 110
    const-string v0, "getClientCurrentStartupTime"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    return-wide v1

    .line 114
    :cond_0
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->i:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->i:J

    .line 117
    :cond_1
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->i:J

    return-wide v0
.end method

.method public getClientPreviousStartupTime()J
    .locals 5

    .line 122
    const-string v0, "getClientPreviousStartupTime"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    return-wide v1

    .line 126
    :cond_0
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->j:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 127
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    const-string v1, "clientStartupTime"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->j:J

    .line 129
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getClientCurrentStartupTime()J

    move-result-wide v2

    .line 130
    .local v2, "startupTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Ljava/lang/String;J)V

    .line 132
    .end local v2    # "startupTime":J
    :cond_1
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->j:J

    return-wide v0
.end method

.method public getDeviceCurrentRebootExactTime()J
    .locals 5

    .line 41
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->b:J

    .line 44
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->b:J

    return-wide v0
.end method

.method public getDeviceCurrentRebootFuzzyTime()J
    .locals 5

    .line 49
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getDeviceCurrentRebootExactTime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->TIME_FUZZ_SCALE:J

    div-long/2addr v0, v2

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->TIME_FUZZ_SCALE:J

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->c:J

    .line 52
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->c:J

    return-wide v0
.end method

.method public getDeviceLatestRebootExactTime()J
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    const-string v1, "deviceRebootTime"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->d:J

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getDeviceCurrentRebootExactTime()J

    move-result-wide v2

    .line 61
    .local v2, "rebootTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Ljava/lang/String;J)V

    .line 63
    .end local v2    # "rebootTime":J
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->d:J

    return-wide v0
.end method

.method public getDeviceLatestRebootFuzzyTime()J
    .locals 5

    .line 68
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getDeviceLatestRebootExactTime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->TIME_FUZZ_SCALE:J

    div-long/2addr v0, v2

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->TIME_FUZZ_SCALE:J

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->e:J

    .line 71
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->e:J

    return-wide v0
.end method

.method public getProcessCurrentLaunchElapsedTime()J
    .locals 5

    .line 91
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->g:J

    .line 94
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->g:J

    return-wide v0
.end method

.method public getProcessCurrentLaunchNaturalTime()J
    .locals 5

    .line 83
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->f:J

    .line 86
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->f:J

    return-wide v0
.end method

.method public getProcessPreviousLaunchTime()J
    .locals 5

    .line 99
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    const-string/jumbo v1, "processLaunchTime"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->h:J

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v2

    .line 103
    .local v2, "launchTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Ljava/lang/String;J)V

    .line 105
    .end local v2    # "launchTime":J
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->h:J

    return-wide v0
.end method

.method public isDeviceRebootRecently()Z
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getDeviceCurrentRebootExactTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->getDeviceLatestRebootExactTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->TIME_FUZZ_SCALE:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessLaunchFirstly()Z
    .locals 3

    .line 137
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->k:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    const-string/jumbo v2, "processLaunchFirstly"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->k:I

    .line 140
    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;->k:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
