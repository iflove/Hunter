.class Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;
.super Ljava/lang/Object;
.source "OreoServiceUnlimitedTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$TranceRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OreoServiceUnlimitedTracker"

.field private static final a:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

.field private static volatile c:Z


# instance fields
.field private b:Ljava/util/concurrent/Executor;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    invoke-direct {v0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;-><init>()V

    sput-object v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->e:J

    .line 59
    return-void
.end method

.method private a()V
    .locals 9

    .line 62
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    if-nez v0, :cond_1

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$1;

    invoke-direct {v8, p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$1;-><init>(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->b:Ljava/util/concurrent/Executor;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 83
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$TranceRunnable;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$TranceRunnable;-><init>(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;Ljava/lang/String;IJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "timestamp"    # J

    .line 118
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->b(Ljava/lang/String;J)V

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "OreoServiceUnlimitedTracker"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 136
    invoke-direct {p0, p1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    .local v1, "prevVal":Landroid/util/Pair;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method private static a(Ljava/lang/String;JJ)V
    .locals 6
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "beforeTime"    # J
    .param p3, "afterTime"    # J

    .line 162
    sub-long v0, p3, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "interval":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v2, 0x0

    .line 164
    .local v2, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v2, v1

    const-string v3, "Push"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 165
    const-string v1, "UnlimitedService"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string v3, "OreoServiceUnlimitedTracker"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found bad call, trackId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;Ljava/lang/String;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a(Ljava/lang/String;IJ)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$TranceRunnable;

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$TranceRunnable;-><init>(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;Ljava/lang/String;IJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private b(Ljava/lang/String;J)V
    .locals 8
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 145
    invoke-direct {p0, p1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    .local v1, "prevVal":Landroid/util/Pair;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 154
    .local v2, "tmpVal":Landroid/util/Pair;
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->e:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 156
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, p2, p3}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 159
    .end local v2    # "tmpVal":Landroid/util/Pair;
    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 175
    .local v1, "p":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return-object v1

    .line 178
    .end local v1    # "p":Landroid/util/Pair;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 183
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->c:Z

    return v0
.end method

.method static startTrack()V
    .locals 1

    .line 86
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    invoke-direct {v0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a()V

    .line 87
    return-void
.end method

.method static trackAfterCall(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    invoke-direct {v0, p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->b(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static trackBeforeCall(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    invoke-direct {v0, p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a(Ljava/lang/String;)V

    .line 111
    return-void
.end method
