.class public Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
.super Ljava/lang/Object;
.source "DelayUploadConfig.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->c:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    .line 30
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    .line 33
    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->i:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->j:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->c:Z

    .line 60
    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 0
    .param p1, "minDelay"    # I

    monitor-enter p0

    .line 79
    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    .end local p1    # "minDelay":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(J)V
    .locals 5
    .param p1, "server503Timestamp"    # J

    .line 64
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    .line 67
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    if-ltz v0, :cond_1

    const/16 v1, 0x258

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    iget v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .local v0, "delayInterval":I
    goto :goto_1

    .line 68
    .end local v0    # "delayInterval":I
    :cond_1
    :goto_0
    const/16 v0, 0x258

    .line 72
    .restart local v0    # "delayInterval":I
    :goto_1
    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setServer503Timestamp,server503Timestamp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", server503EndTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",delayInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DelayUploadConfig"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Long;)V
    .locals 1
    .param p1, "tStart"    # Ljava/lang/Long;

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    .end local p1    # "tStart":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4
    .param p1, "mdelayDesc"    # Ljava/lang/String;

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DelayUploadConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update delayDesc, old desc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",new desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    .end local p1    # "mdelayDesc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 9

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 89
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    if-ltz v1, :cond_1

    if-le v0, v1, :cond_2

    .line 93
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :cond_1
    const/16 v0, 0x258

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    .line 94
    const/16 v0, 0x708

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 99
    .local v1, "start":J
    iget v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget v5, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    iget v6, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    .line 100
    .local v3, "tmpRandomDelay":J
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->i:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "DelayUploadConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateTx,start:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",minDelay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",maxDelay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",randDelay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v1    # "start":J
    .end local v3    # "tmpRandomDelay":J
    goto :goto_0

    .line 104
    :cond_3
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 0
    .param p1, "maxDelay"    # I

    monitor-enter p0

    .line 83
    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    .end local p1    # "maxDelay":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 13

    monitor-enter p0

    .line 117
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 118
    monitor-exit p0

    return v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, "delayed":Z
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 123
    .local v2, "now":J
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 125
    .local v5, "start":J
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->i:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 127
    .local v7, "tmpRandomDelay":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "DelayUploadConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "now:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",start:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",minDelay:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",maxDelay:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->g:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",randomDelay:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    cmp-long v9, v2, v5

    if-lez v9, :cond_3

    add-long v9, v5, v7

    cmp-long v11, v2, v9

    if-gez v11, :cond_3

    .line 131
    const/4 v1, 0x1

    .line 134
    iget-boolean v4, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->j:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_4

    .line 135
    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a:Z

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v9, "DelayUploadConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "start delay timer randomDelay:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {v4, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 142
    :cond_2
    new-instance v4, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;-><init>(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v7, v8, v9}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->j:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 160
    .end local v5    # "start":J
    .end local v7    # "tmpRandomDelay":J
    :cond_3
    goto/16 :goto_0

    .line 162
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "DelayUploadConfig"

    const-string/jumbo v6, "shouldDelayByTimeConfig,delay upload"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 168
    .end local v1    # "delayed":Z
    .end local v2    # "now":J
    :cond_5
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DelayUploadConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldDelayByTimeConfig, ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    monitor-exit p0

    return v0

    .line 116
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 11

    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 177
    monitor-exit p0

    return v0

    .line 179
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 180
    .local v1, "now":J
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 182
    .local v4, "start":J
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->i:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 183
    .local v6, "randomDelay":J
    cmp-long v8, v1, v4

    if-lez v8, :cond_1

    add-long v8, v4, v6

    cmp-long v10, v1, v8

    if-gez v10, :cond_1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v8, "DelayUploadConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "shouldCarryFloodRate,now:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",start:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",randomDelay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 187
    .end local v4    # "start":J
    .end local v6    # "randomDelay":J
    :cond_1
    goto :goto_0

    .line 188
    :cond_2
    monitor-exit p0

    return v0

    .line 189
    .end local v1    # "now":J
    :catchall_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DelayUploadConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldCarryFloodRate ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .end local v1    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return v0

    .line 175
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 8

    monitor-enter p0

    .line 198
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->c:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 203
    .local v3, "now":J
    move-wide v3, v1

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DelayUploadConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hit 503 delay, endtime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 207
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    .line 208
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->c:Z

    .line 209
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d:J

    .line 210
    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e:J

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DelayUploadConfig"

    const-string v5, "clear 503 flag"

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_2
    monitor-exit p0

    return v0

    .line 199
    .end local v3    # "now":J
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    .line 214
    :catchall_0
    move-exception v1

    .line 215
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DelayUploadConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldDelayByServer503, ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    .end local v1    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return v0

    .line 197
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
