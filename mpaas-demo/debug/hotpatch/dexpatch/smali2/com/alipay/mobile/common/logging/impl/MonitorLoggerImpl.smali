.class public Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;
.super Ljava/lang/Object;
.source "MonitorLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

.field private c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

.field private d:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

.field private e:Lcom/alipay/mobile/common/logging/render/DataflowRender;

.field private f:Lcom/alipay/mobile/common/logging/render/BatteryRender;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 58
    new-instance v0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    .line 59
    new-instance v0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 60
    new-instance v0, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/logging/render/DataflowRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/DataflowRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->e:Lcom/alipay/mobile/common/logging/render/DataflowRender;

    .line 62
    new-instance v0, Lcom/alipay/mobile/common/logging/render/BatteryRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/BatteryRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->f:Lcom/alipay/mobile/common/logging/render/BatteryRender;

    .line 64
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalExt"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 105
    .local v1, "params":Ljava/util/Map;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "mp_baseline"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    const-string/jumbo v2, "mp_module"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "mp_ext"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendExtParam(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    .line 251
    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 252
    return-void
.end method

.method public battery(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 6
    .param p1, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->f:Lcom/alipay/mobile/common/logging/render/BatteryRender;

    .line 277
    invoke-virtual {v5, p1}, Lcom/alipay/mobile/common/logging/render/BatteryRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 273
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 278
    return-void
.end method

.method public crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "extParam"    # Ljava/lang/String;

    .line 76
    move-object v0, p3

    .line 78
    .local v0, "ext":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/CrashBridge;->getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 79
    .local v3, "extExInfo":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 80
    move-object v0, v3

    .line 84
    .end local v3    # "extExInfo":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    .line 85
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-virtual {v2, p1, p2, v0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "render":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    move-object v1, v3

    .line 89
    .local v1, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "crash: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "logcatCrashInfo":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "MonitorLogger"

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string v6, "applog"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V

    .line 97
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->analyzeJavaCrash(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "extParam"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public dangerousUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failMsg"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v3, "KeyBiz"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 334
    .local v2, "content":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x2800

    if-le v0, v3, :cond_1

    .line 335
    return-void

    .line 337
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .line 338
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    const/4 v4, 0x1

    const-string v5, "isDangerousUpload"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "content"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public dataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 6
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 263
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->getLoggerLevel()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->e:Lcom/alipay/mobile/common/logging/render/DataflowRender;

    .line 264
    invoke-virtual {v5, p1}, Lcom/alipay/mobile/common/logging/render/DataflowRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 265
    return-void
.end method

.method public endLinkTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;

    .line 609
    return-void
.end method

.method public exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 116
    if-nez p2, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "ext":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-ne p1, v1, :cond_2

    .line 126
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/CrashBridge;->getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 130
    :cond_2
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    .line 134
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Native_Crash_In_Child_Thread:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 135
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    .line 140
    invoke-virtual {v6, p1, p2, v0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 136
    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    return-void

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    return-void

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    .line 150
    invoke-virtual {v6, p1, p2, v0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 146
    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 152
    return-void
.end method

.method public exception(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 162
    invoke-virtual {v5, v6, p1, p2, p3}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 161
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 165
    return-void
.end method

.method public footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    move-object v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p4

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 238
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 234
    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 239
    return-void
.end method

.method public keyBizTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failMsg"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    move-object v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 324
    const-string v8, "KeyBiz"

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 320
    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 325
    return-void
.end method

.method public mergeLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I

    .line 697
    return-void
.end method

.method public mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    move-object v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    return-void

    .line 306
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, v0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 310
    const-string v8, "BizCanNotUse"

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 306
    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 311
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 1
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V
    .locals 9
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p3, "customerParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    .line 190
    .local v0, "bizType":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 193
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 195
    invoke-static {v1, v0, p2, p3}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/PerformanceRender;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 190
    invoke-interface {v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 196
    return-void
.end method

.method public performance(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 9
    .param p1, "performanceID"    # Ljava/lang/String;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 213
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    .line 214
    .local v0, "bizType":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 217
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    const/4 v2, 0x0

    .line 219
    invoke-static {v1, v0, p2, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/PerformanceRender;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 214
    invoke-interface {v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 220
    return-void
.end method

.method public recordLinkTransaction(Ljava/lang/String;J[BLjava/util/ArrayList;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "node"    # [B
    .param p5, "fieldInfo"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[B",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/fulllink/msg/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 559
    return-void
.end method

.method public rollbackTransactioin(Ljava/lang/String;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;

    .line 658
    return-void
.end method

.method public setUploadSize(Ljava/lang/String;I)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 352
    return-void
.end method

.method public startLinkTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;
    .param p2, "linkName"    # Ljava/lang/String;
    .param p3, "rule"    # Ljava/lang/String;
    .param p4, "fields"    # Ljava/util/ArrayList;
    .param p5, "extMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 439
    return-void
.end method
