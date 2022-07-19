.class abstract Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;
.super Ljava/lang/Object;
.source "TimeOuter.java"


# instance fields
.field private a:Ljava/lang/Runnable;

.field protected b:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "timeoutInterval"    # J

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->a:Ljava/lang/Runnable;

    .line 22
    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 23
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->b:J

    .line 25
    :cond_0
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->b:J

    .line 26
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public b()V
    .locals 3

    .line 41
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/IllegalMonitorStateException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TimeOuter"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "ex":Ljava/lang/IllegalMonitorStateException;
    return-void
.end method

.method public c()V
    .locals 5

    .line 30
    const-string v0, "TimeOuter"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->a:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    return-void

    .line 32
    :catch_1
    move-exception v1

    .line 33
    .local v1, "ex":Ljava/lang/IllegalMonitorStateException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v1    # "ex":Ljava/lang/IllegalMonitorStateException;
    return-void
.end method
