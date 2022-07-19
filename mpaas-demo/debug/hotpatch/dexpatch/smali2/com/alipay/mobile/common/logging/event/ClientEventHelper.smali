.class public Lcom/alipay/mobile/common/logging/event/ClientEventHelper;
.super Ljava/lang/Object;
.source "ClientEventHelper.java"


# static fields
.field private static e:Lcom/alipay/mobile/common/logging/event/ClientEventHelper;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a:J

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->d:J

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->e:Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->e:Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    .line 26
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->e:Lcom/alipay/mobile/common/logging/event/ClientEventHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ClientEventHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyUpload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getIntervalEventMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "uploadByEvent"

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 34
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/event/ClientEventHelper;
    .end local p1    # "eventType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
