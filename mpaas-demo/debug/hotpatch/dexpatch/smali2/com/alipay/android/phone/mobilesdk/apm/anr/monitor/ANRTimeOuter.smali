.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;
.super Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;
.source "ANRTimeOuter.java"


# instance fields
.field protected a:J

.field private c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;J)V
    .locals 2
    .param p1, "anrMonitor"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;
    .param p2, "timeoutInterval"    # J

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;-><init>(J)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->a:J

    .line 16
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    .line 17
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->c:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;

    if-eqz v0, :cond_0

    .line 23
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a(JJ)V

    .line 25
    :cond_0
    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->c()V

    return-void
.end method
