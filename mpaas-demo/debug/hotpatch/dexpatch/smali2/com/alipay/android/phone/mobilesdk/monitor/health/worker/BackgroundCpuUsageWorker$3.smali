.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;
.super Ljava/lang/Object;
.source "BackgroundCpuUsageWorker.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 99
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Float;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Float;

    .line 102
    const-string v0, " ms."

    const-string v1, "Sample cpu thread information waste "

    const-string v2, "BackgroundCpuUsageWorker"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 104
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-interface {v6, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Ljava/lang/Float;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;->a(Ljava/lang/Float;)V

    return-void
.end method
