.class final Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;
.super Ljava/lang/Object;
.source "ClientMonitorWakeupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;->c:Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/ClientMonitorWakeupReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClientMonitorWakeupReceiver"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
