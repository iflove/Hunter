.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
.super Ljava/lang/Object;
.source "MainTaskWatcherRequest.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field public mCachedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile mDone:Z

.field public mRecordingStartTime:J

.field public mRecordingStopTime:J

.field public volatile mStarting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mCachedTasks:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->setListener(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    const-string v1, "CLICK_DELAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    .line 49
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    return-object v1

    .line 229
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 230
    return-object v1

    .line 232
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .local v0, "updateTask":Landroid/util/Pair;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mCachedTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method


# virtual methods
.method public getTotalDoFrameTime()J
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-eqz v0, :cond_0

    .line 239
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    return-wide v0

    .line 241
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTotalNaturalTime()J
    .locals 4

    .line 254
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-eqz v0, :cond_0

    .line 255
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 257
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTotalOthersTime()J
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-eqz v0, :cond_0

    .line 247
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    return-wide v0

    .line 249
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onRestart(Z)V
    .locals 5
    .param p1, "fromStart"    # Z

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    const-string v1, "MainTaskWatcher"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->j:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    if-eqz p1, :cond_2

    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->i:Z

    if-eqz v0, :cond_1

    .line 74
    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->i:Z

    .line 75
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->j:Z

    .line 76
    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    .line 77
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "multiple click delay watcher detected, stop watch"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->i:Z

    .line 83
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    .line 86
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    if-le v0, v3, :cond_3

    .line 87
    return-void

    .line 90
    :cond_3
    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    .line 94
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onStop()V

    .line 98
    :cond_4
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    .line 100
    :cond_5
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    .line 101
    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    .line 102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->f:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->b:Landroid/util/Pair;

    .line 105
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->c:J

    .line 106
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->g:J

    .line 107
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    .line 108
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mCachedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->setListener(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onRestart at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    .line 55
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    if-eqz v1, :cond_0

    .line 57
    iget v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->i:Z

    .line 60
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onStart at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainTaskWatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onStop()V
    .locals 11

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onStop at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainTaskWatcher"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->c:J

    sub-long/2addr v2, v5

    .line 124
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->g:J

    .line 125
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->f:Ljava/lang/String;

    const-string v6, "Choreographer$FrameDisplayEventReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    goto :goto_0

    .line 128
    :cond_0
    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    .line 132
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    if-nez v2, :cond_3

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getMessageQueueIdle()Z

    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 139
    :cond_2
    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->g:J

    .line 141
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "messageQueueIdle = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", theLastMsgCost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->updateTheLastMsgCost(J)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", message queue idle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", update the last msg cost = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    goto :goto_2

    .line 146
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getTheLastMsgCost()J

    move-result-wide v2

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalNaturalTime()J

    move-result-wide v5

    .line 148
    add-long v7, v2, v5

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [J

    aput-wide v2, v10, v0

    aput-wide v5, v10, v1

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->setClickDelay([J)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", click delay total time = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", the last msg cost before touch = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", the cost from touch to click = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->removeListener(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    const-string v1, "CLICK_DELAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    if-nez v0, :cond_4

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stop on invalid, restart later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStop -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", totalDoFrameTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalDoFrameTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalOthersTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalOthersTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalNaturalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalNaturalTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onUpdateDispatchMainTask(JLjava/lang/String;)V
    .locals 4
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 162
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->h:I

    .line 170
    const-string v1, "View$PerformClick"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->i:Z

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onStop()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onRestart(Z)V

    return-void

    .line 175
    :cond_1
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return-void

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->j:Z

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onUpdateDispatchMainTask error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainTaskWatcher"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 186
    :cond_2
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->c:J

    .line 187
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->f:Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    .local v1, "updateTask":Landroid/util/Pair;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 190
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->b:Landroid/util/Pair;

    .line 192
    :cond_3
    return-void
.end method

.method public onUpdateFinishMainTask(JLjava/lang/String;Z)V
    .locals 5
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tinyTask"    # Z

    .line 196
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 200
    sub-long v0, p1, v0

    .line 201
    .local v0, "cost":J
    const-string v2, "Choreographer$FrameDisplayEventReceiver"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->d:J

    goto :goto_0

    .line 204
    :cond_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->e:J

    .line 206
    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->g:J

    .line 207
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->f:Ljava/lang/String;

    .line 210
    .end local v0    # "cost":J
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->k:Z

    if-eqz v0, :cond_3

    .line 211
    return-void

    .line 213
    :cond_3
    if-eqz p4, :cond_4

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mCachedTasks:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->b:Landroid/util/Pair;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 216
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a(JLjava/lang/String;)Landroid/util/Pair;

    .line 218
    return-void
.end method

.method public onUpdateSubTask(JLjava/lang/String;)V
    .locals 0
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->a(JLjava/lang/String;)Landroid/util/Pair;

    .line 223
    return-void
.end method
