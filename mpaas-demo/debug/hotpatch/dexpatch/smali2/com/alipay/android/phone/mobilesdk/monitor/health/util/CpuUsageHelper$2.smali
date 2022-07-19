.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;
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

    .line 77
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "CpuUsageHelper"

    .line 81
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->f(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;

    move-result-object v2

    move-object v3, v1

    .line 82
    .local v3, "callback":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v4, "Sample cpu occupancy rate error because of null callback."

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->g(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    move-result-object v2

    move-object v4, v1

    .line 87
    .local v4, "beforeSp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "Sample cpu occupancy rate error because of null pending sampling point."

    invoke-interface {v2, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    move-result-object v2

    move-object v5, v1

    .line 92
    .local v5, "afterSp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    move-object v5, v2

    if-nez v2, :cond_2

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v6, "Sample cpu occupancy rate error because second sampling point is null."

    invoke-interface {v2, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_2
    iget-wide v6, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->a:J

    iget-wide v8, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->a:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    mul-long v6, v6, v8

    iget-wide v8, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->b:J

    iget-wide v10, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->b:J

    sub-long/2addr v8, v10

    div-long/2addr v6, v8

    long-to-float v2, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    .line 98
    .local v2, "occupancyRate":F
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sample cpu occupancy rate end, rate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->c:J

    iget-wide v10, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->c:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v2    # "occupancyRate":F
    .end local v3    # "callback":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    .end local v4    # "beforeSp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    .end local v5    # "afterSp":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    .line 102
    .local v2, "tr":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->e(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Z

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    .line 106
    return-void
.end method
