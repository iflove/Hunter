.class public Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;
.super Ljava/lang/Object;
.source "MpaasTrafficMonitorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->a:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    .line 42
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mpaas.monitor.traffic.broadcast.ACTION_SEND_TRAFFIC"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->d(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 5
    .param p1, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 67
    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    move-object v2, v1

    .line 77
    .local v2, "domain":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 78
    .local v4, "index":I
    move v4, v0

    if-ltz v0, :cond_0

    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 87
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 90
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "domainLimited":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->setDomain(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private b(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 7
    .param p1, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 97
    .local v2, "limit":J
    move-wide v2, v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a()J

    move-result-wide v2

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getLength()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->isNetworkUseWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "EXCEPTIONAL traffic detected, url: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", limit: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v4, "MpaasTrafficMonitor"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void
.end method

.method private static c(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 4
    .param p0, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 109
    .local v1, "params":Ljava/util/Map;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "size"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->traffic(Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method private d(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 5
    .param p1, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    const/4 v2, 0x0

    .line 117
    .local v2, "domainTraffic":Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->addLength(J)V

    .line 122
    return-void
.end method


# virtual methods
.method public addDomainLengthLimit(Ljava/lang/String;J)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a(Ljava/lang/String;J)V

    .line 186
    return-void
.end method

.method public handleTraffic(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 5
    .param p1, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->a(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleTraffic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpaasTrafficMonitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->d(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mpaas.monitor.traffic.broadcast.ACTION_SEND_TRAFFIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string/jumbo v3, "traffic"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "intent":Landroid/content/Intent;
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send broadcast error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public report(J)V
    .locals 11

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isTrafficMonitorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "MpaasTrafficMonitor"

    const-string/jumbo v0, "mPaaS traffic monitor disabled"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_0
    const-wide/16 v0, 0x4e20

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "MpaasTrafficMonitor"

    const-string v0, "foregroundTime less than 20000, report total traffic ignored."

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "MpaasTrafficMonitor"

    const-string/jumbo v0, "no traffic to report."

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 141
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;

    monitor-enter v0

    .line 142
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 148
    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    long-to-int p2, p1

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v3, "MpaasTrafficMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "report traffic, totalTrafficCount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", logCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 155
    mul-int/lit16 v4, v3, 0xc8

    .line 156
    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v5, v3, 0xc8

    .line 157
    if-le v5, v0, :cond_3

    .line 158
    move v5, v0

    .line 160
    :cond_3
    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 164
    invoke-virtual {v6}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getDomain()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getLength()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->getBiz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const-string v5, "ActiveInterval"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v5

    const-string/jumbo v6, "total_traffic"

    sget-object v7, Lcom/alipay/mobile/common/logging/api/BizType;->TRAFFIC:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/util/Map;)V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 154
    goto :goto_0

    .line 171
    :cond_5
    return-void

    .line 144
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCommonLengthLimit(J)V
    .locals 1
    .param p1, "limit"    # J

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a(J)V

    .line 176
    return-void
.end method

.method public setDomainLengthLimits(Ljava/util/Map;)V
    .locals 1
    .param p1, "limits"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->c:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a(Ljava/util/Map;)V

    .line 181
    return-void
.end method
