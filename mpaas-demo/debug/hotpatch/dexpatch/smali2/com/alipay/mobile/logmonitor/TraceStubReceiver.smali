.class public Lcom/alipay/mobile/logmonitor/TraceStubReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TraceStubReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 118
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V

    .line 121
    .local v0, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "userID"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    .line 122
    const-string/jumbo v2, "taskID"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 123
    const-string/jumbo v2, "type"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 125
    const-string v2, "fileName"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 126
    const-string/jumbo v2, "networkCondition"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 127
    const-string v2, "isForceUpload"

    iget-boolean v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 128
    const-string v2, "fromTime"

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 129
    const-string/jumbo v2, "toTime"

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 132
    :try_start_1
    const-string v2, "fromType"

    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NONE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "fromType":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v1    # "fromType":Ljava/lang/String;
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    .line 139
    :goto_0
    :try_start_2
    const-string/jumbo v2, "traceviewTime"

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    .line 140
    const-string/jumbo v2, "traceviewSize"

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    .line 141
    const-string/jumbo v2, "stackTracerTime"

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    .line 142
    const-string/jumbo v2, "stackTracerInterval"

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    goto :goto_1

    .line 143
    :catchall_1
    move-exception v2

    .line 148
    :goto_1
    :try_start_3
    const-string/jumbo v2, "retrieveFilePath"

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 151
    goto :goto_2

    .line 149
    :catchall_2
    move-exception v2

    .line 153
    :goto_2
    :try_start_4
    const-string v2, "isPositive"

    iget-boolean v3, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 157
    goto :goto_3

    .line 155
    :catchall_3
    move-exception v2

    .line 156
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseDiagnoseTaskByIntent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TraceStubReceiver"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_3
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "TraceStubReceiver"

    .line 53
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "monitor.action.dump.traceview"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/TraceStubReceiver;->a(Landroid/os/Bundle;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    move-result-object v2

    .line 61
    .local v2, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "traceName":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-direct {v4, p1, v3, v2}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    const/4 v5, 0x0

    .line 63
    .local v5, "tracingUploader":Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
    move-object v5, v4

    new-instance v6, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$1;

    invoke-direct {v6, p0, v2}, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$1;-><init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 73
    invoke-virtual {v5}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a()V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "traceview in wallet_process"

    invoke-interface {v4, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local v3    # "traceName":Ljava/lang/String;
    .end local v5    # "tracingUploader":Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
    return-void

    :cond_1
    const-string/jumbo v2, "monitor.action.dump.stacktracer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 78
    return-void

    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/TraceStubReceiver;->a(Landroid/os/Bundle;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    move-result-object v2

    .line 81
    .restart local v2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;-><init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    .line 97
    .end local v2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    return-void

    :cond_3
    const-string/jumbo v2, "monitor.action.MONITOR_POWER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "tracethread in wallet_process"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;-><init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    return-void

    .line 107
    :cond_4
    const-string/jumbo v2, "monitor.action.dump.sensor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    new-instance v2, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;

    invoke-direct {v2}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "logCategory":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "logCategory":Ljava/lang/String;
    :cond_5
    return-void

    .line 112
    :catchall_0
    move-exception v1

    .line 113
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "onReceive"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
