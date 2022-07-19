.class public Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;
.super Ljava/lang/Object;
.source "LinkRecord.java"


# static fields
.field private static final MAIN_LINK_RECORD:Ljava/lang/String; = "MainLinkRecord"

.field private static final TAG:Ljava/lang/String;

.field private static sRemoveOldFile:Z

.field private static sReportedLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClientStartupTime:J

.field private mLinkId:Ljava/lang/String;

.field private mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sRemoveOldFile:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sReportedLinks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mClientStartupTime:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    .line 44
    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private declared-synchronized shouldReport()Z
    .locals 9

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sReportedLinks:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 192
    :cond_0
    nop

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 196
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sReportedLinks:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sReportedLinks:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 203
    sub-long v3, v5, v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x6

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-lez v0, :cond_2

    .line 204
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sReportedLinks:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    goto :goto_0

    .line 203
    :cond_2
    const/4 v2, 0x0

    .line 210
    :goto_0
    sget-boolean v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sRemoveOldFile:Z

    if-eqz v0, :cond_3

    .line 211
    sput-boolean v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->sRemoveOldFile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 215
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->TAG:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    :cond_3
    :goto_1
    monitor-exit p0

    return v2

    .line 189
    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    .line 187
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 11

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    const-string v2, "PHASE_CLIENT_STARTUP"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string v2, "LINK_SCAN_PAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "LINK_SCAN_CODE_IND"

    const-string v3, "PHASE_SCAN_CODE_IND_SCAN_RPC"

    const-string v4, "PHASE_SCAN_CODE_IND_SCAN"

    const-string v5, "PHASE_SCAN_CODE_IND_LAUNCH"

    const-wide/16 v6, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string v8, "LINK_SCAN_PAY_FIXED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 100
    cmp-long v10, v8, v6

    if-eqz v10, :cond_4

    .line 101
    invoke-virtual {p0, v5, v8, v9}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 104
    :cond_4
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 105
    cmp-long v10, v8, v6

    if-eqz v10, :cond_5

    .line 106
    invoke-virtual {p0, v4, v8, v9}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 109
    :cond_5
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 110
    cmp-long v0, v8, v6

    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {p0, v3, v8, v9}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string v8, "LINK_SCAN_CODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_9

    .line 119
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 120
    cmp-long v2, v8, v6

    if-eqz v2, :cond_7

    .line 121
    const-string v2, "PHASE_SCAN_CODE_LAUNCH"

    invoke-virtual {p0, v2, v8, v9}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 124
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 125
    cmp-long v2, v4, v6

    if-eqz v2, :cond_8

    .line 126
    const-string v2, "PHASE_SCAN_CODE_SCAN"

    invoke-virtual {p0, v2, v4, v5}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 129
    :cond_8
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 130
    cmp-long v0, v2, v6

    if-eqz v0, :cond_9

    .line 131
    const-string v0, "PHASE_SCAN_CODE_SCAN_RPC"

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 135
    :cond_9
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 136
    const-string v2, "MainLinkRecord"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    nop

    .line 140
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 141
    iget-object v5, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 143
    const/16 v6, 0x5e

    if-eqz v1, :cond_a

    .line 144
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :goto_1
    const/16 v7, 0x2c

    const/16 v8, 0x20

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x3d

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_b
    goto :goto_0

    .line 153
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 157
    if-eqz v4, :cond_d

    .line 158
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, "^"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_d
    goto :goto_2

    .line 165
    :cond_e
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->shouldReport()Z

    move-result v3

    const-string v4, " params:"

    const-string v5, " phases:"

    if-eqz v3, :cond_f

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v3, v6, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit linkId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not commit linkId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_3
    return-void

    .line 90
    :cond_10
    :goto_4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mClientStartupTime:J

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    return-void
.end method

.method public getPhaseTime(Ljava/lang/String;)J
    .locals 3

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 63
    return-wide v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    return-wide v1
.end method

.method public recordPhase(Ljava/lang/String;J)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public removeParam(Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method public setClientStartupTime(J)V
    .locals 1

    .line 53
    iput-wide p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mClientStartupTime:J

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PHASE_CLIENT_STARTUP"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
