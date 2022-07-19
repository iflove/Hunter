.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;
.super Ljava/lang/Object;
.source "ANRMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field public static a:Z


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z

.field private f:Z

.field private final g:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;

.field private final h:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;

.field private final i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

.field private final j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 7
    .param p1, "blockThresholdMillis"    # J
    .param p3, "anrErrorCode"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    .line 30
    const-string v0, "1000"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->c:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    .line 33
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 40
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->k:Z

    .line 43
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    .line 44
    iput-object p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->c:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    const-wide/16 v3, 0x5

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->g:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;

    .line 46
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    const-wide/16 v5, 0x2

    mul-long v1, v1, v5

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->h:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;

    .line 47
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    .line 48
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->b:J

    const-wide/16 v3, 0xa

    div-long v3, v1, v3

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;J)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string/jumbo v2, "new ANRMonitor"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private c()V
    .locals 1

    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a:Z

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->g:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->a()V

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->h:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->a()V

    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;->a()V

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->c()V

    .line 195
    return-void
.end method

.method private d()V
    .locals 1

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a:Z

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->b()V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->h:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->b()V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;->b()V

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->g:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->b()V

    .line 203
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string/jumbo v2, "start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "already started"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->addMessageLogging(Landroid/util/Printer;)V

    .line 88
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    .line 91
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->addMessageLogging(Landroid/util/Printer;)V

    .line 92
    return-void
.end method

.method protected final a(JJ)V
    .locals 18
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 110
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v6, "ANRMonitor"

    const-string/jumbo v7, "notifyBlockEvent"

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a()Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b()V

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "reportServer":Z
    iget-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_0

    .line 115
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 114
    :cond_0
    move v7, v0

    .line 118
    .end local v0    # "reportServer":Z
    .local v7, "reportServer":Z
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->b(JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    move-object v9, v8

    .line 119
    .local v9, "finalStack":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "null"

    move-object v9, v0

    .line 122
    :cond_1
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->c:Ljava/lang/String;

    .line 123
    .local v0, "errorCodeToReport":Ljava/lang/String;
    invoke-static {v9}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 124
    const-string v10, "1001"

    move-object v0, v10

    .line 127
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v11, v8

    .line 128
    .local v11, "mParams":Ljava/util/Map;
    move-object v11, v10

    const-string/jumbo v12, "stackFrame"

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v10, "errorCode"

    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v10

    const-string/jumbo v12, "viewID"

    invoke-interface {v10, v12}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v8

    .line 131
    .local v12, "viewId":Ljava/lang/String;
    move-object v12, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 132
    const-string v10, "currentPage"

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v12}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 135
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->b()Ljava/lang/String;

    move-result-object v10

    move-object v13, v8

    .line 136
    .local v13, "currentUrl":Ljava/lang/String;
    move-object v13, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 137
    const-string v10, "currentUrl"

    invoke-interface {v11, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 141
    .end local v13    # "currentUrl":Ljava/lang/String;
    :cond_3
    move-object v13, v8

    :cond_4
    :goto_1
    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v13, "bundleUpdates":Ljava/lang/String;
    move-object v13, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 143
    const-string v10, "bundleUpdates"

    invoke-interface {v11, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_5
    invoke-static/range {p1 .. p4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->a(JJ)Ljava/lang/String;

    move-result-object v10

    move-object v14, v8

    .line 146
    .local v14, "threadsDump":Ljava/lang/String;
    move-object v14, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 147
    const-string/jumbo v10, "threadsTrace"

    invoke-interface {v11, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_6
    invoke-static/range {p1 .. p4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->a(JJ)Ljava/lang/String;

    move-result-object v10

    move-object v15, v8

    .line 150
    .local v15, "stacks":Ljava/lang/String;
    move-object v15, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 151
    const-string v10, "historyStacks"

    invoke-interface {v11, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_7
    iget-object v10, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    invoke-virtual {v10, v2, v3, v4, v5}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;->a(JJ)Z

    move-result v10

    .line 154
    .local v10, "isCpuBusy":Z
    const-string v8, "cpuBusy"

    move-object/from16 v17, v9

    .end local v9    # "finalStack":Ljava/lang/String;
    .local v17, "finalStack":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;

    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/CpuSampler;->d()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 156
    .local v9, "cpuRateInfo":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 157
    const-string v8, "cpuRate"

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTime:"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "timePeriod":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    .end local v1    # "timePeriod":Ljava/lang/String;
    .local v16, "timePeriod":Ljava/lang/String;
    const-string v1, " endTime:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .end local v16    # "timePeriod":Ljava/lang/String;
    .restart local v1    # "timePeriod":Ljava/lang/String;
    const-string/jumbo v8, "timePeriod"

    invoke-interface {v11, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    if-eqz v7, :cond_9

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v8

    invoke-interface {v8, v11}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->anr(Ljava/util/Map;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    move-object/from16 v16, v1

    .end local v1    # "timePeriod":Ljava/lang/String;
    .restart local v16    # "timePeriod":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "report:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 169
    .end local v16    # "timePeriod":Ljava/lang/String;
    .restart local v1    # "timePeriod":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "timePeriod":Ljava/lang/String;
    .restart local v16    # "timePeriod":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "no report:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "applog"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v0    # "errorCodeToReport":Ljava/lang/String;
    .end local v9    # "cpuRateInfo":Ljava/lang/String;
    .end local v10    # "isCpuBusy":Z
    .end local v11    # "mParams":Ljava/util/Map;
    .end local v12    # "viewId":Ljava/lang/String;
    .end local v13    # "bundleUpdates":Ljava/lang/String;
    .end local v14    # "threadsDump":Ljava/lang/String;
    .end local v15    # "stacks":Ljava/lang/String;
    .end local v16    # "timePeriod":Ljava/lang/String;
    .end local v17    # "finalStack":Ljava/lang/String;
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b()V
    .locals 4

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string/jumbo v2, "stop"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "already stopped"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    .line 101
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->removeMessageLogging(Landroid/util/Printer;)V

    .line 102
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d()V

    .line 103
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d:J

    .line 104
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    iput-wide v1, v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->a:J

    .line 105
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 106
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->k:Z

    .line 107
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    .line 55
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->e:Z

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    if-eqz v0, :cond_1

    .line 60
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d()V

    .line 63
    :cond_1
    return-void

    .line 65
    :cond_2
    const-string v0, ">>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    if-eqz v0, :cond_3

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 68
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d()V

    .line 70
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    if-nez v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->j:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRTimeOuter;->a:J

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d:J

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->c()V

    return-void

    .line 76
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    if-eqz v0, :cond_5

    .line 77
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->f:Z

    .line 78
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->d()V

    .line 81
    :cond_5
    return-void
.end method
