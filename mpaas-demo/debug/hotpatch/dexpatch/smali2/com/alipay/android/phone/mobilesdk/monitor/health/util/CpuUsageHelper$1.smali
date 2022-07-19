.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;
.super Ljava/lang/Object;
.source "CpuUsageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 59
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "CpuUsageHelper"

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 64
    .local v2, "sp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "Sample cpu occupancy rate error because of null sampling point."

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    .line 70
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .end local v2    # "sp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    return-void

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    .local v1, "tr":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->e(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Z

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
