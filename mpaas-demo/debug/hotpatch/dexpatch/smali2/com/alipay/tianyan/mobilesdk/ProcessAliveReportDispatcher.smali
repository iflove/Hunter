.class public Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;
.super Ljava/lang/Object;
.source "ProcessAliveReportDispatcher.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)Ljava/util/Map;
    .locals 2
    .param p0, "isOnDayFirstly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;",
            ">;"
        }
    .end annotation

    .line 24
    const-class v0, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;

    if-eqz p0, :cond_2

    .line 25
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    return-object v0

    .line 35
    :cond_2
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 36
    monitor-enter v0

    .line 37
    :try_start_1
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    .line 40
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 42
    :cond_4
    :goto_1
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static onProcessAliveReport(ZLandroid/content/Context;JZ)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 96
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    .line 99
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 103
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ProcessAliveReportDispatcher"

    const-string v3, "onProcessAliveReport, start"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;

    .line 112
    move-object v8, v6

    move-object v9, p1

    move-wide v10, p2

    move/from16 v12, p4

    :try_start_0
    invoke-interface/range {v7 .. v12}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;->onProcessAliveReport(Ljava/lang/String;Landroid/content/Context;JZ)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onProcessAliveReport: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 120
    sub-long v3, v7, v3

    .line 121
    nop

    .line 123
    const-wide/16 v9, 0x32

    cmp-long v0, v3, v9

    if-lez v0, :cond_2

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " spend, onProcessAliveReport: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    move-wide v3, v7

    goto :goto_1

    .line 129
    :cond_3
    return-object v1

    .line 100
    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static putProcessAliveReportDelegate(ZLjava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;)Z
    .locals 7
    .param p0, "isOnDayFirstly"    # Z
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;

    .line 47
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 52
    .local v1, "processAliveReportStore":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "processAlias":Ljava/lang/String;
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ProcessAliveReportDispatcher"

    if-eqz v3, :cond_1

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " process, putProcessAliveReportDelegate, exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v0

    .line 60
    :cond_1
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process, putProcessAliveReportDelegate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 48
    .end local v1    # "processAliveReportStore":Ljava/util/Map;
    .end local v2    # "processAlias":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method static removeProcessAliveReportDelegate(Ljava/lang/String;)Z
    .locals 6
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    return v1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "delegate":Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;
    sget-object v2, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;

    .line 77
    :cond_1
    sget-object v2, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->b:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;

    .line 81
    :cond_2
    const-string v2, "ProcessAliveReportDispatcher"

    if-nez v0, :cond_3

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeProcessAliveReportDelegate, not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v1

    .line 87
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeProcessAliveReportDelegate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    return v1
.end method
