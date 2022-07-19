.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;
.super Ljava/lang/Object;
.source "AppHealthHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 108
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Z)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;I)V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 116
    .local v2, "curTime":J
    move-wide v2, v0

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 117
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Send flush event but in time gap( "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 119
    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ), just skip. trigger: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v4, "AppHealthHandler"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-static {v0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;J)J

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c(Ljava/lang/String;)V

    .line 126
    return-void
.end method
