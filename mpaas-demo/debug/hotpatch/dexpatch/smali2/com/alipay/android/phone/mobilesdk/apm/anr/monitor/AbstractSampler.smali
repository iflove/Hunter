.class public abstract Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;
.super Ljava/lang/Object;
.source "AbstractSampler.java"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected c:J

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "sampleInterval"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->d:Ljava/lang/Runnable;

    .line 36
    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 37
    const-wide/16 p1, 0x3e8

    .line 39
    :cond_0
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->c:J

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    .line 13
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->d:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/IllegalMonitorStateException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AbstractSampler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "ex":Ljava/lang/IllegalMonitorStateException;
    return-void
.end method

.method public final b()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/IllegalMonitorStateException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AbstractSampler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "ex":Ljava/lang/IllegalMonitorStateException;
    return-void
.end method

.method abstract c()V
.end method
