.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;
.super Ljava/lang/Object;
.source "ProcessAliveHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 145
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 149
    const-string v0, "ProcessAlive"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v2

    const-string v3, "autostart_status"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;I)I

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reload AutoStartStatus from sp, value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v1

    .line 152
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
