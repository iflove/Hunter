.class public Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;
.super Ljava/lang/Object;
.source "TianyanLoggingDispatcher.java"


# static fields
.field private static a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

.field private static b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

.field private static c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

.field static sIsFrameworkBackground:Z

.field static sIsMonitorBackground:Z

.field static sIsRelaxedBackground:Z

.field static sIsStrictBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsMonitorBackground:Z

    .line 20
    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsFrameworkBackground:Z

    .line 21
    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsStrictBackground:Z

    .line 22
    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsRelaxedBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acceptTimeTicksMadly()V
    .locals 4

    .line 155
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 160
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;->acceptTimeTicksMadly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TianyanLoggingDispatcher"

    const-string v3, "acceptTimeTicksMadly"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method static getBundleByClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    return-object v1

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;->getBundleByClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TianyanLoggingDispatcher"

    const-string v4, "getBundleNameByClassName"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-object v1
.end method

.method static getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "configKey"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    if-nez v0, :cond_0

    .line 181
    return-object p1

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TianyanLoggingDispatcher"

    const-string v3, "getConfigValueByKey"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    return-object p1
.end method

.method static isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 5
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p1, "diagnose"    # Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;->isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TianyanLoggingDispatcher"

    const-string v4, "isPowerConsumeAccept"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    return v1
.end method

.method static isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 5
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p1, "url"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 243
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;->isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TianyanLoggingDispatcher"

    const-string v4, "isTraficConsumeAccept"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    return v1
.end method

.method static notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 4
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 194
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;->notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TianyanLoggingDispatcher"

    const-string v3, "notePowerConsume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method static noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 4
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 223
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TianyanLoggingDispatcher"

    const-string v3, "noteTraficConsume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method static putCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 29
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 30
    return v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-nez v3, :cond_1

    .line 37
    sput-object p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, putCommonSimpleDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, putCommonSimpleDelegate, exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0
.end method

.method static putConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 71
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 72
    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-nez v3, :cond_1

    .line 79
    sput-object p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, putConfigServiceDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, putConfigServiceDelegate, exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v0
.end method

.method static putMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 113
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 114
    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-nez v3, :cond_1

    .line 121
    sput-object p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, putMonitorContextDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, putMonitorContextDelegate, exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0
.end method

.method static removeCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-ne v3, p0, :cond_1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, removeCommonSimpleDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, removeCommonSimpleDelegate, not yours: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0

    .line 51
    .end local v1    # "origin":Ljava/lang/String;
    .end local v2    # "processAlias":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method static removeConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 92
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-ne v3, p0, :cond_1

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, removeConfigServiceDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, removeConfigServiceDelegate, not yours: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v0

    .line 93
    .end local v1    # "origin":Ljava/lang/String;
    .end local v2    # "processAlias":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method static removeMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z
    .locals 7
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 134
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "origin":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "processAlias":Ljava/lang/String;
    sget-object v3, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    const-string v4, "TianyanLoggingDispatcher"

    if-ne v3, p0, :cond_1

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->c:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, removeMonitorContextDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, removeMonitorContextDelegate, not yours: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return v0

    .line 135
    .end local v1    # "origin":Ljava/lang/String;
    .end local v2    # "processAlias":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method
