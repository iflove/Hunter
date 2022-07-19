.class public final Lcom/alipay/mobile/quinox/framemonitor/h;
.super Lcom/alipay/mobile/quinox/framemonitor/b;
.source "MainStackSampler.java"


# instance fields
.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/framemonitor/h;-><init>(B)V

    .line 25
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .line 28
    const-wide/16 v0, 0xde

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/b;-><init>(J)V

    .line 29
    new-instance p1, Lcom/alipay/mobile/quinox/framemonitor/tool/d;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/d;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    .line 30
    return-void
.end method

.method private c(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "latest":Ljava/util/Map$Entry;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 53
    .local v4, "entry":Ljava/util/Map$Entry;
    move-object v4, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 54
    .local v5, "entryTime":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-gtz v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, p3

    if-gtz v8, :cond_1

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 56
    :cond_0
    move-object v0, v4

    .line 59
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "entryTime":Ljava/lang/Long;
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_3
    return-object v3

    .line 60
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public final a(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 36
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p3

    if-gtz v6, :cond_0

    .line 37
    sget-object v4, Lcom/alipay/mobile/quinox/framemonitor/h;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, " :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 45
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/b;->a()V

    return-void
.end method

.method public final b(JJ)Ljava/lang/String;
    .locals 13

    .line 65
    move-object v1, p0

    .line 66
    nop

    .line 67
    iget-object v2, v1, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 68
    nop

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    iget-object v3, v1, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 71
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, p1, v7

    if-gez v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, p3

    if-gtz v9, :cond_1

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    iget-object v7, v1, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    nop

    .line 75
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 76
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v8, v7

    .line 78
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 83
    int-to-double v8, v7

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 84
    if-lt v7, v4, :cond_3

    const-wide v10, 0x3fe3333333333333L    # 0.6

    cmpl-double v12, v8, v10

    if-lez v12, :cond_3

    .line 85
    nop

    .line 86
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v7

    .line 88
    :cond_3
    goto :goto_1

    .line 89
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-gtz v4, :cond_5

    .line 92
    invoke-direct/range {p0 .. p4}, Lcom/alipay/mobile/quinox/framemonitor/h;->c(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_5
    return-object v3

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/b;->b()V

    return-void
.end method

.method protected final c()V
    .locals 5

    .line 100
    const-string v0, "JerkMonitor"

    const-string v1, "MainStackSampler.doSample"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/tool/e;

    const-string v1, "MainThread Stack Trace"

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/framemonitor/tool/e;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 104
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    .local v1, "stack":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/h;->d:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 110
    :cond_0
    return-void
.end method
