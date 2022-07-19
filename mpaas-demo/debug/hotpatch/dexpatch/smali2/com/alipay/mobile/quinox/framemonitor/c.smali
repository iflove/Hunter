.class public final Lcom/alipay/mobile/quinox/framemonitor/c;
.super Lcom/alipay/mobile/quinox/framemonitor/b;
.source "AllThreadsSampler.java"


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

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/framemonitor/c;-><init>(B)V

    .line 27
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .line 30
    const-wide/16 v0, 0x1bc

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/b;-><init>(J)V

    .line 31
    new-instance p1, Lcom/alipay/mobile/quinox/framemonitor/tool/d;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/d;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/c;->d:Ljava/util/LinkedHashMap;

    .line 32
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 12

    .line 61
    const-string v0, "getThreadsStackTrace"

    const-string v1, "AllThreadsSampler"

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 62
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    .line 65
    .local v4, "allStackTraces":Ljava/util/Map;
    const-string v5, "ThreadCount: "

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 68
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .local v6, "entry":Ljava/util/Map$Entry;
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 71
    .local v7, "targetThread":Ljava/lang/Thread;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    .line 72
    .local v8, "stackTraces":[Ljava/lang/StackTraceElement;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", ThreadName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "threadHeader":Ljava/lang/String;
    new-instance v10, Lcom/alipay/mobile/quinox/framemonitor/tool/e;

    invoke-direct {v10, v9, v8}, Lcom/alipay/mobile/quinox/framemonitor/tool/e;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 75
    invoke-virtual {v10, v3}, Lcom/alipay/mobile/quinox/framemonitor/tool/e;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v7    # "targetThread":Ljava/lang/Thread;
    .end local v8    # "stackTraces":[Ljava/lang/StackTraceElement;
    .end local v9    # "threadHeader":Ljava/lang/String;
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v7

    .line 77
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fail to dump thread: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 81
    .end local v6    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 83
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 84
    .end local v2    # "sw":Ljava/io/StringWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "allStackTraces":Ljava/util/Map;
    :catchall_1
    move-exception v2

    .line 85
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v2    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "latest":Ljava/util/Map$Entry;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/c;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/c;->d:Ljava/util/LinkedHashMap;

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

    .line 38
    .local v4, "entry":Ljava/util/Map$Entry;
    move-object v4, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 39
    .local v5, "entryTime":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-gtz v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, p3

    if-gtz v8, :cond_1

    .line 40
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

    .line 41
    :cond_0
    move-object v0, v4

    .line 44
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "entryTime":Ljava/lang/Long;
    :cond_1
    goto :goto_0

    .line 45
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_3
    return-object v3

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

.method public final bridge synthetic b()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/b;->b()V

    return-void
.end method

.method protected final c()V
    .locals 5

    .line 51
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    .local v1, "threadsDump":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/c;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/c;->d:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 57
    :cond_0
    return-void
.end method
