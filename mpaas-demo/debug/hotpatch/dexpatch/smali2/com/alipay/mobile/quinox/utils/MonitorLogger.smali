.class public Lcom/alipay/mobile/quinox/utils/MonitorLogger;
.super Ljava/lang/Object;
.source "MonitorLogger.java"


# static fields
.field static final APM:Ljava/lang/String; = "apm"

.field static final CRASH:Ljava/lang/String; = "crash"

.field static final EXCEPTION:Ljava/lang/String; = "exception"

.field static final FOOTPRINT:Ljava/lang/String; = "footprint"

.field public static MONITORPOINT_CLIENTSERR:Ljava/lang/Object; = null

.field public static MONITORPOINT_FOOTPRINT:Ljava/lang/Object; = null

.field public static MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object; = null

.field public static MONITORPOINT_INVALID_CRASH:Ljava/lang/Object; = null

.field public static MONITORPOINT_PERFORMANCE:Ljava/lang/Object; = null

.field public static MONITORPOINT_SUB_THREAD_CRASH:Ljava/lang/Object; = null

.field static final MTBIZREPORT:Ljava/lang/String; = "mtBizReport"

.field private static final MTBIZ_FRAME:Ljava/lang/String; = "BIZ_FRAME"

.field static final PERFORMANCE:Ljava/lang/String; = "performance"

.field public static final SUBNAME_QUINOX:Ljava/lang/String; = "QUINOX_ERROR"

.field static onceReportExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

.field static sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->onceReportExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    const-string v0, "LauncherApplication"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    :goto_0
    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 205
    :catchall_1
    move-exception v1

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :cond_2
    :goto_1
    return-void
.end method

.method public static createPerformanceBuilderObject()Ljava/lang/Object;
    .locals 2

    .line 246
    :try_start_0
    const-class v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.mobile.common.logging.api.monitor.Performance$Builder"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cuClearException(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 500
    :try_start_0
    const-string v0, "com.alipay.mobile.common.logging.util.avail.ExceptionCollector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 501
    .local v2, "exceptionCollectorClass":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 502
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    .local v0, "exceptionCollector":Ljava/lang/Object;
    const-string v1, "clearException"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 505
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    nop

    .end local v0    # "exceptionCollector":Ljava/lang/Object;
    .end local v2    # "exceptionCollectorClass":Ljava/lang/Class;
    return-void

    .line 506
    :catchall_0
    move-exception v0

    .line 507
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static cuGetLaunchTimes(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "rLaunchTimes":Ljava/util/List;
    :try_start_0
    const-string v1, "com.alipay.mobile.common.logging.util.avail.ExceptionCollector"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 460
    .local v3, "exceptionCollectorClass":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 461
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    .local v1, "exceptionCollector":Ljava/lang/Object;
    const-string v2, "getLaunchTimes"

    new-array v4, v8, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 464
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 467
    .end local v1    # "exceptionCollector":Ljava/lang/Object;
    .end local v3    # "exceptionCollectorClass":Ljava/lang/Class;
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v1

    .line 466
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "MonitorLogger"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static cuRecordException(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 474
    :try_start_0
    const-string v0, "com.alipay.mobile.common.logging.util.avail.ExceptionCollector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 475
    .local v2, "exceptionCollectorClass":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 476
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "exceptionCollector":Ljava/lang/Object;
    const-string v1, "recordException"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 479
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    nop

    .end local v0    # "exceptionCollector":Ljava/lang/Object;
    .end local v2    # "exceptionCollectorClass":Ljava/lang/Class;
    return-void

    .line 480
    :catchall_0
    move-exception v0

    .line 481
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static cuRecordException(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "clientStartTime"    # J

    .line 487
    :try_start_0
    const-string v0, "com.alipay.mobile.common.logging.util.avail.ExceptionCollector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 488
    .local v2, "exceptionCollectorClass":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 489
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "exceptionCollector":Ljava/lang/Object;
    const-string v1, "recordException"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 492
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    nop

    .end local v0    # "exceptionCollector":Ljava/lang/Object;
    .end local v2    # "exceptionCollectorClass":Ljava/lang/Class;
    return-void

    .line 493
    :catchall_0
    move-exception v0

    .line 494
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static cuRecordNewLaunchTime(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchTime"    # J

    .line 450
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->recordNewLaunchTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    return-void

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static dangerousUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_0

    .line 276
    const-string v2, "dangerousUpload"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/util/Map;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    aput-object p3, v3, v9

    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 281
    :catchall_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 284
    :catchall_1
    move-exception v1

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static exception(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p0, "exceptionID"    # Ljava/lang/Object;
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 177
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_2

    .line 178
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 181
    :cond_0
    if-eqz p0, :cond_1

    .line 182
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object v2, p0

    check-cast v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v1, "MonitorLogger"

    const-string v2, "call exception with null exceptionID"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_2
    :goto_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    return-void

    .line 187
    :catchall_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 190
    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "onceReport"    # Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUINOX_ERROR"

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 152
    const-string v2, "msg"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    .line 156
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stack"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    if-eqz p3, :cond_3

    .line 160
    sget-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->onceReportExceptions:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    return-void

    .line 163
    :cond_2
    sget-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->onceReportExceptions:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    const-string v2, "BIZ_FRAME"

    invoke-static {v2, v1, p0, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    const-string v0, "unknown"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "detailMessage"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    const-string v0, "unknown"

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static flush(Z)V
    .locals 2
    .param p0, "sync"    # Z

    .line 88
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 91
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    if-eqz v0, :cond_1

    .line 92
    const-string v1, "applog"

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static footprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 210
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method public static footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_0

    .line 216
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 218
    :catchall_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 221
    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getBizExternParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBizExternParams"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    .line 428
    .local v2, "getBizExternParamsMethod":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 429
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v3, v0

    .line 430
    .local v3, "extParams":Ljava/util/Map;
    move-object v3, v1

    if-eqz v1, :cond_0

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    return-object v0

    .line 431
    .end local v2    # "getBizExternParamsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "extParams":Ljava/util/Map;
    :catchall_0
    move-exception v1

    .line 432
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "MonitorLogger"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getClientStatus()Ljava/lang/String;
    .locals 7

    const-string v0, "unknown"

    .line 395
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClientStatus"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 396
    .local v4, "getClientStatusMethod":Ljava/lang/reflect/Method;
    move-object v4, v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 397
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .local v2, "clientStatus":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 399
    move-object v2, v0

    .line 401
    :cond_0
    return-object v2

    .line 402
    .end local v2    # "clientStatus":Ljava/lang/String;
    .end local v4    # "getClientStatusMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 403
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "MonitorLogger"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getClientStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "nativeCrashInfo"    # Ljava/lang/String;

    const-string v0, "unknown"

    .line 411
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClientStatus"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 412
    .local v4, "getClientStatusMethod":Ljava/lang/reflect/Method;
    move-object v4, v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 413
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v7

    aput-object p0, v3, v8

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .local v2, "clientStatus":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 415
    move-object v2, v0

    .line 417
    :cond_0
    return-object v2

    .line 418
    .end local v2    # "clientStatus":Ljava/lang/String;
    .end local v4    # "getClientStatusMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 419
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "MonitorLogger"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getStartupBundle()Landroid/os/Bundle;
    .locals 6

    .line 347
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 349
    const-string v2, "getProcessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 350
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 351
    .local v2, "processInfo":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getStartupBundle"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 352
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 353
    .end local v2    # "processInfo":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 354
    return-object v0
.end method

.method public static getStartupData()Landroid/net/Uri;
    .locals 6

    .line 360
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 362
    const-string v2, "getProcessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 363
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 364
    .local v2, "processInfo":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getStartupData"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 365
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 366
    .end local v2    # "processInfo":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 367
    return-object v0
.end method

.method public static getStartupReason()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 60
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_CLIENTSERR:Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_SUB_THREAD_CRASH:Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_INVALID_CRASH:Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 68
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_FOOTPRINT:Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_PERFORMANCE:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 10
    .param p0, "builder"    # Ljava/lang/Object;
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 290
    return-object v0

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 295
    :try_start_1
    const-string v4, "setSubType"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v5, v0

    .line 296
    .local v5, "setSubType":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v5    # "setSubType":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v2

    goto/16 :goto_2

    .line 294
    :cond_1
    move-object v5, v0

    .line 298
    :goto_0
    if-eqz p2, :cond_2

    .line 299
    const-string v4, "setParam1"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 300
    .local v5, "setParam1":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v5    # "setParam1":Ljava/lang/reflect/Method;
    :cond_2
    if-eqz p3, :cond_3

    .line 303
    const-string v4, "setParam2"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 304
    .local v5, "setParam2":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p3, v6, v3

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v5    # "setParam2":Ljava/lang/reflect/Method;
    :cond_3
    if-eqz p4, :cond_4

    .line 307
    const-string v4, "setParam3"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 308
    .local v5, "setParam3":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p4, v6, v3

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v5    # "setParam3":Ljava/lang/reflect/Method;
    :cond_4
    if-eqz p5, :cond_6

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 311
    const-string v4, "addExtParam"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 312
    .local v4, "addExtParam":Ljava/lang/reflect/Method;
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 313
    .local v7, "entry":Ljava/util/Map$Entry;
    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 312
    :cond_5
    move-object v5, v4

    .line 316
    .end local v4    # "addExtParam":Ljava/lang/reflect/Method;
    :cond_6
    const-string v2, "build"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v4, v5

    .line 317
    .local v4, "build":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 318
    .end local v4    # "build":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v1

    move-object v1, v0

    .line 319
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    return-void
.end method

.method public static mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 265
    :catchall_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 268
    :catchall_1
    move-exception v1

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "eventParam"    # Ljava/lang/Object;

    .line 386
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyClientEvent"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    .local v1, "notifyClientEventMethod":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    nop

    .end local v1    # "notifyClientEventMethod":Ljava/lang/reflect/Method;
    return-void

    .line 388
    :catchall_0
    move-exception v0

    .line 389
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static performance(Ljava/lang/Object;)V
    .locals 1
    .param p0, "performance"    # Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_FOOTPRINT:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public static performance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "performanceId"    # Ljava/lang/Object;
    .param p1, "performance"    # Ljava/lang/Object;

    .line 230
    const-string v0, "performanceLog"

    const-string v1, "LauncherApplication"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v2, :cond_1

    .line 235
    move-object v3, p0

    check-cast v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    move-object v4, p1

    check-cast v4, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 237
    :catchall_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 240
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_2
    :goto_1
    return-void
.end method

.method public static prepareStartupReason()V
    .locals 6

    .line 373
    :try_start_0
    const-class v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.mobile.common.logging.api.LoggerFactory"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 375
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "getProcessInfo"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 376
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v1, "processInfo":Ljava/lang/Object;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "prepareStartupReason"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 378
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    nop

    .end local v1    # "processInfo":Ljava/lang/Object;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 379
    :catchall_0
    move-exception v0

    .line 380
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 440
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "putBizExternParams"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 441
    .local v1, "putBizExternParamsMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 442
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    nop

    .end local v1    # "putBizExternParamsMethod":Ljava/lang/reflect/Method;
    return-void

    .line 443
    :catchall_0
    move-exception v0

    .line 444
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "MonitorLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p0, "exceptionID"    # Ljava/lang/Object;
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "extParam"    # Ljava/lang/String;

    .line 117
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_0

    .line 118
    move-object v2, p0

    check-cast v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v1, v2, p1, p2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-void

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 123
    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sendCrash(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static sendCrash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "extParam"    # Ljava/lang/String;

    .line 105
    const-string v0, "LauncherApplication"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 111
    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static traceNativeCrash()V
    .locals 2

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 325
    return-void
.end method

.method public static traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "callStack"    # Ljava/lang/String;
    .param p2, "isBoot"    # Z

    .line 329
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "traceNativeCrash"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 330
    .local v1, "traceNativeCrashMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 331
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    nop

    .end local v1    # "traceNativeCrashMethod":Ljava/lang/reflect/Method;
    return-void

    .line 332
    :catchall_0
    move-exception v0

    .line 333
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static updateUpdateBundleKeysToLog(Ljava/util/Set;)V
    .locals 11
    .param p0, "updateBundleKeys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MonitorLogger"

    .line 513
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 516
    :cond_0
    const/4 v1, 0x0

    .line 518
    .local v1, "extInfo":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 519
    .local v4, "keys":Ljava/util/Set;
    move-object v4, v2

    invoke-interface {v2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 521
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v2

    .line 523
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 524
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    nop

    .end local v6    # "key":Ljava/lang/String;
    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 529
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_3

    .line 531
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v6, "putBizExternParams"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 532
    .local v3, "putBizExternParamsMethod":Ljava/lang/reflect/Method;
    sget-object v6, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "bundleUpdates"

    aput-object v8, v7, v10

    aput-object v1, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .end local v3    # "putBizExternParamsMethod":Ljava/lang/reflect/Method;
    return-void

    .line 533
    :catchall_0
    move-exception v2

    .line 534
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 539
    .end local v1    # "extInfo":Ljava/lang/String;
    .end local v2    # "tr":Ljava/lang/Throwable;
    .end local v4    # "keys":Ljava/util/Set;
    :cond_3
    return-void

    .line 537
    :catchall_1
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 514
    :cond_4
    :goto_1
    return-void
.end method

.method public static upload(Ljava/lang/String;)V
    .locals 5
    .param p0, "logCategory"    # Ljava/lang/String;

    .line 76
    const-string v0, ")"

    const-string v1, "upload(upload="

    const-string v2, "LauncherApplication"

    :try_start_0
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    if-eqz v3, :cond_0

    .line 77
    invoke-interface {v3, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 79
    :catchall_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .end local v3    # "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method
