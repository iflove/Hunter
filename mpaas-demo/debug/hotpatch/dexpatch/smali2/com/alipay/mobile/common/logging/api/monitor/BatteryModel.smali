.class public Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
.super Ljava/lang/Object;
.source "BatteryModel.java"


# instance fields
.field private a:Z

.field public bundle:Ljava/lang/String;

.field public diagnose:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public power:J

.field public time:J

.field public type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 1

    .line 49
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;-><init>()V

    .line 50
    return-object v0
.end method

.method public static obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 2
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p1, "time"    # J
    .param p3, "diagnose"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a()Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    .local v1, "batteryModel":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->recycle()V

    .line 39
    iput-object p0, v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 40
    iput-wide p1, v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->time:J

    .line 41
    iput-object p3, v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->diagnose:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a:Z

    .line 44
    return-object v1
.end method

.method public static obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 2
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p1, "power"    # J
    .param p3, "bundle"    # Ljava/lang/String;
    .param p4, "diagnose"    # Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cloneMirror()Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->time:J

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->diagnose:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;JLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 59
    .local v2, "mirror":Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    move-object v2, v0

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J

    iput-wide v3, v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->bundle:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->bundle:Ljava/lang/String;

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a:Z

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "val":Ljava/lang/String;
    iget-object v5, v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_0

    .line 73
    :cond_0
    return-object v2
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a:Z

    return v0
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method

.method public recycle()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->a:Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->time:J

    .line 82
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->power:J

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->bundle:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->diagnose:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    .line 86
    return-void
.end method

.method public removeParam(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    return-object p0
.end method

.method public report()V
    .locals 1

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->battery(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V

    .line 94
    return-void
.end method
