.class public Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;
.super Ljava/lang/Object;
.source "APMTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;


# instance fields
.field private b:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;
    .locals 2

    .line 18
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;Ljava/lang/Runnable;)V

    .line 54
    .local v0, "job":Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 55
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 58
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;Ljava/lang/Runnable;)V

    .line 59
    .local v0, "job":Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;
    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 60
    return-void
.end method

.method public register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V
    .locals 3
    .param p1, "job"    # Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
    .param p2, "delayMillis"    # J

    .line 93
    if-nez p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APMTimer"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->start()V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V
    .locals 9
    .param p1, "job"    # Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
    .param p2, "delayMillis"    # J
    .param p4, "periodMillis"    # J

    .line 108
    if-nez p1, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APMTimer"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->start()V

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public start()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "APMTimer"

    const-string/jumbo v2, "start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "APMTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "APMTimer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "stop"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "APMTimer"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V
    .locals 3
    .param p1, "job"    # Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 123
    if-nez p1, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregister: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APMTimer"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
