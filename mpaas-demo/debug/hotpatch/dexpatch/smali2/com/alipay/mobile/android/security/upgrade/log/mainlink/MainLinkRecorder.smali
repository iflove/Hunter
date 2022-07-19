.class public Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;
.super Ljava/lang/Object;
.source "MainLinkRecorder.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;


# instance fields
.field private mClientStartupTime:J

.field private mLinkRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhaseStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;
    .locals 2

    const-class v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    invoke-direct {v1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;-><init>()V

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    .line 37
    :cond_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 4

    const-class v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    if-eqz v1, :cond_0

    .line 45
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 46
    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 47
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 49
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized cancelLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    sub-long/2addr v1, v3

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-wide v1

    .line 129
    :cond_2
    :goto_1
    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    .line 127
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitLinkRecord(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 164
    if-nez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitLinkRecord but no LinkRecord exist for linkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->commit()V

    .line 170
    const-string v1, "LINK_SCAN_CODE_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->destroy()V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_2
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 107
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 112
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->endPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->submitLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endLinkRecordPhase linkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " phaseId:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timeCost:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-wide v1

    .line 108
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endLinkRecordPhase with no start linkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " phaseId:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-wide v1

    .line 104
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    .line 102
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;
    .locals 2

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    const-string v1, "getLinkRecord got null"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 p1, 0x0

    return-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    return-object p1
.end method

.method public declared-synchronized initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 186
    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;-><init>(Ljava/lang/String;)V

    .line 188
    iget-wide v1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mClientStartupTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-wide/32 v3, 0x249f0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->setClientStartupTime(J)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    monitor-exit p0

    return-object v0

    .line 184
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordClientStartupTime(J)V
    .locals 4

    monitor-enter p0

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 63
    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 67
    if-eqz v1, :cond_0

    .line 68
    iget-wide v2, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mClientStartupTime:J

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->setClientStartupTime(J)V

    .line 71
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordClientStartupTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 87
    const-string v0, "PHASE_SCAN_CODE_USER_PROFILE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "LINK_SCAN_CODE"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 91
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLinkRecordPhase linkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " phaseId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 83
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized submitLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 148
    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    sget-object p3, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "submitLinkRecordPhase but no LinkRecord exist for linkId:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 145
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
