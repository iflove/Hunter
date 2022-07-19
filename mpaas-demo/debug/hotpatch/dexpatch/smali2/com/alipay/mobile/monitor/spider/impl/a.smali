.class final Lcom/alipay/mobile/monitor/spider/impl/a;
.super Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
.source "DefaultSpiderSilk.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpiderSilk_addProperty key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final end(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    const/4 v1, 0x0

    .line 48
    .local v1, "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->endThread:Ljava/lang/String;

    .line 49
    const-wide/16 v2, 0x1

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide p1, v2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->timesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getEndKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .end local v1    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpiderSilk_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final endSection(Ljava/lang/String;J)V
    .locals 4
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    const/4 v1, 0x0

    .line 91
    .local v1, "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->endThread:Ljava/lang/String;

    .line 92
    const-wide/16 v2, 0x1

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide p2, v2

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->timesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getEndKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    nop

    .end local v1    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpiderSilk_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final start(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    .line 27
    .local v0, "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderSilk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "method `SpiderSilk.start`("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") should not be called more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v0    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;-><init>()V

    .line 32
    .restart local v0    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->bizType:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->startThread:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide p1, v1

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->timesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getStartKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    nop

    .end local v0    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpiderSilk_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final startSection(Ljava/lang/String;J)V
    .locals 6
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 65
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "sectionStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    .line 70
    .local v1, "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SpiderSilk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "method `SpiderSilk.startSection`("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") should not be called more than once"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v1    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    :cond_0
    new-instance v1, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;-><init>()V

    .line 74
    .restart local v1    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->mBizName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->bizType:Ljava/lang/String;

    .line 75
    iput-object p1, v1, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->sectionName:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->startThread:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->sectionKeys:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide p2, v2

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/a;->timesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getStartKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .end local v0    # "sectionStr":Ljava/lang/String;
    .end local v1    # "sectionKey":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpiderSilk_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
