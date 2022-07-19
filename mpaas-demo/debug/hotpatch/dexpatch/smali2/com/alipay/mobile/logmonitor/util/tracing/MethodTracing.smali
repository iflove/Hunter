.class public Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
.super Ljava/lang/Object;
.source "MethodTracing.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
    .locals 2

    const-class v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;-><init>()V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    .line 24
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .param p5, "x4"    # I

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b(Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Ljava/lang/String;

    const-string/jumbo v2, "startMethodTracing"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/monitor/util/FileUtils;->isCanUseSdCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    invoke-static {p1, p5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 44
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 45
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "tracing: ok, spendTime: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p4, :cond_0

    .line 50
    invoke-interface {p4, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 52
    :cond_0
    goto :goto_0

    .line 53
    :cond_1
    sget-object p1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_SDCARD:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string p2, "[MethodTracing.doMethodTracing] has no sdcard"

    invoke-interface {p4, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo p2, "startMethodTracing end"

    invoke-interface {p1, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    :goto_1
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    sget-object p3, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "doMethodTracing: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p3, p5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p4, :cond_2

    .line 59
    sget-object p2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "[MethodTracing.doMethodTracing] "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo p2, "startMethodTracing end"

    invoke-interface {p1, p3, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    sget-object p3, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Ljava/lang/String;

    const-string/jumbo p4, "startMethodTracing end"

    invoke-interface {p2, p3, p4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V
    .locals 9
    .param p1, "traceName"    # Ljava/lang/String;
    .param p2, "traceTime"    # J
    .param p4, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .param p5, "bufferSize"    # I

    .line 30
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v8, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V

    invoke-virtual {v0, v8}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method
