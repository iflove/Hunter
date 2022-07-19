.class final Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;
.super Ljava/lang/Object;
.source "ClientMonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/ClientMonitorService;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alipay/mobile/logmonitor/ClientMonitorService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/ClientMonitorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/ClientMonitorService;

    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->e:Lcom/alipay/mobile/logmonitor/ClientMonitorService;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v3, "applog"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->uploadAfterSync(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/ClientMonitorService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/ClientMonitorService$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but params are incorrect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/ClientMonitorService;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".push.action.MONITOR_RECEIVED"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
