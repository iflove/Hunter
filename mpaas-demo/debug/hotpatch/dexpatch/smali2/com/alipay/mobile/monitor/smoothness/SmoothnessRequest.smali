.class public Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
.super Ljava/lang/Object;
.source "SmoothnessRequest.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;


# static fields
.field public static final SMOOTHNESS_SCORE:Ljava/lang/String; = "smoothnessScore"


# instance fields
.field private a:J

.field public mCanWork:Z

.field public mDone:Z

.field public mRecordingStartTime:J

.field public mStarting:Z

.field public mTotalLagTime:J

.field public mTotalRecordingTime:J

.field public mTotalUnsolvedLagTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 18
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalRecordingTime:J

    .line 19
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    .line 20
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    .line 23
    invoke-static {}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->getInstance()Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->setListener(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;)V

    .line 24
    return-void
.end method

.method private a()V
    .locals 11

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    sub-long/2addr v3, v5

    .line 74
    .local v3, "currentRecordingTime":J
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalRecordingTime:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalRecordingTime:J

    .line 75
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    const-wide/16 v7, 0x64

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    .line 76
    invoke-static {v5, v6}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessUtil;->getSingleLagValue(J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 77
    .local v7, "lagTime":D
    move-wide v7, v5

    long-to-double v9, v3

    cmpl-double v0, v5, v9

    if-lez v0, :cond_0

    .line 78
    long-to-double v7, v3

    .line 80
    :cond_0
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    long-to-double v5, v5

    add-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    .line 82
    .end local v7    # "lagTime":D
    :cond_1
    iput-wide v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 84
    .end local v3    # "currentRecordingTime":J
    return-void

    .line 85
    :cond_2
    iget-wide v3, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    iget-wide v5, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    .line 86
    iput-wide v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    .line 87
    iput-wide v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 89
    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 95
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    .line 96
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    .line 97
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalRecordingTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    .end local p0    # "this":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getScore()J
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 65
    .end local p0    # "this":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->b()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    .line 107
    iput-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onClearingTimeCount(Z)V
    .locals 6
    .param p1, "fromStop"    # Z

    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mCanWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 47
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-nez p1, :cond_2

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_2
    :try_start_3
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalLagTime:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalRecordingTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessUtil;->getSmoothnessScore(JJ)D

    move-result-wide v0

    .line 55
    .local v0, "score":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    .line 56
    double-to-long v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->a:J

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SmoothnessRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smoothness score:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SmoothnessRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smoothness score invalid -- score = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "score":D
    .end local p1    # "fromStop":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUpdateUnsolvedLagTime(JJ)V
    .locals 3
    .param p1, "msgStartTime"    # J
    .param p3, "deltaLagTime"    # J

    .line 28
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mCanWork:Z

    if-nez v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    if-eqz v0, :cond_1

    .line 32
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 33
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mTotalUnsolvedLagTime:J

    .line 36
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmoothnessRequest{mStarting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCanWork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mCanWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
