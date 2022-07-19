.class public Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
.super Ljava/lang/Object;
.source "TrafficMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;,
        Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const-string v0, "TrafficMonitor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    .line 56
    const-wide/32 v1, 0xc800

    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f:J

    .line 57
    const-wide/32 v1, 0x25800

    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g:J

    .line 58
    const-wide/32 v1, 0x32000

    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h:J

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    .line 75
    :try_start_0
    const-string/jumbo v1, "trafficMonitor.config"

    invoke-static {p1, v1}, Lcom/alipay/mobile/monitor/util/FileUtils;->readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "traficCfgContent":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v3, "trafficCfg"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UrlLimit:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    .line 80
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",TraficLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v1    # "traficCfgContent":Ljava/lang/String;
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    return-object v0
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dataLength"    # J

    .line 407
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trafficLog"

    const-string v4, ""

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 408
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 409
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 410
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 31

    move-object/from16 v15, p0

    monitor-enter p0

    .line 534
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 535
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 542
    :try_start_2
    const-string/jumbo v0, "uploadOverflowSize"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f:J

    .line 543
    const-string v0, "downloadOverflowSize"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g:J

    .line 544
    const-string/jumbo v0, "totalOverflowSize"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h:J

    .line 545
    const-string v0, "TrafficMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parserTraficCfg totalreport:uploadOverflowSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",downloadOverflowSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",totalOverflowSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TrafficMonitor"

    const-string/jumbo v2, "parse totalrepoart cfg error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    const-string v0, "hostList"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 556
    const/16 v19, 0x0

    const/4 v13, 0x0

    :goto_1
    if-eqz v12, :cond_1

    :try_start_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v13, v0, :cond_1

    .line 559
    :try_start_5
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 560
    const-string v0, "host"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 562
    const-string/jumbo v0, "reportSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 563
    const-string/jumbo v0, "overflowSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 564
    const-string v0, "degradeSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 566
    const-string/jumbo v0, "reportRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 567
    const-string/jumbo v0, "overflowRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 568
    const-string v0, "degradeRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 570
    nop

    .line 571
    nop

    .line 572
    nop

    .line 573
    nop

    .line 576
    const/16 v18, -0x1

    :try_start_6
    const-string v0, "chunkSizeThreshold"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 577
    :try_start_7
    const-string v0, "chunkReportRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 578
    :try_start_8
    const-string v0, "chunkOverflowRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 579
    :try_start_9
    const-string v0, "chunkDegradeRepeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 582
    move/from16 v25, v0

    move-object/from16 p1, v12

    move/from16 v24, v13

    move-object/from16 v18, v14

    move-wide/from16 v12, v20

    move/from16 v0, v22

    move/from16 v14, v23

    goto :goto_5

    .line 580
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    const-wide/16 v20, -0x1

    :goto_2
    const/16 v22, -0x1

    :goto_3
    const/16 v23, -0x1

    :goto_4
    move-object/from16 p1, v12

    move/from16 v24, v13

    move-object/from16 v18, v14

    move-wide/from16 v12, v20

    move/from16 v0, v22

    move/from16 v14, v23

    const/16 v25, -0x1

    .line 584
    :goto_5
    move/from16 v20, v14

    :try_start_a
    const-string v14, "dataReportSize"

    move-wide/from16 v21, v12

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v14, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 586
    const-string v1, "TrafficMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string/jumbo v1, "parserTraficCfg hostCfgCache:hostName="

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",reportSize="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",overflowSize="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",degradeSize="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",reportRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",overflowRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",degradeRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",chunkSizeThreshold="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v10

    move-object/from16 v17, v11

    move-wide/from16 v10, v21

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",chunkReportRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",chunkOverflowRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v20, v1

    const-string v1, ",chunkDegradeRepeat="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v21, v1

    const-string v1, ",dataReportSize="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v16

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v14, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v16, v20

    move/from16 v20, v21

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v2, p0

    move/from16 v25, v7

    move-wide v7, v8

    move/from16 v9, v23

    move-wide/from16 v26, v10

    move/from16 v10, v25

    move-object/from16 v28, v17

    move/from16 v11, v22

    move-object/from16 v22, p1

    move/from16 v23, v24

    move-wide/from16 v24, v12

    move-wide/from16 v12, v26

    move-object/from16 v30, v14

    move-object/from16 v29, v18

    move v14, v0

    move/from16 v15, v16

    move/from16 v16, v20

    move-wide/from16 v17, v24

    :try_start_b
    invoke-direct/range {v1 .. v18}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;-><init>(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;JJJIIIJIIIJ)V

    move-object/from16 v2, v21

    move-object/from16 v1, v28

    move-object/from16 v0, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 607
    goto :goto_7

    .line 605
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v22, p1

    move-object/from16 v29, v18

    move/from16 v23, v24

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v29, v14

    .line 606
    :goto_6
    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TrafficMonitor"

    const-string/jumbo v2, "parse hostCfgCache error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 556
    :goto_7
    add-int/lit8 v13, v23, 0x1

    move-object/from16 v15, p0

    move-object/from16 v12, v22

    move-object/from16 v14, v29

    goto/16 :goto_1

    :cond_1
    move-object/from16 v29, v14

    .line 612
    :try_start_d
    const-string/jumbo v0, "urlList"

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 613
    const/4 v8, 0x0

    :goto_8
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 614
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 616
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 617
    const-string/jumbo v2, "reportRepeat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 618
    const-string/jumbo v2, "overflowRepeat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 619
    const-string v2, "degradeRepeat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 620
    const-string v2, "dataReportSize"

    const-wide/16 v13, -0x1

    invoke-virtual {v1, v2, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 621
    move-object/from16 v15, p0

    :try_start_e
    iget-object v5, v15, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    new-instance v4, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v10

    move-object v13, v4

    move v4, v11

    move-object v14, v5

    move v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;-><init>(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;IIIJ)V

    invoke-interface {v14, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "TrafficMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parserTraficCfg urlList:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",reportRepeat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",overflowRepeat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",degradeRepeat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 613
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 629
    :catch_8
    move-exception v0

    goto :goto_9

    .line 613
    :cond_2
    move-object/from16 v15, p0

    .line 631
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_b

    .line 633
    :catch_9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_a

    .line 629
    :catch_a
    move-exception v0

    move-object/from16 v15, p0

    .line 630
    :goto_9
    :try_start_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TrafficMonitor"

    const-string/jumbo v2, "parse urlList error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 635
    monitor-exit p0

    return-void

    .line 633
    :catch_b
    move-exception v0

    .line 634
    :goto_a
    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TrafficMonitor"

    const-string/jumbo v2, "parse trafic config error "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 636
    monitor-exit p0

    return-void

    .line 533
    :catchall_1
    move-exception v0

    :goto_b
    monitor-exit p0

    throw v0
.end method

.method private static h()Ljava/lang/String;
    .locals 5

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "statusDesBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "dateTime":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 400
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 401
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private i()V
    .locals 12

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficHost"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    .local v0, "hostDataSet":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "hostValue":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\r\n"

    const/16 v6, 0x3a

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 418
    .local v4, "host":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .end local v4    # "host":Ljava/lang/String;
    goto :goto_0

    .line 422
    :cond_0
    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "trafficLog"

    const-string v9, ""

    invoke-direct {v3, v8, v9, v4, v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 423
    .local v3, "hostLogEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 426
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v7, "trafficUrl"

    invoke-virtual {v4, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 427
    .local v2, "urlDataSet":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "urlValue":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 429
    .local v10, "url":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v10    # "url":Ljava/lang/String;
    goto :goto_1

    .line 433
    :cond_1
    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v6, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 434
    .local v5, "urlLogEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    invoke-interface {v6, v8, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 437
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "trafficReport"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 443
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 444
    .local v2, "reportMap":Ljava/util/Map;
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    .local v3, "reportInfo":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    nop

    .end local v3    # "reportInfo":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v2    # "reportMap":Ljava/util/Map;
    :cond_0
    goto :goto_1

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TrafficMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)V
    .locals 48
    .param p1, "trafficRecord"    # Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    .line 88
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    .line 89
    .local v3, "host":Ljava/lang/String;
    iget-object v4, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    .line 90
    .local v4, "url":Ljava/lang/String;
    iget-wide v5, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    iget-wide v5, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    goto :goto_0

    :cond_0
    move-wide v5, v7

    .line 91
    .local v5, "reqSize":J
    :goto_0
    iget-wide v9, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    cmp-long v0, v9, v7

    if-lez v0, :cond_1

    iget-wide v9, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    goto :goto_1

    :cond_1
    move-wide v9, v7

    .line 92
    .local v9, "respSize":J
    :goto_1
    add-long v11, v5, v9

    .line 93
    .local v11, "dataLength":J
    iget-object v0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    const-string v15, "WIFI"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v15, v0

    .line 95
    .local v15, "isData":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    return-void

    .line 99
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, "TrafficMonitor"

    if-eqz v0, :cond_4

    .line 101
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 104
    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "noteTraficConsume, url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v13, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    return-void

    .line 111
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 112
    .local v7, "nowTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    move-wide/from16 v20, v5

    .end local v5    # "reqSize":J
    .local v20, "reqSize":J
    const-wide/16 v5, -0x1

    const-string/jumbo v14, "traficCheckTime"

    invoke-virtual {v0, v14, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v18, 0x0

    move-wide/from16 v22, v18

    .line 114
    .local v22, "traficCheckTime":J
    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    .end local v9    # "respSize":J
    .local v24, "respSize":J
    const-wide/16 v9, 0x1

    cmp-long v0, v5, v18

    if-lez v0, :cond_7

    cmp-long v0, v22, v7

    if-lez v0, :cond_6

    goto :goto_4

    .line 118
    :cond_6
    sub-long v5, v7, v22

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v26

    cmp-long v0, v5, v26

    if-lez v0, :cond_8

    .line 119
    const-string/jumbo v0, "noteTraficConsume"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v14, v7, v8}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 122
    move-wide/from16 v22, v7

    goto :goto_5

    .line 115
    :cond_7
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v14, v7, v8}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 116
    move-wide/from16 v22, v7

    .line 125
    :cond_8
    :goto_5
    const-string v5, ">="

    const-wide/16 v26, 0x400

    if-eqz v15, :cond_1c

    .line 126
    iget-object v14, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    .line 127
    .local v14, "networkType":Ljava/lang/String;
    iget-object v9, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    .line 128
    .local v9, "channel":Ljava/lang/String;
    iget-object v10, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    .line 129
    .local v10, "owner":Ljava/lang/String;
    iget-object v0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    .line 130
    .local v0, "currentPage":Ljava/lang/String;
    iget-object v6, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    .line 132
    .local v6, "currentUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 133
    const-string v14, ""

    .line 135
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 136
    const-string v9, ""

    .line 138
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 139
    const-string v10, ""

    .line 141
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 142
    const-string v0, ""

    .line 144
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 145
    const-string v6, ""

    .line 148
    :cond_d
    iget-object v2, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    move/from16 v32, v15

    .end local v15    # "isData":Z
    .local v32, "isData":Z
    const-string v15, "dataTrafficHost"

    move-object/from16 v33, v13

    const/4 v13, 0x4

    invoke-virtual {v2, v15, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v13, 0x0

    move-object v15, v13

    .line 149
    .local v15, "hostDataSet":Landroid/content/SharedPreferences;
    move-object v13, v2

    move-object v15, v5

    move-object/from16 v34, v6

    const-wide/16 v5, 0x0

    .end local v6    # "currentUrl":Ljava/lang/String;
    .end local v15    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v13, "hostDataSet":Landroid/content/SharedPreferences;
    .local v34, "currentUrl":Ljava/lang/String;
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v35

    add-long v5, v35, v11

    .line 150
    .local v5, "sizeHost":J
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    iget-object v2, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    move-object/from16 v35, v13

    .end local v13    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v35, "hostDataSet":Landroid/content/SharedPreferences;
    const-string v13, "dataTrafficUrl"

    move-object/from16 v36, v15

    const/4 v15, 0x4

    invoke-virtual {v2, v13, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v13, 0x0

    .line 153
    .local v13, "urlDataSet":Landroid/content/SharedPreferences;
    move-object v13, v2

    move-wide/from16 v37, v5

    const-wide/16 v5, 0x0

    .end local v5    # "sizeHost":J
    .local v37, "sizeHost":J
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v39

    add-long v5, v39, v11

    .line 154
    .local v5, "sizeUrl":J
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    iget-object v15, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v39, v2

    .end local v2    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v39, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    move-object/from16 v2, v30

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "urlKey":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    goto :goto_7

    .line 163
    .end local v2    # "urlKey":Ljava/lang/String;
    :cond_e
    move-object/from16 v2, v39

    goto :goto_6

    .line 160
    .restart local v2    # "urlKey":Ljava/lang/String;
    :cond_f
    :goto_7
    move-object/from16 v30, v13

    .end local v13    # "urlDataSet":Landroid/content/SharedPreferences;
    .local v30, "urlDataSet":Landroid/content/SharedPreferences;
    iget-object v13, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;

    .line 161
    .end local v39    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v13, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    move-object v2, v13

    goto :goto_8

    .line 158
    .end local v30    # "urlDataSet":Landroid/content/SharedPreferences;
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v13, "urlDataSet":Landroid/content/SharedPreferences;
    :cond_10
    move-object/from16 v39, v2

    move-object/from16 v30, v13

    .line 164
    .end local v13    # "urlDataSet":Landroid/content/SharedPreferences;
    .restart local v30    # "urlDataSet":Landroid/content/SharedPreferences;
    :goto_8
    if-eqz v2, :cond_12

    move-wide/from16 v39, v11

    .end local v11    # "dataLength":J
    .local v39, "dataLength":J
    iget-wide v11, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->d:J

    const-wide/16 v18, 0x0

    cmp-long v13, v11, v18

    if-gez v13, :cond_11

    goto :goto_9

    :cond_11
    move-object v11, v15

    .local v11, "hostLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    goto :goto_a

    .end local v39    # "dataLength":J
    .local v11, "dataLength":J
    :cond_12
    move-wide/from16 v39, v11

    .line 165
    .end local v11    # "dataLength":J
    .restart local v39    # "dataLength":J
    :goto_9
    iget-object v11, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    const-string/jumbo v12, "urlDefault"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;

    move-object v11, v15

    .line 169
    .local v11, "hostLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    :goto_a
    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    .line 170
    move-object v11, v12

    if-nez v12, :cond_14

    .line 171
    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 172
    .local v13, "hostKey":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 173
    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    .line 174
    goto :goto_c

    .line 176
    .end local v13    # "hostKey":Ljava/lang/String;
    :cond_13
    goto :goto_b

    .line 180
    :cond_14
    :goto_c
    const-string v12, ".alicdn."

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 181
    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    const-string v13, "gw.alipayobjects.com"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    .line 184
    :cond_15
    if-eqz v11, :cond_16

    iget-wide v12, v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->k:J

    const-wide/16 v18, 0x0

    cmp-long v15, v12, v18

    if-gez v15, :cond_17

    .line 185
    :cond_16
    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    const-string v13, "dataDefault"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    .line 189
    :cond_17
    sub-long v12, v7, v22

    sget-object v15, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v41, v7

    const-wide/16 v7, 0x1

    .end local v7    # "nowTime":J
    .local v41, "nowTime":J
    invoke-virtual {v15, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v28

    div-long v12, v12, v28

    add-long/2addr v12, v7

    .line 191
    .local v12, "step":J
    const-string v7, ",beyond data dataReportSize:"

    const-string/jumbo v8, "monitorTraffic"

    const-string v15, "Split"

    if-eqz v2, :cond_19

    const-wide/16 v18, 0x0

    cmp-long v43, v12, v18

    if-lez v43, :cond_19

    .line 193
    move-object/from16 v44, v3

    move-object/from16 v43, v4

    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .local v43, "url":Ljava/lang/String;
    .local v44, "host":Ljava/lang/String;
    iget-wide v3, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->d:J

    cmp-long v45, v3, v18

    if-lez v45, :cond_18

    iget-wide v3, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->d:J

    mul-long v3, v3, v26

    mul-long v3, v3, v12

    cmp-long v45, v5, v3

    if-ltz v45, :cond_18

    .line 194
    iget-object v3, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v45, v10

    move-object/from16 v10, v43

    .end local v43    # "url":Ljava/lang/String;
    .local v10, "url":Ljava/lang/String;
    .local v45, "owner":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v43, v0

    move-object/from16 v0, v34

    .end local v34    # "currentUrl":Ljava/lang/String;
    .local v0, "currentUrl":Ljava/lang/String;
    .local v43, "currentPage":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 196
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v46, v5

    move-object/from16 v5, v36

    .end local v5    # "sizeUrl":J
    .local v46, "sizeUrl":J
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v33

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 193
    .end local v45    # "owner":Ljava/lang/String;
    .end local v46    # "sizeUrl":J
    .local v0, "currentPage":Ljava/lang/String;
    .restart local v5    # "sizeUrl":J
    .local v10, "owner":Ljava/lang/String;
    .restart local v34    # "currentUrl":Ljava/lang/String;
    .local v43, "url":Ljava/lang/String;
    :cond_18
    move-wide/from16 v46, v5

    move-object/from16 v45, v10

    move-object/from16 v5, v33

    move-object/from16 v10, v43

    move-object/from16 v43, v0

    move-object/from16 v0, v34

    .end local v5    # "sizeUrl":J
    .end local v34    # "currentUrl":Ljava/lang/String;
    .local v0, "currentUrl":Ljava/lang/String;
    .local v10, "url":Ljava/lang/String;
    .local v43, "currentPage":Ljava/lang/String;
    .restart local v45    # "owner":Ljava/lang/String;
    .restart local v46    # "sizeUrl":J
    goto :goto_d

    .line 191
    .end local v43    # "currentPage":Ljava/lang/String;
    .end local v44    # "host":Ljava/lang/String;
    .end local v45    # "owner":Ljava/lang/String;
    .end local v46    # "sizeUrl":J
    .local v0, "currentPage":Ljava/lang/String;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "sizeUrl":J
    .local v10, "owner":Ljava/lang/String;
    .restart local v34    # "currentUrl":Ljava/lang/String;
    :cond_19
    move-object/from16 v43, v0

    move-object/from16 v44, v3

    move-wide/from16 v46, v5

    move-object/from16 v45, v10

    move-object/from16 v5, v33

    move-object/from16 v0, v34

    move-object v10, v4

    .line 204
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "sizeUrl":J
    .end local v34    # "currentUrl":Ljava/lang/String;
    .local v0, "currentUrl":Ljava/lang/String;
    .local v10, "url":Ljava/lang/String;
    .restart local v43    # "currentPage":Ljava/lang/String;
    .restart local v44    # "host":Ljava/lang/String;
    .restart local v45    # "owner":Ljava/lang/String;
    .restart local v46    # "sizeUrl":J
    :goto_d
    if-eqz v11, :cond_1b

    const-wide/16 v3, 0x0

    cmp-long v6, v12, v3

    if-lez v6, :cond_1b

    .line 206
    move-object/from16 v33, v5

    iget-wide v5, v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->k:J

    cmp-long v34, v5, v3

    if-lez v34, :cond_1a

    iget-wide v3, v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->k:J

    mul-long v3, v3, v26

    mul-long v3, v3, v12

    cmp-long v5, v37, v3

    if-ltz v5, :cond_1a

    .line 207
    iget-object v3, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 208
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v5, v37

    .end local v37    # "sizeHost":J
    .local v5, "sizeHost":J
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v45

    .end local v45    # "owner":Ljava/lang/String;
    .local v8, "owner":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v34, v2

    move-object/from16 v2, v44

    .end local v44    # "host":Ljava/lang/String;
    .local v2, "host":Ljava/lang/String;
    .local v34, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v43

    .end local v43    # "currentPage":Ljava/lang/String;
    .local v8, "currentPage":Ljava/lang/String;
    .restart local v45    # "owner":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 209
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v15, v36

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "sizeHost":J
    .restart local v37    # "sizeHost":J
    iget-wide v5, v11, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->k:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v33

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 206
    .end local v8    # "currentPage":Ljava/lang/String;
    .end local v34    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .restart local v43    # "currentPage":Ljava/lang/String;
    .restart local v44    # "host":Ljava/lang/String;
    :cond_1a
    move-object/from16 v34, v2

    move-object/from16 v5, v33

    move-object/from16 v15, v36

    move-object/from16 v8, v43

    move-object/from16 v2, v44

    .end local v43    # "currentPage":Ljava/lang/String;
    .end local v44    # "host":Ljava/lang/String;
    .local v2, "host":Ljava/lang/String;
    .restart local v8    # "currentPage":Ljava/lang/String;
    .restart local v34    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    goto :goto_e

    .line 204
    .end local v8    # "currentPage":Ljava/lang/String;
    .end local v34    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .restart local v43    # "currentPage":Ljava/lang/String;
    .restart local v44    # "host":Ljava/lang/String;
    :cond_1b
    move-object/from16 v34, v2

    move-object/from16 v15, v36

    move-object/from16 v8, v43

    move-object/from16 v2, v44

    .line 219
    .end local v0    # "currentUrl":Ljava/lang/String;
    .end local v9    # "channel":Ljava/lang/String;
    .end local v11    # "hostLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .end local v12    # "step":J
    .end local v14    # "networkType":Ljava/lang/String;
    .end local v30    # "urlDataSet":Landroid/content/SharedPreferences;
    .end local v35    # "hostDataSet":Landroid/content/SharedPreferences;
    .end local v37    # "sizeHost":J
    .end local v43    # "currentPage":Ljava/lang/String;
    .end local v44    # "host":Ljava/lang/String;
    .end local v45    # "owner":Ljava/lang/String;
    .end local v46    # "sizeUrl":J
    .local v2, "host":Ljava/lang/String;
    :goto_e
    move-object v0, v14

    goto :goto_f

    .line 125
    .end local v2    # "host":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    .end local v32    # "isData":Z
    .end local v39    # "dataLength":J
    .end local v41    # "nowTime":J
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v7    # "nowTime":J
    .local v11, "dataLength":J
    .local v15, "isData":Z
    :cond_1c
    move-object v2, v3

    move-object v10, v4

    move-wide/from16 v41, v7

    move-wide/from16 v39, v11

    move/from16 v32, v15

    move-object v15, v5

    move-object v5, v13

    const/4 v13, 0x0

    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v7    # "nowTime":J
    .end local v11    # "dataLength":J
    .end local v15    # "isData":Z
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    .restart local v32    # "isData":Z
    .restart local v39    # "dataLength":J
    .restart local v41    # "nowTime":J
    move-object v0, v13

    move-object v8, v0

    .line 219
    :goto_f
    iget-object v3, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v4, "trafficHost"

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 220
    .local v0, "hostDataSet":Landroid/content/SharedPreferences;
    move-object v4, v3

    const-wide/16 v6, 0x0

    .end local v0    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v4, "hostDataSet":Landroid/content/SharedPreferences;
    invoke-interface {v3, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    add-long v11, v11, v39

    .line 221
    .local v11, "size":J
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v3, "trafficUrl"

    const/4 v6, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v3, v8

    .line 224
    .local v3, "urlDataSet":Landroid/content/SharedPreferences;
    move-object v3, v0

    const/4 v6, 0x0

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    add-int/2addr v6, v0

    .line 225
    .local v6, "repeat":I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    iget-object v7, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 230
    .local v8, "urlKey":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v10, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_11

    .line 234
    .end local v8    # "urlKey":Ljava/lang/String;
    :cond_1d
    goto :goto_10

    .line 231
    .restart local v8    # "urlKey":Ljava/lang/String;
    :cond_1e
    :goto_11
    iget-object v7, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;

    .line 232
    move-object v7, v0

    goto :goto_12

    .line 229
    .end local v8    # "urlKey":Ljava/lang/String;
    :cond_1f
    move-object v7, v0

    .line 236
    .end local v0    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v7, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    :goto_12
    const/4 v0, 0x0

    .line 237
    .local v0, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    iget-object v8, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 238
    .local v9, "hostKey":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 239
    iget-object v8, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    .line 240
    goto :goto_14

    .line 242
    .end local v9    # "hostKey":Ljava/lang/String;
    :cond_20
    goto :goto_13

    .line 244
    :cond_21
    :goto_14
    if-nez v0, :cond_22

    .line 245
    iget-object v8, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e:Ljava/util/Map;

    const-string v9, "default"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;

    move-object v8, v0

    goto :goto_15

    .line 244
    :cond_22
    move-object v8, v0

    .line 249
    .end local v0    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v8, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    :goto_15
    if-eqz v8, :cond_23

    iget-wide v13, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    const-wide/16 v16, 0x0

    cmp-long v0, v13, v16

    if-lez v0, :cond_23

    iget-wide v13, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    mul-long v13, v13, v26

    cmp-long v0, v39, v13

    if-lez v0, :cond_23

    .line 252
    move-wide/from16 v13, v39

    .end local v39    # "dataLength":J
    .local v13, "dataLength":J
    :try_start_1
    invoke-static {v10, v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    goto :goto_16

    .line 253
    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 254
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 249
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v13    # "dataLength":J
    .restart local v39    # "dataLength":J
    :cond_23
    move-wide/from16 v13, v39

    .line 259
    .end local v39    # "dataLength":J
    .restart local v13    # "dataLength":J
    :goto_16
    sub-long v16, v41, v22

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v30, v3

    move-object v9, v4

    const-wide/16 v3, 0x1

    .end local v3    # "urlDataSet":Landroid/content/SharedPreferences;
    .end local v4    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v9, "hostDataSet":Landroid/content/SharedPreferences;
    .restart local v30    # "urlDataSet":Landroid/content/SharedPreferences;
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v28

    div-long v16, v16, v28

    add-long v3, v16, v3

    .line 261
    .local v3, "step":J
    if-eqz v8, :cond_33

    const-wide/16 v16, 0x0

    cmp-long v0, v3, v16

    if-lez v0, :cond_33

    .line 265
    iget v0, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->d:I

    .line 267
    .local v0, "reportRepeat":I
    move-wide/from16 v28, v11

    .end local v11    # "size":J
    .local v28, "size":J
    iget-wide v11, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    cmp-long v33, v11, v16

    if-ltz v33, :cond_24

    iget-wide v11, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    mul-long v11, v11, v26

    cmp-long v16, v13, v11

    if-lez v16, :cond_24

    .line 269
    iget v0, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->h:I

    .line 272
    :cond_24
    if-eqz v7, :cond_25

    .line 273
    iget v0, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->a:I

    .line 277
    :cond_25
    iget-object v11, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v12, "trafficReport"

    move-object/from16 v16, v9

    const/4 v9, 0x4

    .end local v9    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v16, "hostDataSet":Landroid/content/SharedPreferences;
    invoke-virtual {v11, v12, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 278
    .local v11, "traficReportSp":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "url"

    const-string v12, "*"

    if-ltz v0, :cond_26

    move-wide/from16 v39, v13

    .end local v13    # "dataLength":J
    .restart local v39    # "dataLength":J
    int-to-long v13, v6

    move-object/from16 v44, v2

    .end local v2    # "host":Ljava/lang/String;
    .restart local v44    # "host":Ljava/lang/String;
    int-to-long v1, v0

    mul-long v1, v1, v3

    cmp-long v17, v13, v1

    if-ltz v17, :cond_27

    .line 279
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",beyond reportRepeat:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 278
    .end local v39    # "dataLength":J
    .end local v44    # "host":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v13    # "dataLength":J
    :cond_26
    move-object/from16 v44, v2

    move-wide/from16 v39, v13

    .line 287
    .end local v2    # "host":Ljava/lang/String;
    .end local v13    # "dataLength":J
    .restart local v39    # "dataLength":J
    .restart local v44    # "host":Ljava/lang/String;
    :cond_27
    :goto_17
    iget-wide v1, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->a:J

    const-string v13, "host"

    const-wide/16 v17, 0x0

    cmp-long v14, v1, v17

    if-ltz v14, :cond_28

    iget-wide v1, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->a:J

    mul-long v1, v1, v26

    mul-long v1, v1, v3

    cmp-long v14, v28, v1

    if-ltz v14, :cond_28

    .line 288
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v13

    move-wide/from16 v13, v28

    .end local v28    # "size":J
    .local v13, "size":J
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v11

    move-object/from16 v11, v44

    .end local v44    # "host":Ljava/lang/String;
    .local v11, "host":Ljava/lang/String;
    .local v28, "traficReportSp":Landroid/content/SharedPreferences;
    invoke-interface {v1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v33, v13

    .end local v13    # "size":J
    .local v33, "size":J
    iget-wide v13, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->a:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",beyond reportSize:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 287
    .end local v33    # "size":J
    .local v11, "traficReportSp":Landroid/content/SharedPreferences;
    .local v28, "size":J
    .restart local v44    # "host":Ljava/lang/String;
    :cond_28
    move-object/from16 v17, v13

    move-wide/from16 v33, v28

    move-object/from16 v28, v11

    move-object/from16 v11, v44

    .line 298
    .end local v44    # "host":Ljava/lang/String;
    .local v11, "host":Ljava/lang/String;
    .local v28, "traficReportSp":Landroid/content/SharedPreferences;
    .restart local v33    # "size":J
    :goto_18
    iget v1, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->e:I

    .line 300
    .local v1, "overflowRepeat":I
    iget-wide v13, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    const-wide/16 v18, 0x0

    cmp-long v2, v13, v18

    if-ltz v2, :cond_29

    iget-wide v13, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    mul-long v13, v13, v26

    cmp-long v2, v39, v13

    if-lez v2, :cond_29

    .line 302
    iget v1, v8, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->i:I

    .line 305
    :cond_29
    if-eqz v7, :cond_2a

    .line 306
    iget v1, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->b:I

    .line 310
    :cond_2a
    move-object/from16 v2, p0

    iget-object v13, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v14, "trafficOverflow"

    const/4 v2, 0x4

    invoke-virtual {v13, v14, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 311
    .local v13, "traficOverflowSp":Landroid/content/SharedPreferences;
    if-ltz v1, :cond_2c

    move-object v2, v7

    move-object v14, v8

    .end local v7    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .end local v8    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v14, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    int-to-long v7, v6

    move-object/from16 v29, v14

    move-object/from16 v36, v15

    .end local v14    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v29, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    int-to-long v14, v1

    mul-long v14, v14, v3

    cmp-long v35, v7, v14

    if-ltz v35, :cond_2b

    .line 312
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v36

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",beyond overflowRepeat:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 311
    :cond_2b
    move-object/from16 v14, v36

    goto :goto_19

    .end local v2    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .end local v29    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .restart local v7    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .restart local v8    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    :cond_2c
    move-object v2, v7

    move-object/from16 v29, v8

    move-object v14, v15

    .line 320
    .end local v7    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .end local v8    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .restart local v2    # "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .restart local v29    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    :goto_19
    move v8, v0

    move v15, v1

    move-object/from16 v7, v29

    .end local v0    # "reportRepeat":I
    .end local v1    # "overflowRepeat":I
    .end local v29    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v7, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v8, "reportRepeat":I
    .local v15, "overflowRepeat":I
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->b:J

    const-wide/16 v18, 0x0

    cmp-long v29, v0, v18

    if-ltz v29, :cond_2d

    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->b:J

    mul-long v0, v0, v26

    mul-long v0, v0, v3

    cmp-long v29, v33, v0

    if-ltz v29, :cond_2d

    .line 321
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v29, v8

    move-object/from16 v8, v17

    .end local v8    # "reportRepeat":I
    .local v29, "reportRepeat":I
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v35, v8

    move-object/from16 v17, v9

    move-wide/from16 v8, v33

    .end local v33    # "size":J
    .local v8, "size":J
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v13

    .end local v13    # "traficOverflowSp":Landroid/content/SharedPreferences;
    .local v33, "traficOverflowSp":Landroid/content/SharedPreferences;
    iget-wide v13, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->b:J

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",beyond overflowSize:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 320
    .end local v29    # "reportRepeat":I
    .local v8, "reportRepeat":I
    .restart local v13    # "traficOverflowSp":Landroid/content/SharedPreferences;
    .local v33, "size":J
    :cond_2d
    move/from16 v29, v8

    move-object/from16 v35, v17

    move-object/from16 v17, v9

    move-wide/from16 v8, v33

    move-object/from16 v33, v13

    .line 330
    .end local v13    # "traficOverflowSp":Landroid/content/SharedPreferences;
    .local v8, "size":J
    .restart local v29    # "reportRepeat":I
    .local v33, "traficOverflowSp":Landroid/content/SharedPreferences;
    :goto_1a
    iget v0, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->f:I

    .line 332
    .local v0, "degradeRepeat":I
    iget-wide v13, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    const-wide/16 v18, 0x0

    cmp-long v1, v13, v18

    if-ltz v1, :cond_2e

    iget-wide v13, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    mul-long v13, v13, v26

    cmp-long v1, v39, v13

    if-lez v1, :cond_2e

    .line 334
    iget v0, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->j:I

    .line 336
    :cond_2e
    if-eqz v2, :cond_2f

    .line 337
    iget v0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->c:I

    .line 340
    :cond_2f
    move-object/from16 v1, p0

    iget-object v13, v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v14, "trafficDegrade"

    const/4 v1, 0x4

    invoke-virtual {v13, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "traficDegradeSp":Landroid/content/SharedPreferences;
    const-string v13, ">"

    if-ltz v0, :cond_30

    move/from16 v31, v15

    .end local v15    # "overflowRepeat":I
    .local v31, "overflowRepeat":I
    int-to-long v14, v6

    move-wide/from16 v36, v8

    .end local v8    # "size":J
    .local v36, "size":J
    int-to-long v8, v0

    mul-long v8, v8, v3

    cmp-long v34, v14, v8

    if-ltz v34, :cond_31

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v14, v17

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",beyond degradeRepeate:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 344
    .end local v31    # "overflowRepeat":I
    .end local v36    # "size":J
    .restart local v8    # "size":J
    .restart local v15    # "overflowRepeat":I
    :cond_30
    move-wide/from16 v36, v8

    move/from16 v31, v15

    .line 353
    .end local v8    # "size":J
    .end local v15    # "overflowRepeat":I
    .restart local v31    # "overflowRepeat":I
    .restart local v36    # "size":J
    :cond_31
    :goto_1b
    iget-wide v8, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->c:J

    const-wide/16 v14, 0x0

    cmp-long v17, v8, v14

    if-ltz v17, :cond_32

    iget-wide v8, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->c:J

    mul-long v8, v8, v26

    mul-long v8, v8, v3

    cmp-long v14, v36, v8

    if-ltz v14, :cond_32

    .line 354
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v14, v35

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v14, v36

    .end local v36    # "size":J
    .local v14, "size":J
    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v7, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->a:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",beyond degradeSize:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 353
    .end local v14    # "size":J
    .restart local v36    # "size":J
    :cond_32
    move-wide/from16 v14, v36

    .end local v36    # "size":J
    .restart local v14    # "size":J
    goto :goto_1c

    .line 261
    .end local v0    # "degradeRepeat":I
    .end local v1    # "traficDegradeSp":Landroid/content/SharedPreferences;
    .end local v14    # "size":J
    .end local v16    # "hostDataSet":Landroid/content/SharedPreferences;
    .end local v28    # "traficReportSp":Landroid/content/SharedPreferences;
    .end local v29    # "reportRepeat":I
    .end local v31    # "overflowRepeat":I
    .end local v33    # "traficOverflowSp":Landroid/content/SharedPreferences;
    .end local v39    # "dataLength":J
    .local v2, "host":Ljava/lang/String;
    .local v7, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v8, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .restart local v9    # "hostDataSet":Landroid/content/SharedPreferences;
    .local v11, "size":J
    .local v13, "dataLength":J
    :cond_33
    move-object/from16 v16, v9

    move-wide/from16 v39, v13

    move-wide v14, v11

    move-object v11, v2

    move-object v2, v7

    move-object v7, v8

    .line 361
    .end local v8    # "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .end local v9    # "hostDataSet":Landroid/content/SharedPreferences;
    .end local v13    # "dataLength":J
    .local v2, "urlLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
    .local v7, "traficLimit":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
    .local v11, "host":Ljava/lang/String;
    .restart local v14    # "size":J
    .restart local v16    # "hostDataSet":Landroid/content/SharedPreferences;
    .restart local v39    # "dataLength":J
    :goto_1c
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "invoker"    # Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetTraficConsume!!! by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficMonitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficHost"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficUrl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficDegrade"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficOverflow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficReport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string v1, "dataTrafficHost"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string v1, "dataTrafficUrl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "monitorTraffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string/jumbo v3, "traficCheckTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 392
    return-void
.end method

.method public final b()V
    .locals 11

    const-string/jumbo v0, "size"

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "monitorTraffic"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 457
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 458
    .local v4, "reportMap":Ljava/util/Map;
    move-object v4, v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v2

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 459
    .local v7, "reportInfo":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 460
    const-string v9, "Split"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v5, "items":[Ljava/lang/String;
    move-object v5, v8

    array-length v8, v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 464
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v6, "params":Ljava/util/Map;
    move-object v6, v8

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v8, "networkType"

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v8, "channel"

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v8, "owner"

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v8, "identifier"

    aget-object v10, v5, v3

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    array-length v8, v5

    const/4 v10, 0x6

    if-lt v8, v10, :cond_1

    .line 471
    const-string v8, "currentPage"

    aget-object v9, v5, v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1
    array-length v8, v5

    const/4 v9, 0x7

    if-lt v8, v9, :cond_2

    .line 474
    const-string v8, "currentUrl"

    aget-object v9, v5, v10

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v8

    const-string/jumbo v9, "traffic"

    invoke-interface {v8, v9, v0, v2, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "params":Ljava/util/Map;
    .end local v7    # "reportInfo":Ljava/lang/String;
    goto :goto_0

    .line 480
    .end local v4    # "reportMap":Ljava/util/Map;
    :cond_3
    return-void

    .line 478
    :catchall_0
    move-exception v0

    .line 479
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TrafficMonitor"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "cfg"    # Ljava/lang/String;

    .line 514
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTraficCfg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficMonitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v1, "trafficCfg"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "config"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    invoke-direct {p0, p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "trafficOverflow"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 488
    .local v2, "overflowMap":Ljava/util/Map;
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 489
    .local v3, "overflowInfo":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    nop

    .end local v3    # "overflowInfo":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v2    # "overflowMap":Ljava/util/Map;
    :cond_0
    goto :goto_1

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TrafficMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "trafficDegrade"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 502
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 503
    .local v2, "degradetMap":Ljava/util/Map;
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 504
    .local v3, "degradetInfo":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    nop

    .end local v3    # "degradetInfo":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v2    # "degradetMap":Ljava/util/Map;
    :cond_0
    goto :goto_1

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TrafficMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final e()J
    .locals 2

    .line 522
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 526
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 530
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->h:J

    return-wide v0
.end method
