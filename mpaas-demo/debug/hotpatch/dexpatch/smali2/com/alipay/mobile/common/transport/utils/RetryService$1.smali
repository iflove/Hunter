.class Lcom/alipay/mobile/common/transport/utils/RetryService$1;
.super Ljava/lang/Object;
.source "RetryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/utils/RetryService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/utils/RetryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/utils/RetryService;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$1;->this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "retrySize":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$1;->this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;

    # getter for: Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/RetryService;->access$000(Lcom/alipay/mobile/common/transport/utils/RetryService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 88
    .local v1, "size":I
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$1;->this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;

    # getter for: Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/RetryService;->access$000(Lcom/alipay/mobile/common/transport/utils/RetryService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    new-instance v3, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 94
    .local v2, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v3

    const-string v4, "RetryList"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "totalSize"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "retrySize"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 98
    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "retrylist perf:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RetryService"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 103
    const-string v6, "BIZ_NETWORK"

    const-string v7, "RETRYLIST"

    invoke-interface {v3, v6, v7, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    :cond_2
    return-void
.end method
