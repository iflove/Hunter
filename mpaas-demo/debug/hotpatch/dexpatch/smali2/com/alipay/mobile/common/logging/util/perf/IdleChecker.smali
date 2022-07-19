.class public Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;
.super Ljava/lang/Object;
.source "IdleChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:J

.field private g:I

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->g:I

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    .line 46
    const-string v1, "Perf.IdleChecker"

    const-string v2, "createInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->b:Landroid/content/Context;

    .line 48
    if-nez v1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->b:Landroid/content/Context;

    .line 52
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "idle checker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 53
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->c:Landroid/os/Handler;

    .line 56
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->d:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->e:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    .line 59
    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    const-string v0, "Perf.IdleChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enterIdle time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    move-result-object v0

    const-string v1, "enterIdle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->event(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 77
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 29
    .param p1, "cpuRate"    # Ljava/lang/String;
    .param p2, "pidCpuRate"    # Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 155
    iget-wide v3, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string v3, "Perf.IdleChecker"

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    .line 156
    const-string/jumbo v1, "shouldNotify got wait for more than 20s, we should stop checking and do notify"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x1

    return v1

    .line 160
    :cond_0
    iget-boolean v1, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 161
    const-string v1, "idleCheck not triggered, so we don\'t judge it for notification"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v2

    .line 165
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;-><init>(Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$1;)V

    .line 168
    .local v1, "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    const-string v7, " "

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    .line 169
    .local v10, "cpuInfoArray":[Ljava/lang/String;
    move-object v10, v9

    array-length v9, v9

    const/16 v11, 0x9

    const/4 v12, 0x3

    if-lt v9, v11, :cond_2

    .line 170
    const/4 v9, 0x2

    aget-object v9, v10, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->user:J

    .line 171
    aget-object v9, v10, v12

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->nice:J

    .line 172
    const/4 v9, 0x4

    aget-object v9, v10, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->system:J

    .line 173
    const/4 v9, 0x5

    aget-object v9, v10, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->idle:J

    .line 174
    const/4 v9, 0x6

    aget-object v9, v10, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->ioWait:J

    .line 175
    iget-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->user:J

    iget-wide v4, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->nice:J

    add-long/2addr v13, v4

    iget-wide v4, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->system:J

    add-long/2addr v13, v4

    iget-wide v4, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->idle:J

    add-long/2addr v13, v4

    iget-wide v4, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->ioWait:J

    add-long/2addr v13, v4

    const/4 v4, 0x7

    aget-object v4, v10, v4

    .line 176
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v13, v4

    const/16 v4, 0x8

    aget-object v4, v10, v4

    .line 177
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v13, v4

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->total:J

    .line 180
    :cond_2
    move-object/from16 v4, p2

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v6, "pidCpuInfoList":[Ljava/lang/String;
    move-object v6, v5

    array-length v5, v5

    const/16 v7, 0x11

    if-lt v5, v7, :cond_3

    .line 182
    const/16 v5, 0xd

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/16 v5, 0xe

    aget-object v5, v6, v5

    .line 183
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v13, v13, v17

    const/16 v5, 0xf

    aget-object v5, v6, v5

    .line 184
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v13, v13, v17

    const/16 v5, 0x10

    aget-object v5, v6, v5

    .line 185
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v13, v13, v17

    iput-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    .line 189
    :cond_3
    const/4 v5, 0x0

    .line 190
    .local v5, "cpuInfo3B":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v12, :cond_4

    .line 191
    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;

    .line 193
    :cond_4
    :goto_0
    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v12, :cond_5

    .line 194
    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_5
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "shouldNotify":Z
    if-eqz v5, :cond_c

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    iget-wide v11, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->user:J

    const-string v9, "entering low cpu usage status, we should stop checking and do notify"

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x64

    cmp-long v19, v11, v13

    if-lez v19, :cond_9

    iget-wide v11, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->total:J

    cmp-long v19, v11, v13

    if-lez v19, :cond_9

    iget-wide v11, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    cmp-long v19, v11, v13

    if-lez v19, :cond_9

    .line 203
    iget-wide v11, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->idle:J

    iget-wide v13, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->idle:J

    sub-long/2addr v11, v13

    .line 204
    .local v11, "idleTime":J
    iget-wide v13, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->total:J

    move-object/from16 v21, v9

    iget-wide v8, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->total:J

    sub-long/2addr v13, v8

    const-wide/16 v8, 0x0

    .line 206
    .local v8, "totalTime":J
    move-wide v8, v13

    sub-long/2addr v13, v11

    mul-long v13, v13, v17

    div-long/2addr v13, v8

    .line 207
    .local v13, "totalRate":J
    move-object/from16 v22, v10

    move-wide/from16 v19, v11

    .end local v10    # "cpuInfoArray":[Ljava/lang/String;
    .end local v11    # "idleTime":J
    .local v19, "idleTime":J
    .local v22, "cpuInfoArray":[Ljava/lang/String;
    iget-wide v10, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    move/from16 v23, v2

    move-object v12, v3

    .end local v2    # "shouldNotify":Z
    .local v23, "shouldNotify":Z
    iget-wide v2, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    sub-long/2addr v10, v2

    mul-long v10, v10, v17

    div-long/2addr v10, v8

    .line 208
    .local v10, "appRate":J
    iget-wide v2, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->user:J

    move-wide/from16 v24, v10

    .end local v10    # "appRate":J
    .local v24, "appRate":J
    iget-wide v10, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->user:J

    sub-long/2addr v2, v10

    mul-long v2, v2, v17

    div-long/2addr v2, v8

    .line 209
    .local v2, "userRate":J
    iget-wide v10, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->system:J

    move-wide/from16 v26, v2

    .end local v2    # "userRate":J
    .local v26, "userRate":J
    iget-wide v2, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->system:J

    sub-long/2addr v10, v2

    mul-long v10, v10, v17

    div-long/2addr v10, v8

    .line 210
    .local v10, "systemRate":J
    iget-wide v2, v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->ioWait:J

    move-object/from16 v28, v1

    .end local v1    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .local v28, "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    iget-wide v0, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->ioWait:J

    sub-long/2addr v2, v0

    mul-long v2, v2, v17

    div-long/2addr v2, v8

    .line 212
    .local v2, "ioWaitRate":J
    const-string v0, "cpu:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% app:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v24

    .end local v24    # "appRate":J
    .local v0, "appRate":J
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "% ["

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-wide v15, v8

    move-wide/from16 v8, v26

    .end local v26    # "userRate":J
    .local v8, "userRate":J
    .local v15, "totalTime":J
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "% "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "% ]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    move-wide/from16 v17, v2

    .end local v2    # "ioWaitRate":J
    .local v17, "ioWaitRate":J
    const-string v2, "checking got normal: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-wide/16 v2, 0x14

    cmp-long v4, v13, v2

    if-ltz v4, :cond_7

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v2, p0

    goto :goto_2

    :cond_7
    :goto_1
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->isInImpZone()Z

    move-result v3

    if-nez v3, :cond_8

    .line 217
    move-object/from16 v3, v21

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x1

    .end local v23    # "shouldNotify":Z
    .local v3, "shouldNotify":Z
    goto :goto_3

    .line 220
    .end local v0    # "appRate":J
    .end local v3    # "shouldNotify":Z
    .end local v8    # "userRate":J
    .end local v10    # "systemRate":J
    .end local v13    # "totalRate":J
    .end local v15    # "totalTime":J
    .end local v17    # "ioWaitRate":J
    .end local v19    # "idleTime":J
    .restart local v23    # "shouldNotify":Z
    :cond_8
    :goto_2
    move/from16 v3, v23

    .end local v23    # "shouldNotify":Z
    .restart local v3    # "shouldNotify":Z
    :goto_3
    move v1, v3

    move-object/from16 v0, v28

    goto :goto_5

    .line 202
    .end local v3    # "shouldNotify":Z
    .end local v22    # "cpuInfoArray":[Ljava/lang/String;
    .end local v28    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .restart local v1    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .local v2, "shouldNotify":Z
    .local v10, "cpuInfoArray":[Ljava/lang/String;
    :cond_9
    move-object/from16 v28, v1

    move/from16 v23, v2

    move-object v12, v3

    move-object v3, v9

    move-object/from16 v22, v10

    move-object v2, v0

    .line 220
    .end local v1    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .end local v2    # "shouldNotify":Z
    .end local v10    # "cpuInfoArray":[Ljava/lang/String;
    .restart local v22    # "cpuInfoArray":[Ljava/lang/String;
    .restart local v23    # "shouldNotify":Z
    .restart local v28    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    move-object/from16 v0, v28

    .end local v28    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .local v0, "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    iget-wide v8, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_b

    .line 221
    iget-wide v8, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    iget-wide v10, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->appCpuTime:J

    sub-long/2addr v8, v10

    .line 222
    .local v8, "appCpuTime":J
    iget-wide v10, v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->elapsedRealTime:J

    iget-wide v13, v5, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;->elapsedRealTime:J

    sub-long/2addr v10, v13

    .line 223
    .local v10, "elapsedRealTime":J
    mul-long v17, v17, v8

    div-long v13, v17, v10

    .line 224
    .local v13, "appCpuToRealTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checking got cppCpuToRealTime: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-wide/16 v15, 0x3

    cmp-long v1, v13, v15

    if-gez v1, :cond_a

    iget-object v1, v2, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->isInImpZone()Z

    move-result v1

    if-nez v1, :cond_a

    .line 226
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x1

    .end local v23    # "shouldNotify":Z
    .local v1, "shouldNotify":Z
    goto :goto_4

    .line 229
    .end local v1    # "shouldNotify":Z
    .end local v8    # "appCpuTime":J
    .end local v10    # "elapsedRealTime":J
    .end local v13    # "appCpuToRealTime":J
    .restart local v23    # "shouldNotify":Z
    :cond_a
    move/from16 v1, v23

    .end local v23    # "shouldNotify":Z
    .restart local v1    # "shouldNotify":Z
    :goto_4
    goto :goto_5

    .line 230
    .end local v1    # "shouldNotify":Z
    .restart local v23    # "shouldNotify":Z
    :cond_b
    const/4 v1, 0x0

    .line 232
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v23    # "shouldNotify":Z
    .restart local v1    # "shouldNotify":Z
    goto :goto_5

    .line 233
    .end local v0    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .end local v22    # "cpuInfoArray":[Ljava/lang/String;
    .local v1, "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .restart local v2    # "shouldNotify":Z
    .local v10, "cpuInfoArray":[Ljava/lang/String;
    :cond_c
    move/from16 v23, v2

    move-object v12, v3

    move-object/from16 v22, v10

    move-object v2, v0

    move-object v0, v1

    .end local v1    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .end local v2    # "shouldNotify":Z
    .end local v10    # "cpuInfoArray":[Ljava/lang/String;
    .restart local v0    # "cpuInfo":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker$CPUInfo;
    .restart local v22    # "cpuInfoArray":[Ljava/lang/String;
    .restart local v23    # "shouldNotify":Z
    const-string/jumbo v1, "record not enough, we need to wait"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, v23

    .line 236
    .end local v23    # "shouldNotify":Z
    .local v1, "shouldNotify":Z
    :goto_5
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a:Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 9

    monitor-enter p0

    .line 100
    :try_start_0
    const-string v0, ""

    .line 101
    .local v0, "cpuRate":Ljava/lang/String;
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 104
    .local v1, "pidCpuRate":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "cpuReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 107
    .local v3, "pidReader":Ljava/io/BufferedReader;
    :try_start_1
    iget v4, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_0

    .line 108
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/proc/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/stat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x3e8

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 112
    move-object v3, v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 113
    move-object v1, v4

    if-nez v4, :cond_1

    .line 114
    :try_start_4
    const-string v4, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v4

    .line 117
    :cond_1
    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/stat"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 119
    move-object v2, v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 120
    move-object v0, v4

    if-nez v4, :cond_2

    .line 121
    :try_start_6
    const-string v4, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v4

    .line 128
    :cond_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 135
    goto :goto_5

    .line 133
    :catchall_1
    move-exception v4

    .line 134
    .local v4, "tr":Ljava/lang/Throwable;
    :try_start_8
    const-string v5, "Perf.IdleChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 136
    nop

    .end local v4    # "tr":Ljava/lang/Throwable;
    goto :goto_5

    .line 123
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;
    :catchall_2
    move-exception v4

    .line 124
    .restart local v4    # "tr":Ljava/lang/Throwable;
    :goto_1
    :try_start_9
    const-string v5, "Perf.IdleChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 127
    .end local v4    # "tr":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 128
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 133
    :catchall_3
    move-exception v4

    goto :goto_3

    .line 130
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 134
    .restart local v4    # "tr":Ljava/lang/Throwable;
    :goto_3
    :try_start_b
    const-string v5, "Perf.IdleChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 136
    nop

    .end local v4    # "tr":Ljava/lang/Throwable;
    goto :goto_5

    .line 135
    :cond_4
    :goto_4
    nop

    .line 138
    :goto_5
    const/4 v4, 0x1

    .line 140
    .local v4, "shouldNotify":Z
    :try_start_c
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move v4, v5

    .line 143
    goto :goto_6

    .line 141
    :catchall_4
    move-exception v5

    .line 142
    .local v5, "tr":Ljava/lang/Throwable;
    :try_start_d
    const-string v6, "Perf.IdleChecker"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v5    # "tr":Ljava/lang/Throwable;
    :goto_6
    if-eqz v4, :cond_5

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->a()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    monitor-exit p0

    return-void

    .line 148
    :cond_5
    :try_start_e
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->c:Landroid/os/Handler;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v5, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 150
    monitor-exit p0

    return-void

    .line 126
    .end local v4    # "shouldNotify":Z
    :catchall_5
    move-exception v4

    .line 127
    if-eqz v2, :cond_6

    .line 128
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    .line 133
    :catchall_6
    move-exception v5

    goto :goto_8

    .line 130
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_9

    .line 134
    .restart local v5    # "tr":Ljava/lang/Throwable;
    :goto_8
    :try_start_10
    const-string v6, "Perf.IdleChecker"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 135
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_7
    :goto_9
    nop

    :goto_a
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 99
    .end local v0    # "cpuRate":Ljava/lang/String;
    .end local v1    # "pidCpuRate":Ljava/lang/String;
    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .end local v3    # "pidReader":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized triggerTimeout(Z)V
    .locals 5
    .param p1, "startIdleCheck"    # Z

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->d:Z

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    .line 65
    const-string v0, "Perf.IdleChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trigger timeout time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;
    :cond_0
    if-eqz p1, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->e:Z

    if-nez v0, :cond_1

    .line 70
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->e:Z

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    .line 72
    const-string v0, "Perf.IdleChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trigger idle check time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    .line 61
    .end local p1    # "startIdleCheck":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
