.class final Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;
.super Lcom/alipay/mobile/monitor/tools/SafeRunnable;
.source "MemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/monitor/tools/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final safeRun()V
    .locals 12

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatingMemoryUsage for type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemoryMonitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    # invokes: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->a()Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$000()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "processes":Ljava/util/List;
    const-wide/16 v3, 0x0

    .line 59
    .local v3, "totalMemory":J
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    move-object v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 61
    .local v8, "process":Landroid/util/Pair;
    # getter for: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->a:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$100()Ljava/util/Map;

    move-result-object v9

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 62
    .local v6, "occasionMap":Ljava/util/Map;
    move-object v6, v9

    if-nez v9, :cond_0

    .line 63
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v6, v9

    .line 64
    # getter for: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->a:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$100()Ljava/util/Map;

    move-result-object v9

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v9, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Debug$MemoryInfo;

    .line 67
    if-nez v9, :cond_4

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->getMemoryInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object v9

    .line 69
    .local v7, "memoryInfo":Landroid/os/Debug$MemoryInfo;
    move-object v7, v9

    if-eqz v9, :cond_1

    .line 70
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v3, v9

    .line 72
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "got memoryInfo:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_2

    move-object v11, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz v7, :cond_3

    .line 74
    iget-object v9, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->a(Ljava/lang/String;Landroid/os/Debug$MemoryInfo;)V
    invoke-static {v9, v7}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$200(Ljava/lang/String;Landroid/os/Debug$MemoryInfo;)V

    .line 77
    .end local v7    # "memoryInfo":Landroid/os/Debug$MemoryInfo;
    goto/16 :goto_0

    .line 78
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updatingMemoryUsage but already recorded for type:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v6    # "occasionMap":Ljava/util/Map;
    .end local v8    # "process":Landroid/util/Pair;
    goto/16 :goto_0

    .line 60
    :cond_5
    move-object v1, v5

    .line 82
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 83
    # getter for: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->f:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$300()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 84
    .local v1, "currentValue":Ljava/lang/Long;
    move-object v1, v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gtz v9, :cond_8

    .line 85
    :cond_7
    # getter for: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->f:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$300()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "record totalMemory for type:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/monitor/tools/MemoryUtil$1;->val$type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    # invokes: Lcom/alipay/mobile/monitor/tools/MemoryUtil;->a(J)V
    invoke-static {v3, v4}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->access$400(J)V

    .line 90
    .end local v1    # "currentValue":Ljava/lang/Long;
    :cond_8
    return-void
.end method
