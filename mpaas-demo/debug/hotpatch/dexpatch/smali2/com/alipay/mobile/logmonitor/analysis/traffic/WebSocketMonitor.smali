.class public Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;
.super Ljava/lang/Object;
.source "WebSocketMonitor.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 9
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 22
    return-object v0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    move-object v2, v0

    .line 26
    .local v2, "biz_unique_id":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 29
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    return-object v0

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    move-object v3, v0

    .line 33
    .local v3, "action":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 34
    return-object v0

    .line 37
    :cond_3
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 38
    .local v4, "recorderDataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    const-string v5, "connect"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "close"

    if-nez v5, :cond_4

    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 40
    const-string/jumbo v5, "send"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 41
    const-string/jumbo v5, "receive"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    :cond_4
    if-nez v4, :cond_5

    .line 45
    nop

    .line 46
    move-object v4, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "connectTime"

    invoke-virtual {p0, v7, v5}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 47
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_5
    invoke-static {v4, p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/WebSocketMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 54
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 57
    move-object v1, v0

    .end local v4    # "recorderDataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .local v1, "recorderDataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    if-eqz v0, :cond_6

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "closeTime"

    invoke-virtual {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 60
    :cond_6
    return-object v1

    .line 63
    .end local v1    # "recorderDataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .restart local v4    # "recorderDataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    :cond_7
    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 4
    .param p0, "target"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .param p1, "addon"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 67
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    .line 71
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    iget-wide v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    .line 72
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    iget-wide v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    .line 73
    return-void

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
