.class public Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;
.super Ljava/lang/Object;
.source "ProcessDataReporter.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a:J

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->f:Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;

    .line 60
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->c:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private a(J)V
    .locals 5
    .param p1, "deltaElasped"    # J

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->c:Landroid/content/Context;

    .line 118
    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2, v1}, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->onProcessAliveReport(ZLandroid/content/Context;JZ)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 120
    .local v2, "bundles":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "ProcessDataReporter"

    const-string/jumbo v4, "reportOnDayFirstly"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 126
    .local v1, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    const-string v3, "ProcessDataOnlyOnce"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 128
    invoke-static {v1, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;J)V

    .line 129
    invoke-direct {p0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 130
    return-void

    .line 121
    .end local v1    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    :cond_1
    :goto_0
    return-void
.end method

.method private a(JJ)V
    .locals 8
    .param p1, "currentTime"    # J
    .param p3, "deltaTime"    # J

    .line 101
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->b:J

    div-long/2addr v0, v2

    .line 102
    .local v0, "previousDay":J
    div-long v2, p1, v2

    .line 103
    .local v2, "currentDay":J
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    .line 104
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->d:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)V

    .line 106
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 107
    .local v4, "isOnDayFirstly":Z
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onTimeTickTrigger, time to report, deltaTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", isOnDayFirstly: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProcessDataReporter"

    invoke-interface {v5, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v4, :cond_1

    .line 111
    invoke-direct {p0, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(J)V

    .line 113
    :cond_1
    invoke-direct {p0, p3, p4, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(JZ)V

    .line 114
    return-void
.end method

.method private a(JZ)V
    .locals 5
    .param p1, "deltaElasped"    # J
    .param p3, "isOnDayFirstly"    # Z

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->c:Landroid/content/Context;

    .line 134
    const/4 v1, 0x0

    invoke-static {v1, v0, p1, p2, p3}, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->onProcessAliveReport(ZLandroid/content/Context;JZ)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 136
    .local v2, "bundles":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "ProcessDataReporter"

    const-string/jumbo v4, "reportOnEverytime"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 142
    .local v1, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    const-string v3, "ProcessDataMultiply"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 144
    invoke-static {v1, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;J)V

    .line 145
    invoke-direct {p0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 146
    return-void

    .line 137
    .end local v1    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(JJ)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;J)V
    .locals 7
    .param p0, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "deltaTime"    # J

    .line 149
    invoke-static {p1, p2}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "deltaTimeS":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addCommonExtParams, deltaTime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessDataReporter"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deltaTime"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "deltaTimeS"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "modelID"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "romVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "manufacturer":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getBrandName()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "brandName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getDisplayID()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "displayID":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getFingerPrint()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "fingerPrint":Ljava/lang/String;
    const-string/jumbo v6, "romVersion"

    invoke-virtual {p0, v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v6, "manufacturer"

    invoke-virtual {p0, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v6, "phoneBrand"

    invoke-virtual {p0, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v6, "displayId"

    invoke-virtual {p0, v6, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v6, "phoneFinger"

    invoke-virtual {p0, v6, v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 11
    .param p1, "bundles"    # Ljava/util/Map;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            ")V"
        }
    .end annotation

    .line 171
    const/4 v0, 0x1

    .line 173
    .local v0, "isNothing":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 174
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 175
    .local v5, "bizKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 177
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v7, "message":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 183
    .local v4, "key":Ljava/lang/String;
    move-object v4, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 187
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 194
    .local v10, "isAddAnd":Z
    :goto_2
    invoke-static {v7, v4, v9, v10}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->convertExtParams2StringBuilder(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 195
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "isAddAnd":Z
    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    .line 203
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "bizKey":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 205
    :cond_4
    const-string v2, "ProcessDataReporter"

    if-eqz v0, :cond_5

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "extractParamsAndReportPerformance, isNothing"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 210
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v3, v4, p2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_PERFORMANCE:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extractParamsAndReportPerformance, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->f:Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "processAlias":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processDataReportTime_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->d:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    .line 68
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    .line 70
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)V

    .line 72
    :cond_0
    return-void
.end method

.method public onTimeTickTrigger(Ljava/lang/String;Landroid/content/Context;J)Ljava/lang/Object;
    .locals 10
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deltaElasped"    # J

    .line 76
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 77
    return-object v6

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v4

    .line 81
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->e:J

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 82
    .local v4, "deltaTime":J
    move-wide v4, v0

    sget-wide v7, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a:J

    cmp-long v9, v0, v7

    if-gez v9, :cond_1

    .line 83
    return-object v6

    .line 87
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v7

    new-instance v8, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;JJ)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v7, v8, v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->postDelayed(Ljava/lang/Runnable;J)V

    .line 97
    return-object v6
.end method
