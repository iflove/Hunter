.class public Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;
.super Ljava/lang/Object;
.source "TrafficPowerHandler.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a:J

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->i:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->j:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->k:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->l:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->m:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->n:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->o:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->p:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->q:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->r:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->f:Ljava/lang/Object;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->g:J

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->h:Z

    .line 135
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;
    .locals 2

    .line 121
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    .line 117
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c:Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 113
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 4
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)Z

    move-result v0

    .line 145
    .local v0, "shouldRecord":Z
    invoke-static {p0, v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;Z)V

    .line 146
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "shouldRecord":Z
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TrafficPowerHandler"

    const-string/jumbo v3, "notePowerConsume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;Z)V
    .locals 7
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .param p1, "shouldRecord"    # Z

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    const-string v0, "1"

    const-string v1, "0"

    const-string v2, ", "

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->getBackgroundStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "backgroundStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    const-string v3, "="

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->serializeMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "paramsValue":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notePowerConsume"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 183
    .local v4, "message":Ljava/lang/StringBuilder;
    move-object v4, v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v3, ", time="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->time:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, ", power="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, ", bundle="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->bundle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v3, ", diagnose="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->diagnose:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TrafficPowerHandler"

    invoke-interface {v2, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)V
    .locals 11
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .param p2, "record"    # Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    .line 407
    if-nez p2, :cond_0

    .line 408
    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    .line 414
    iget-object v0, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    .line 419
    :cond_2
    const-string v0, "1"

    const-string v1, "0"

    const-string v2, ", "

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->getBackgroundStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "backgroundStatus":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkTypeOptimized()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "networkType":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    const-string v3, ", "

    const-string v4, "="

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->serializeMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "paramsValue":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    const-string v4, ", "

    const-string v5, "="

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->serializeMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "extParamsValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "noteTraficConsume"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 425
    .local v5, "message":Ljava/lang/StringBuilder;
    move-object v5, v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const-string v4, ", bundle="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bundle:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v4, ", appId="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v4, ", diagnose="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v4, ", isUpload="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 433
    const-string v4, ", fileId="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v4, ", bizId="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v4, ", currentPage="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v4, ", currentUrl="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v6, "TrafficPowerHandler"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 443
    :try_start_0
    iput-object v1, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    .line 444
    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    iget-wide v6, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    iget-wide v8, p2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    add-long/2addr v6, v8

    const-wide/32 v8, 0xc800

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 452
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e()V

    .line 454
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a()Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 458
    return-void

    .line 454
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    move-object/from16 v1, p2

    const-string/jumbo v0, "mtbiz_days"

    const-string v2, "TrafficPowerHandler"

    .line 673
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trafficDegradeWarning_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 674
    .local v3, "spName":Ljava/lang/String;
    move-object/from16 v4, p0

    :try_start_1
    iget-object v5, v4, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .local v8, "todayCount":J
    const/4 v10, 0x0

    .line 677
    .local v10, "spObject":Landroid/content/SharedPreferences;
    move-object v10, v5

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 678
    .local v11, "previousDay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-wide v15, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a:J

    div-long/2addr v13, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 680
    .local v13, "currentDay":J
    const-string/jumbo v5, "mtbiz_count"

    cmp-long v17, v11, v13

    if-nez v17, :cond_2

    .line 681
    const-wide/16 v6, 0x0

    :try_start_2
    invoke-interface {v10, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 683
    move-wide v8, v15

    cmp-long v0, v15, v6

    if-gez v0, :cond_0

    .line 684
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 685
    :cond_0
    const-wide/16 v6, 0x1

    cmp-long v0, v8, v6

    if-ltz v0, :cond_1

    .line 686
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "warningTraficDegradOrException, refused by count "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void

    .line 691
    :cond_1
    :goto_0
    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 692
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 695
    :cond_2
    const-wide/16 v8, 0x1

    .line 696
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 697
    invoke-interface {v6, v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 698
    const-wide/16 v6, 0x1

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "warningTraficDegradOrException, permitted by count "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " and reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "extParams":Ljava/util/Map;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v5, :cond_3

    .line 707
    :try_start_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 708
    move-object v0, v5

    const-string v6, "detail"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, p3

    :try_start_4
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 712
    .end local v0    # "extParams":Ljava/util/Map;
    .end local v3    # "spName":Ljava/lang/String;
    .end local v8    # "todayCount":J
    .end local v10    # "spObject":Landroid/content/SharedPreferences;
    .end local v11    # "previousDay":J
    .end local v13    # "currentDay":J
    :catchall_0
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_3

    .line 706
    .restart local v0    # "extParams":Ljava/util/Map;
    .restart local v3    # "spName":Ljava/lang/String;
    .restart local v8    # "todayCount":J
    .restart local v10    # "spObject":Landroid/content/SharedPreferences;
    .restart local v11    # "previousDay":J
    .restart local v13    # "currentDay":J
    :cond_3
    move-object/from16 v7, p3

    .line 710
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v5

    const-string/jumbo v6, "mtbiz_trafic_degrade"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v15, p1

    :try_start_5
    invoke-interface {v5, v6, v15, v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 714
    .end local v0    # "extParams":Ljava/util/Map;
    .end local v3    # "spName":Ljava/lang/String;
    .end local v8    # "todayCount":J
    .end local v10    # "spObject":Landroid/content/SharedPreferences;
    .end local v11    # "previousDay":J
    .end local v13    # "currentDay":J
    return-void

    .line 712
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v15, p1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v4, p0

    :goto_4
    move-object/from16 v15, p1

    move-object/from16 v7, p3

    .line 713
    .local v0, "t":Ljava/lang/Throwable;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "warningTraficDegradOrException"

    invoke-interface {v3, v2, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "TrafficPowerHandler"

    .line 586
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->f()V

    .line 589
    iget-boolean v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->h:Z

    if-nez v2, :cond_0

    .line 590
    return v1

    .line 594
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 595
    return v3

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->n:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->o:Ljava/lang/String;

    .line 600
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->p:Ljava/lang/String;

    .line 601
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->q:Ljava/lang/String;

    .line 602
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->r:Ljava/lang/String;

    .line 603
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 610
    :cond_2
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 612
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->j:Ljava/lang/String;

    .line 613
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->k:Ljava/lang/String;

    .line 614
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->l:Ljava/lang/String;

    .line 615
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->m:Ljava/lang/String;

    .line 616
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refuse TraficConsumeAccept, config: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return v3

    .line 624
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    .line 626
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v2

    .line 629
    goto :goto_0

    .line 627
    :catchall_0
    move-exception v2

    .line 628
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TraficConsumeAccept, url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    const-string/jumbo v4, "trafficDegrade"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 636
    .local v2, "traficDegradeSp":Landroid/content/SharedPreferences;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v5, ", degrade: "

    const/4 v6, 0x0

    if-nez v4, :cond_6

    .line 637
    :try_start_3
    invoke-interface {v2, p1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v6

    .line 639
    .local v7, "degradeHost":Ljava/lang/String;
    move-object v7, v4

    if-eqz v4, :cond_7

    const-string v4, "host"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 640
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refuse TraficConsumeAccept, host: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v4, "degrade_by_host"

    invoke-direct {p0, v4, p1, v7}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return v3

    .line 636
    .end local v7    # "degradeHost":Ljava/lang/String;
    :cond_6
    move-object v7, v6

    .line 648
    :cond_7
    invoke-interface {v2, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    .line 650
    .local v6, "degradeUrl":Ljava/lang/String;
    move-object v6, v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 651
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refuse TraficConsumeAccept, url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v4, "degrade_by_url"

    invoke-direct {p0, v4, p2, v6}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return v3

    .line 666
    .end local v2    # "traficDegradeSp":Landroid/content/SharedPreferences;
    .end local v6    # "degradeUrl":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 605
    :cond_9
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ignore TraficConsumeAccept, config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    return v1

    .line 657
    :catchall_1
    move-exception v2

    .line 658
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "TraficConsumeAccept"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    :try_start_4
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "detail":Ljava/lang/String;
    const-string/jumbo v3, "occur_exception"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 665
    .end local v0    # "detail":Ljava/lang/String;
    goto :goto_2

    .line 663
    :catchall_2
    move-exception v0

    .line 668
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    return v1
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 15
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    const-string v1, "isPrintReqURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "printUrl":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-string v1, "http://www.donotshow.me/instead"

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 284
    .end local v0    # "printUrl":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 285
    .local v0, "recordUrl":Ljava/lang/String;
    const/4 v1, 0x1

    .line 287
    .local v1, "shouldRecord":Z
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v4, ", "

    const-string v5, "TrafficPowerHandler"

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 288
    const/4 v1, 0x0

    move-object v2, v6

    goto/16 :goto_2

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_2

    .line 291
    const/4 v1, 0x0

    move-object v2, v6

    goto/16 :goto_2

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_MDAP:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_3

    .line 295
    const/4 v1, 0x0

    move-object v2, v6

    goto/16 :goto_2

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v7, "_"

    if-ne v2, v3, :cond_5

    .line 298
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 299
    const-string v2, "__host_push__"

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 301
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->getDes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v6

    goto/16 :goto_2

    .line 303
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_7

    .line 304
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 305
    const-string v2, "__host_sync__"

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 307
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->getDes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v6

    goto/16 :goto_2

    .line 309
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-wide/16 v7, 0x0

    if-ne v2, v3, :cond_9

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 311
    const-string v2, "__host_nbnet__"

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 313
    :cond_8
    const-string v2, "NBN_KEY_TRACE_ID"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->removeParam(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 314
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    cmp-long v9, v2, v7

    if-nez v9, :cond_b

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    cmp-long v9, v2, v7

    if-nez v9, :cond_b

    .line 315
    const/4 v1, 0x0

    move-object v2, v6

    goto :goto_2

    .line 317
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->WEB_SOCKET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_b

    .line 318
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v2

    .line 322
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preHandleDataflowModel, webSocket url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_a
    :goto_0
    move-object v2, v6

    :goto_1
    iget-wide v9, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_c

    iget-wide v9, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_c

    .line 327
    const/4 v1, 0x0

    goto :goto_2

    .line 331
    :cond_b
    move-object v2, v6

    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 333
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    goto :goto_3

    .line 334
    :catchall_1
    move-exception v2

    .line 335
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "preHandleDataflowModel, url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    .line 341
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;

    array-length v3, v2

    move-object v7, v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_11

    aget-object v8, v2, v5

    .line 342
    .local v7, "header":Lorg/apache/http/Header;
    move-object v7, v8

    if-eqz v8, :cond_f

    .line 345
    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "value":Ljava/lang/String;
    const-string v10, "Content-Type"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 349
    const-string v10, "Cache-Control"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 350
    const-string v10, "Expires"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 351
    const-string v10, "Last-Modified"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 352
    const-string v10, "ETag"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 354
    :cond_e
    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 341
    .end local v7    # "header":Lorg/apache/http/Header;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 340
    :cond_10
    move-object v7, v6

    .line 358
    :cond_11
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;

    if-eqz v3, :cond_14

    .line 359
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;

    array-length v3, v2

    :goto_5
    if-ge v4, v3, :cond_14

    aget-object v5, v2, v4

    .line 360
    .restart local v7    # "header":Lorg/apache/http/Header;
    move-object v7, v5

    if-eqz v5, :cond_13

    .line 363
    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 366
    .local v8, "value":Ljava/lang/String;
    const-string v9, "If-Modified-Since"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 367
    const-string v9, "If-None-Match"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 369
    :cond_12
    invoke-virtual {p0, v5, v8}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 359
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "header":Lorg/apache/http/Header;
    .end local v8    # "value":Ljava/lang/String;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 374
    :cond_14
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "romVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getBrandName()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "brandName":Ljava/lang/String;
    const-string/jumbo v4, "romVersion"

    invoke-virtual {p0, v4, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 378
    const-string/jumbo v4, "phoneBrand"

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 381
    .end local v2    # "romVersion":Ljava/lang/String;
    .end local v3    # "brandName":Ljava/lang/String;
    :cond_15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const-string v4, "appID"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "current_appid"

    if-nez v3, :cond_16

    .line 383
    invoke-virtual {p0, v4, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 385
    :cond_16
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 386
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 388
    :cond_17
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 389
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    const-string/jumbo v4, "mm_biztype"

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 391
    :cond_18
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 392
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    const-string/jumbo v4, "nb_fileid"

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 394
    :cond_19
    iget-boolean v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    if-eqz v3, :cond_1a

    .line 395
    iget-boolean v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "nb_upload"

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 398
    :cond_1a
    if-eqz v1, :cond_1c

    .line 399
    iget-object v8, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    iget-wide v9, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    iget-wide v11, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 400
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->getDes()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_1b
    nop

    :goto_6
    move-object v13, v6

    iget-object v14, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    .line 399
    move-object v7, v0

    invoke-static/range {v7 .. v14}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v3

    return-object v3

    .line 402
    :cond_1c
    return-object v6
.end method

.method public static b()V
    .locals 0

    .line 140
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)Z
    .locals 3
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 154
    const/4 v0, 0x1

    .line 156
    .local v0, "shouldRecord":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    if-ne v1, v2, :cond_0

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    if-ne v1, v2, :cond_1

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SEND_BROADCAST:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    if-ne v1, v2, :cond_2

    .line 163
    const/4 v0, 0x0

    .line 166
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "appID"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    const-string v1, "current_appid"

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 171
    :cond_3
    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 813
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    const-string v3, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    goto :goto_0

    .line 818
    :catchall_0
    move-exception v0

    .line 821
    :goto_0
    return-object v1
.end method

.method private static c(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 4
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 198
    const/4 v0, 0x1

    .line 200
    .local v0, "shouldReport":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    if-ne v1, v2, :cond_1

    .line 202
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    const-string/jumbo v1, "mode"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "lbsMode":Ljava/lang/String;
    const-string v2, "gpsEnable"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "useGps":Ljava/lang/String;
    const-string/jumbo v3, "once"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    .end local v1    # "lbsMode":Ljava/lang/String;
    .end local v2    # "useGps":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SEND_BROADCAST:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    if-ne v1, v2, :cond_2

    .line 211
    const/4 v0, 0x0

    .line 214
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->report()V

    .line 217
    :cond_3
    return-void
.end method

.method private static c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 10
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, "shouldReport":Z
    const/4 v1, 0x0

    .line 465
    .local v1, "networkType":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_MDAP:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v4, "WIFI"

    if-ne v2, v3, :cond_0

    .line 466
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MDAP_LOG:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_1

    .line 469
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    if-nez v2, :cond_8

    .line 472
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkTypeOptimized()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 475
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_3

    .line 480
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    const-string v3, "chat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 484
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_6

    .line 488
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    if-nez v2, :cond_4

    .line 489
    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    const-string v3, "UCHAT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    const/4 v0, 0x0

    goto :goto_0

    .line 494
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    const-string v3, "UCHAT-G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-wide/16 v5, 0x0

    if-ne v2, v3, :cond_7

    .line 499
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    .line 500
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->WEB_SOCKET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_8

    .line 503
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    .line 504
    const/4 v0, 0x0

    .line 508
    :cond_8
    :goto_0
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    if-nez v2, :cond_a

    .line 510
    if-nez v1, :cond_9

    .line 511
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkTypeOptimized()Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 514
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    add-long/2addr v2, v5

    const-wide/16 v5, 0x4000

    cmp-long v7, v2, v5

    if-gez v7, :cond_a

    .line 515
    const/4 v0, 0x0

    .line 520
    :cond_a
    if-eqz v0, :cond_f

    .line 521
    if-nez v1, :cond_b

    .line 522
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkTypeOptimized()Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_b
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v2

    if-nez v2, :cond_e

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    add-long/2addr v2, v5

    const-wide/32 v5, 0x80000

    cmp-long v7, v2, v5

    if-ltz v7, :cond_c

    goto :goto_1

    .line 528
    :cond_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 529
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->setLoggerLevel(I)V

    goto :goto_2

    .line 532
    :cond_d
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->setLoggerLevel(I)V

    goto :goto_2

    .line 526
    :cond_e
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->setLoggerLevel(I)V

    .line 536
    :cond_f
    :goto_2
    const-string/jumbo v2, "tmp_cost_time"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "uptime":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->removeParam(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 539
    if-eqz v0, :cond_10

    .line 540
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    .line 543
    :cond_10
    const-wide v4, 0x7fffffffffffffffL

    .line 544
    .local v4, "costTime":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 546
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 547
    move-wide v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, v6

    .line 550
    goto :goto_3

    .line 548
    :catchall_0
    move-exception v2

    .line 552
    :cond_11
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->isDebuggable()Z

    move-result v2

    if-nez v2, :cond_12

    const-wide/16 v6, 0xa

    cmp-long v2, v4, v6

    if-lez v2, :cond_13

    .line 553
    :cond_12
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "noteTraficConsume cost uptime millis: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TrafficPowerHandler"

    invoke-interface {v2, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_13
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 7

    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 719
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->g:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 721
    sget-wide v4, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 722
    return-void

    .line 724
    :cond_0
    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->g:J

    .line 726
    const-string/jumbo v0, "monitor_TraficDegradeEnable"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "traficDegradeEnable":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->h:Z

    .line 729
    const-string/jumbo v4, "monitor_TraficDegradeUrl_1"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->i:Ljava/lang/String;

    .line 730
    const-string/jumbo v4, "monitor_TraficDegradeUrl_2"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->j:Ljava/lang/String;

    .line 731
    const-string/jumbo v4, "monitor_TraficDegradeUrl_3"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->k:Ljava/lang/String;

    .line 733
    const-string/jumbo v4, "monitor_TraficDegradeSwUrl_1"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->l:Ljava/lang/String;

    .line 734
    const-string/jumbo v4, "monitor_TraficDegradeSwUrl_2"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->m:Ljava/lang/String;

    .line 736
    const-string/jumbo v4, "monitor_TraficIgnoreUrl_1"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->n:Ljava/lang/String;

    .line 737
    const-string/jumbo v4, "monitor_TraficIgnoreUrl_2"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->o:Ljava/lang/String;

    .line 738
    const-string/jumbo v4, "monitor_TraficIgnoreUrl_3"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->p:Ljava/lang/String;

    .line 740
    const-string/jumbo v4, "monitor_TraficIgnoreSwUrl_1"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->q:Ljava/lang/String;

    .line 741
    const-string/jumbo v4, "monitor_TraficIgnoreSwUrl_2"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->r:Ljava/lang/String;

    .line 743
    iget-boolean v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->h:Z

    if-eqz v1, :cond_1

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryToCheckConfigs: DegradeEnable"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 745
    .local v4, "message":Ljava/lang/StringBuilder;
    move-object v4, v1

    const-string v5, ", DegradeUrl_1: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, ", DegradeUrl_2: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->j:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v1, ", DegradeUrl_3: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v1, ", DegradeSwUrl_1: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->l:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string v1, ", DegradeSwUrl_2: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v1, ", IgnoreUrl_1: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->n:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v1, ", IgnoreUrl_2: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->o:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v1, ", IgnoreUrl_3: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->p:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v1, ", IgnoreSwUrl_1: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->q:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v1, ", IgnoreSwUrl_2: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->r:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TrafficPowerHandler"

    invoke-interface {v1, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .end local v4    # "message":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 11
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 225
    const/4 v0, 0x1

    .line 227
    .local v0, "shouldHandle":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "uptime":Ljava/lang/String;
    const-string/jumbo v2, "tmp_cost_time"

    invoke-virtual {p1, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 230
    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 231
    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    .line 234
    .local v3, "bizTypes":[Ljava/lang/String;
    move-object v3, v2

    array-length v2, v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 235
    const/4 v0, 0x0

    .line 236
    array-length v2, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v3, v5

    .line 238
    .local v6, "bizType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->cloneMirror()Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v7

    .line 239
    .local v4, "subModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v4, v7

    iput-object v6, v7, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    .line 240
    iget-wide v7, v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    array-length v9, v3

    int-to-long v9, v9

    div-long/2addr v7, v9

    iput-wide v7, v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    .line 241
    iget-wide v7, v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    array-length v9, v3

    int-to-long v9, v9

    div-long/2addr v7, v9

    iput-wide v7, v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    .line 243
    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v7

    .line 244
    .local v7, "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    invoke-direct {p0, v4, v7}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)V

    .line 245
    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 236
    .end local v4    # "subModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .end local v6    # "bizType":Ljava/lang/String;
    .end local v7    # "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v3

    goto :goto_1

    .line 234
    :cond_1
    move-object v4, v3

    .line 252
    .end local v3    # "bizTypes":[Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->WEB_SOCKET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v2, v3, :cond_3

    .line 253
    const/4 v0, 0x0

    .line 254
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v2

    move-object v3, v4

    .line 256
    .local v3, "modelToReport":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v3, v2

    if-eqz v2, :cond_3

    .line 257
    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v2

    .line 258
    .local v2, "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)V

    .line 259
    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 263
    .end local v2    # "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .end local v3    # "modelToReport":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    :cond_3
    if-eqz v0, :cond_4

    .line 264
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v2

    .line 265
    .restart local v2    # "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)V

    .line 266
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v0    # "shouldHandle":Z
    .end local v1    # "uptime":Ljava/lang/String;
    .end local v2    # "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    :cond_4
    return-void

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TrafficPowerHandler"

    const-string/jumbo v3, "noteTraficConsume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p2, "url"    # Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne p1, v0, :cond_0

    .line 560
    const-string v0, "__host_nbnet__"

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 562
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne p1, v0, :cond_1

    .line 563
    const-string v0, "__host_push__"

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 565
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne p1, v0, :cond_2

    .line 566
    const-string v0, "__host_sync__"

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 569
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 574
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "cfg"    # Ljava/lang/String;

    .line 760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    return-void

    .line 764
    :cond_0
    :try_start_0
    const-string v0, ".monitor.action.REPORT_TRAFIC_STRATEGY"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 765
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "cfg"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    return-void

    .line 769
    :catchall_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateTraficDegradeCfg, error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrafficPowerHandler"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final d()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 9

    .line 775
    const-string v0, "TrafficPowerHandler"

    new-instance v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 778
    .local v1, "consumeInfo":Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 779
    .local v2, "now":J
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->load(Z)V

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 781
    .local v4, "spend":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loadTrafficConsumeInfo, spend: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    .end local v2    # "now":J
    .end local v4    # "spend":J
    goto :goto_0

    .line 783
    :catchall_0
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "loadTrafficConsumeInfo"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 786
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public final e()V
    .locals 7

    .line 790
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 793
    .local v2, "recordSize":I
    move v2, v1

    if-nez v1, :cond_0

    .line 794
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 797
    :cond_0
    :try_start_2
    const-string v1, ".monitor.action.NOTE_TRAFIC_CONSUME"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    .line 798
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    const-string v4, "TrafficRecordList"

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 799
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 801
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "TrafficPowerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "flushTraficConsume, push service will upload, records size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    .end local v2    # "recordSize":I
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 805
    :catchall_0
    move-exception v1

    .line 806
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TrafficPowerHandler"

    const-string v4, "flushTraficConsume"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
