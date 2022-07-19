.class public Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;
.super Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;
.source "TaskPoolRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;,
        Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskPoolIgnore;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field private f:I

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->b:J

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->c:J

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)V

    .line 82
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->h:J

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 89
    iput p2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->f:I

    .line 90
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->g:Ljava/util/Set;

    .line 91
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 148
    nop

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->l:J

    .line 152
    const-string/jumbo p1, "spendLongTime "

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    return-void

    .line 158
    :cond_1
    const-string/jumbo p1, "waitLongTime "

    .line 161
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->getInnerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string p1, ", scheduleType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string p1, ", spendTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    const-string p1, ", waitTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    const-string p1, ", startTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    const-string p1, ", endTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskScheduleService"

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private a()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC_SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private b(Z)V
    .locals 9

    .line 174
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->e:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->getInnerName()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->m:J

    iget-wide v7, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    .line 177
    const-string v3, "TaskPoolRunnable"

    move v1, p1

    invoke-static/range {v1 .. v8}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolDiagnose;->waitOrSpendLongTime(ZLcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 179
    return-void
.end method

.method public static obtain(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;"
        }
    .end annotation

    .line 71
    instance-of v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)V

    .line 74
    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;-><init>(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 60
    instance-of v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskPoolIgnore;

    if-eqz v0, :cond_0

    .line 61
    return-object p0

    .line 63
    :cond_0
    instance-of v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;

    if-eqz v0, :cond_1

    .line 64
    return-object p0

    .line 66
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->obtain(Ljava/lang/Runnable;Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/Set;)Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->getInner()Ljava/lang/Runnable;

    move-result-object v0

    .line 101
    instance-of v0, v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->run()V

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->i:J

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->j:J

    .line 108
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->i:J

    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->m:J

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->g:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 116
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->f:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 120
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->m:J

    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a(Z)V

    .line 122
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->m:J

    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 123
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->b(Z)V

    .line 128
    :cond_3
    :try_start_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->k:J

    .line 136
    iget-wide v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    .line 138
    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 139
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a(Z)V

    .line 140
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->d:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 141
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->b(Z)V

    .line 145
    :cond_4
    return-void

    .line 135
    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->k:J

    .line 136
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->k:J

    iget-wide v4, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    .line 138
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->c:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 139
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->a(Z)V

    .line 140
    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->n:J

    sget-wide v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->d:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 141
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->b(Z)V

    :cond_5
    throw v0
.end method

.method public updateSubmitUptime(J)V
    .locals 3

    .line 94
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;->h:J

    .line 95
    return-void
.end method
