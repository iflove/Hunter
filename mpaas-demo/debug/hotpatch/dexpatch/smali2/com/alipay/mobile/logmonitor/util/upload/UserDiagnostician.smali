.class public Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static g:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;


# instance fields
.field private h:Landroid/content/Context;

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a:J

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b:J

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c:J

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->d:J

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->e:J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 70
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->j:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    .param p1, "x1"    # J

    .line 70
    iput-wide p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->j:J

    return-wide p1
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    .locals 2

    .line 137
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->g:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    if-eqz v0, :cond_0

    .line 140
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->g:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->g:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 133
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->g:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 129
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 4
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "traceName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    const/4 v2, 0x0

    .line 883
    .local v2, "tracingUploader":Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
    move-object v2, v1

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$6;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$6;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 895
    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a()V

    .line 896
    return-void
.end method

.method private a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 3
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p2, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 847
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 875
    .local v0, "innerCallback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;-><init>(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    const/4 v2, 0x0

    .line 876
    .local v2, "logUploader":Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;
    move-object v2, v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 877
    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a()V

    .line 878
    return-void
.end method

.method private a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Z)V
    .locals 3
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p2, "isDumpLastAnr"    # Z

    .line 914
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a()Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    new-instance v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$8;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$8;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a(Landroid/content/Context;ZLcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 926
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    .param p1, "x1"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p2, "x2"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 6
    .param p1, "taskType"    # Ljava/lang/String;
    .param p2, "toTime"    # J

    .line 380
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processLeaveHint: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserDiagnostician"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V

    const/4 v1, 0x0

    move-object v3, v1

    .line 384
    .local v3, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    move-object v3, v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    .line 385
    const-string/jumbo v0, "positive"

    iput-object v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 386
    iput-object p1, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 388
    const-string v0, "any"

    iput-object v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 389
    iget-object v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 390
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 391
    iput-wide p2, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    .line 392
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_POSITIVE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    .line 395
    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    .end local v3    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    return-void

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "processLeaveHintCore"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 817
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    goto :goto_0

    .line 820
    :catchall_0
    move-exception v1

    .line 824
    :goto_0
    :try_start_2
    const-string/jumbo v1, "userID"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string/jumbo v1, "taskID"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string/jumbo v1, "type"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v1, "fileName"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string/jumbo v1, "networkCondition"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v1, "isForceUpload"

    iget-boolean v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    const-string v1, "fromTime"

    iget-wide v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 831
    const-string/jumbo v1, "toTime"

    iget-wide v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 832
    const-string v1, "fromType"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string/jumbo v1, "traceviewTime"

    iget-wide v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 834
    const-string/jumbo v1, "traceviewSize"

    iget v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string/jumbo v1, "stackTracerTime"

    iget-wide v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 836
    const-string/jumbo v1, "stackTracerInterval"

    iget-wide v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 837
    const-string/jumbo v1, "retrieveFilePath"

    iget-object v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v1, "isPositive"

    iget-boolean v2, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 843
    .end local v0    # "intent":Landroid/content/Intent;
    return-void

    .line 841
    :catchall_1
    move-exception v0

    .line 842
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendDiagnoseTaskIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserDiagnostician"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .param p1, "diagnoseTaskList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;",
            ">;)V"
        }
    .end annotation

    .line 754
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 755
    .local v2, "tasksSize":I
    move v2, v0

    if-nez v0, :cond_0

    .line 756
    return-void

    .line 759
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 761
    .local v3, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    :try_start_0
    iget-object v4, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tasks count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 763
    const-string v4, "applog"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 764
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    goto :goto_0

    .line 766
    :cond_1
    const-string/jumbo v4, "trafficLog"

    iget-object v6, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    goto :goto_0

    .line 769
    :cond_2
    const-string v4, "logcat"

    iget-object v6, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 770
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a()V

    .line 771
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 772
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    goto :goto_0

    .line 774
    :cond_3
    const-string/jumbo v4, "traceviewPush"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 775
    invoke-direct {p0, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    goto :goto_0

    .line 777
    :cond_4
    const-string/jumbo v4, "traceviewWallet"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "[UserDiagnostician.startDiagnose] wallet is not running"

    if-eqz v4, :cond_6

    .line 778
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 779
    const-string/jumbo v4, "monitor.action.dump.traceview"

    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    goto/16 :goto_0

    .line 781
    :cond_5
    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_FAILURE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 784
    :cond_6
    const-string/jumbo v4, "stacktracerPush"

    iget-object v6, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 785
    invoke-direct {p0, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    goto/16 :goto_0

    .line 787
    :cond_7
    const-string/jumbo v4, "stacktracerWallet"

    iget-object v6, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 788
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 789
    const-string/jumbo v4, "monitor.action.dump.stacktracer"

    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    goto/16 :goto_0

    .line 791
    :cond_8
    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_FAILURE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 794
    :cond_9
    const-string v4, "anrLog"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 795
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Z)V

    goto/16 :goto_0

    .line 797
    :cond_a
    const-string v4, "anrtrace"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 798
    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Z)V

    goto/16 :goto_0

    .line 800
    :cond_b
    const-string/jumbo v4, "storagetrace"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 801
    invoke-direct {p0, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    goto/16 :goto_0

    .line 803
    :cond_c
    const-string/jumbo v4, "retrieveFile"

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 804
    invoke-direct {p0, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->d(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    :cond_d
    goto/16 :goto_0

    .line 807
    :catchall_0
    move-exception v4

    .line 808
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "UserDiagnostician"

    const-string/jumbo v7, "startDiagnose"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 809
    sget-object v5, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_FAILURE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UserDiagnostician.startDiagnose] "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .end local v3    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local v4    # "t":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 812
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 813
    return-void
.end method

.method public static b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p1, "diagnoseCode"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "diagnoseMsg"    # Ljava/lang/String;

    .line 163
    move-object/from16 v1, p0

    const-string v0, "ackResult: "

    const-string v2, "UserDiagnostician"

    if-nez v1, :cond_0

    .line 164
    const-string v3, "diagnoseTask is null"

    .line 165
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v3

    .line 168
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_0
    iget-boolean v3, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 169
    move-object v0, v4

    .line 171
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v2, "isPositive is true"

    return-object v2

    .line 168
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 174
    .local v3, "diagnoseStatus":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$2;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 230
    const-string v3, "-1"

    goto :goto_0

    .line 225
    :pswitch_0
    const-string v3, "210"

    .line 226
    goto :goto_0

    .line 222
    :pswitch_1
    const-string v3, "207"

    .line 223
    goto :goto_0

    .line 219
    :pswitch_2
    const-string v3, "206"

    .line 220
    goto :goto_0

    .line 215
    :pswitch_3
    const-string v3, "204"

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->adjustRequestSpanByReceived()V

    .line 217
    goto :goto_0

    .line 211
    :pswitch_4
    const-string v3, "203"

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->adjustRequestSpanByReceived()V

    .line 213
    goto :goto_0

    .line 208
    :pswitch_5
    const-string v3, "false"

    .line 209
    goto :goto_0

    .line 204
    :pswitch_6
    const-string/jumbo v3, "true"

    .line 206
    goto :goto_0

    .line 201
    :pswitch_7
    const-string v3, "false"

    .line 202
    goto :goto_0

    .line 197
    :pswitch_8
    const-string v3, "false"

    .line 199
    goto :goto_0

    .line 194
    :pswitch_9
    const-string v3, "false"

    .line 195
    goto :goto_0

    .line 191
    :pswitch_a
    const-string v3, "false"

    .line 192
    goto :goto_0

    .line 187
    :pswitch_b
    const-string v3, "205"

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->adjustRequestSpanByNetNotMatch()V

    .line 189
    goto :goto_0

    .line 184
    :pswitch_c
    const-string v3, "false"

    .line 185
    goto :goto_0

    .line 181
    :pswitch_d
    const-string v3, "false"

    .line 182
    goto :goto_0

    .line 177
    :pswitch_e
    const-string v3, "false"

    .line 179
    nop

    .line 234
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, "networkType":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "productVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "processName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v4

    .line 239
    .local v6, "messageBuf":Ljava/lang/StringBuilder;
    move-object v15, v5

    .end local v6    # "messageBuf":Ljava/lang/StringBuilder;
    .local v15, "messageBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v5, ", process: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v5, ", network: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v5, ", from: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v5, ", product: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, ", code: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v5, ", status: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v5, " # "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .end local p2    # "diagnoseMsg":Ljava/lang/String;
    .local v9, "diagnoseMsg":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 257
    const-string v6, "diagnoseStatus: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v6, ", diagnoseMsg: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v6, ", diagnoseTask: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "messageStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 265
    .local v7, "httpOutput":Ljava/io/DataOutputStream;
    const/4 v11, 0x0

    .line 267
    .local v11, "httpInput":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v4

    .line 268
    .local v16, "params":Ljava/util/HashMap;
    move-object/from16 p2, v0

    .end local v16    # "params":Ljava/util/HashMap;
    .local p2, "params":Ljava/util/HashMap;
    const-string/jumbo v4, "userId"

    iget-object v5, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v0, "taskId"

    iget-object v4, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    move-object/from16 v5, p2

    .end local p2    # "params":Ljava/util/HashMap;
    .local v5, "params":Ljava/util/HashMap;
    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v0, "type"

    iget-object v4, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "isSuccess"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "diagnoseMsg"

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v0, "networkType"

    invoke-virtual {v5, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "fromType"

    iget-object v4, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v0, "productVer"

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "process"

    invoke-virtual {v5, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {v5}, Lcom/alipay/mobile/monitor/util/NetUtils;->formatParamStringForGET(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "output":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->b()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "url":Ljava/lang/String;
    move-object/from16 p2, v5

    .end local v5    # "params":Ljava/util/HashMap;
    .restart local p2    # "params":Ljava/util/HashMap;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 281
    move-object v6, v5

    move-object/from16 v18, v4

    .end local v4    # "url":Ljava/lang/String;
    .local v18, "url":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 282
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 284
    const-string v4, "POST"

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 285
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v6, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v6, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "Cache-Control"

    const-string/jumbo v5, "no-cache"

    invoke-virtual {v6, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/16 v4, 0x7530

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    const v4, 0xea60

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 294
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 295
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object/from16 v19, v7

    .end local v7    # "httpOutput":Ljava/io/DataOutputStream;
    .local v19, "httpOutput":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 296
    move-object/from16 v19, v4

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->flush()V

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 300
    .end local v11    # "httpInput":Ljava/io/InputStream;
    .local v4, "httpInput":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/4 v7, 0x0

    .line 301
    .local v7, "responseCode":I
    move v7, v5

    const/16 v11, 0xc8

    if-eq v5, v11, :cond_2

    .line 302
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    .end local v0    # "output":Ljava/lang/String;
    .local v17, "output":Ljava/lang/String;
    const-string v0, "ackResult responseCode: "

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 304
    .local v5, "ackResultData":Ljava/util/HashMap;
    move-object v11, v0

    .end local v5    # "ackResultData":Ljava/util/HashMap;
    .local v11, "ackResultData":Ljava/util/HashMap;
    const-string/jumbo v5, "responseCode"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v16, v6

    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .local v16, "connection":Ljava/net/HttpURLConnection;
    :try_start_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v5

    iget-object v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    const-string v0, "Diagnose"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v20, v8

    .end local v8    # "messageStr":Ljava/lang/String;
    .local v20, "messageStr":Ljava/lang/String;
    :try_start_5
    iget-object v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v21, v9

    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .local v21, "diagnoseMsg":Ljava/lang/String;
    :try_start_6
    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v22, p2

    .end local p2    # "params":Ljava/util/HashMap;
    .local v22, "params":Ljava/util/HashMap;
    move-object/from16 v23, v12

    move v12, v7

    .end local v7    # "responseCode":I
    .local v12, "responseCode":I
    .local v23, "networkType":Ljava/lang/String;
    move-object v7, v0

    move-object v10, v3

    :try_start_7
    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ackResult, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 311
    .end local v11    # "ackResultData":Ljava/util/HashMap;
    .end local v12    # "responseCode":I
    .end local v17    # "output":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .end local v22    # "params":Ljava/util/HashMap;
    :catchall_0
    move-exception v0

    move-object v11, v4

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    goto/16 :goto_6

    .end local v23    # "networkType":Ljava/lang/String;
    .local v12, "networkType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v12

    move-object v11, v4

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto/16 :goto_6

    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    move-object v11, v4

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto/16 :goto_6

    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    move-object v11, v4

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto/16 :goto_6

    .line 301
    .end local v16    # "connection":Ljava/net/HttpURLConnection;
    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v0    # "output":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "responseCode":I
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local p2    # "params":Ljava/util/HashMap;
    :cond_2
    move-object/from16 v22, p2

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    move v12, v7

    .line 316
    .end local v0    # "output":Ljava/lang/String;
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .end local p2    # "params":Ljava/util/HashMap;
    .restart local v16    # "connection":Ljava/net/HttpURLConnection;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    :goto_1
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 319
    goto :goto_2

    .line 317
    :catchall_4
    move-exception v0

    .line 321
    :goto_2
    if-eqz v4, :cond_3

    .line 323
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 326
    goto :goto_3

    .line 324
    :catchall_5
    move-exception v0

    .line 328
    :cond_3
    :goto_3
    if-eqz v16, :cond_4

    .line 330
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 333
    :goto_4
    goto :goto_5

    .line 331
    :catchall_6
    move-exception v0

    goto :goto_4

    .line 336
    :cond_4
    :goto_5
    move-object/from16 v6, v16

    goto :goto_b

    .line 311
    .end local v16    # "connection":Ljava/net/HttpURLConnection;
    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    move-object v11, v4

    move-object/from16 v7, v19

    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v16    # "connection":Ljava/net/HttpURLConnection;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto :goto_6

    .end local v4    # "httpInput":Ljava/io/InputStream;
    .end local v16    # "connection":Ljava/net/HttpURLConnection;
    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .local v11, "httpInput":Ljava/io/InputStream;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v16    # "connection":Ljava/net/HttpURLConnection;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto :goto_6

    .end local v16    # "connection":Ljava/net/HttpURLConnection;
    .end local v19    # "httpOutput":Ljava/io/DataOutputStream;
    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .local v7, "httpOutput":Ljava/io/DataOutputStream;
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "httpOutput":Ljava/io/DataOutputStream;
    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .restart local v16    # "connection":Ljava/net/HttpURLConnection;
    .restart local v19    # "httpOutput":Ljava/io/DataOutputStream;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    goto :goto_6

    .end local v16    # "connection":Ljava/net/HttpURLConnection;
    .end local v19    # "httpOutput":Ljava/io/DataOutputStream;
    .end local v20    # "messageStr":Ljava/lang/String;
    .end local v21    # "diagnoseMsg":Ljava/lang/String;
    .end local v23    # "networkType":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "httpOutput":Ljava/io/DataOutputStream;
    .restart local v8    # "messageStr":Ljava/lang/String;
    .restart local v9    # "diagnoseMsg":Ljava/lang/String;
    .restart local v12    # "networkType":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v12

    .line 312
    .end local v8    # "messageStr":Ljava/lang/String;
    .end local v9    # "diagnoseMsg":Ljava/lang/String;
    .end local v12    # "networkType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v20    # "messageStr":Ljava/lang/String;
    .restart local v21    # "diagnoseMsg":Ljava/lang/String;
    .restart local v23    # "networkType":Ljava/lang/String;
    :goto_6
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "ackResult: http fail"

    invoke-interface {v4, v2, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 314
    .end local v0    # "e":Ljava/lang/Throwable;
    if-eqz v7, :cond_5

    .line 316
    :try_start_c
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 319
    goto :goto_7

    .line 317
    :catchall_b
    move-exception v0

    .line 321
    :cond_5
    :goto_7
    if-eqz v11, :cond_6

    .line 323
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 326
    goto :goto_8

    .line 324
    :catchall_c
    move-exception v0

    .line 328
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    .line 330
    :try_start_e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 333
    :goto_9
    goto :goto_a

    .line 331
    :catchall_d
    move-exception v0

    goto :goto_9

    .line 336
    :cond_7
    :goto_a
    move-object/from16 v19, v7

    move-object v4, v11

    .end local v7    # "httpOutput":Ljava/io/DataOutputStream;
    .end local v11    # "httpInput":Ljava/io/InputStream;
    .restart local v4    # "httpInput":Ljava/io/InputStream;
    .restart local v19    # "httpOutput":Ljava/io/DataOutputStream;
    :goto_b
    return-object v20

    .line 314
    .end local v4    # "httpInput":Ljava/io/InputStream;
    .end local v19    # "httpOutput":Ljava/io/DataOutputStream;
    .restart local v7    # "httpOutput":Ljava/io/DataOutputStream;
    .restart local v11    # "httpInput":Ljava/io/InputStream;
    :catchall_e
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_8

    .line 316
    :try_start_f
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 319
    goto :goto_c

    .line 317
    :catchall_f
    move-exception v0

    .line 321
    :cond_8
    :goto_c
    if-eqz v11, :cond_9

    .line 323
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 326
    goto :goto_d

    .line 324
    :catchall_10
    move-exception v0

    .line 328
    :cond_9
    :goto_d
    if-eqz v6, :cond_a

    .line 330
    :try_start_11
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 333
    goto :goto_e

    .line 331
    :catchall_11
    move-exception v0

    .line 333
    :cond_a
    :goto_e
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 3
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 899
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a()Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    new-instance v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$7;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$7;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 911
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "networkCondition"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string/jumbo v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "any"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    return v0

    .line 150
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a:J

    return-wide v0
.end method

.method private c(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 3
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 929
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/storage/StorageTracer;->a()Lcom/alipay/mobile/logmonitor/util/storage/StorageTracer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    new-instance v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/logmonitor/util/storage/StorageTracer;->a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 941
    return-void
.end method

.method static synthetic d()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b:J

    return-wide v0
.end method

.method private d(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 3
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 945
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->getInstance()Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->h:Landroid/content/Context;

    new-instance v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$10;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$10;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->startFileRetrieve(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 957
    return-void
.end method

.method static synthetic e()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f:J

    return-wide v0
.end method

.method static synthetic g()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 22

    .line 403
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v0, "zippedLenLimit"

    const-string v3, "accountName"

    const-string/jumbo v4, "toTime"

    const-string v5, "fromTime"

    const-string/jumbo v6, "networkCondition"

    const-string/jumbo v7, "taskType"

    const-string v8, "bizType"

    if-nez v1, :cond_1

    .line 404
    nop

    .line 405
    if-eqz v2, :cond_0

    .line 406
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string/jumbo v1, "params is null"

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void

    .line 411
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v9

    const-string v10, "UserDiagnostician"

    if-nez v9, :cond_3

    .line 412
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processManualTrigger: not main process, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-eqz v2, :cond_2

    .line 416
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 418
    :cond_2
    return-void

    .line 421
    :cond_3
    const-string v9, "UserDiagnose_ManualDisable_All"

    const-string v11, ""

    invoke-static {v9, v11}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 422
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 423
    const-string/jumbo v0, "processManualTrigger: config is disable for all"

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz v2, :cond_4

    .line 426
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 428
    :cond_4
    return-void

    .line 431
    :cond_5
    nop

    .line 432
    nop

    .line 433
    nop

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 440
    const-wide/16 v13, -0x1

    :try_start_0
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 441
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_0

    .line 440
    :cond_6
    move-object v8, v11

    .line 443
    :goto_0
    :try_start_1
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 444
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    .line 443
    :cond_7
    move-object v7, v11

    .line 446
    :goto_1
    :try_start_2
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 447
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_2

    .line 446
    :cond_8
    move-object v6, v11

    .line 449
    :goto_2
    :try_start_3
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 450
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 449
    :cond_9
    move-wide v15, v13

    .line 452
    :goto_3
    :try_start_4
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 453
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 452
    :cond_a
    move-wide v4, v13

    .line 455
    :goto_4
    :try_start_5
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 456
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 455
    :cond_b
    move-object v3, v11

    .line 458
    :goto_5
    :try_start_6
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 459
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 463
    :cond_c
    move-wide/from16 v20, v13

    move-wide v13, v15

    move-wide/from16 v15, v20

    goto :goto_8

    .line 461
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v11

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v11

    move-wide v4, v13

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v11

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v11

    move-object v6, v3

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, v11

    move-object v6, v3

    move-object v7, v6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v11

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    :goto_6
    move-wide v4, v13

    move-wide v15, v4

    .line 462
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide/from16 v20, v13

    move-wide v13, v15

    move-wide/from16 v15, v20

    .line 465
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "processManualTrigger"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v3

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 468
    :try_start_7
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 469
    move-wide/from16 v18, v15

    :try_start_8
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v15, ", fromTimeS: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v3, ", toTimeS: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 474
    goto :goto_9

    .line 472
    :catchall_7
    move-exception v0

    goto :goto_9

    :catchall_8
    move-exception v0

    move-wide/from16 v18, v15

    .line 475
    :goto_9
    const/4 v0, 0x0

    invoke-static {v9, v1, v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Landroid/os/Bundle;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 476
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v3, v13, v0

    if-ltz v3, :cond_15

    cmp-long v3, v4, v0

    if-ltz v3, :cond_15

    cmp-long v3, v4, v13

    if-gez v3, :cond_d

    move-object/from16 v3, p0

    goto/16 :goto_b

    .line 488
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "UserDiagnose_ManualDisable_Biz_"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processManualTrigger: config is disable for biz, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-eqz v2, :cond_e

    .line 493
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 495
    :cond_e
    return-void

    .line 498
    :cond_f
    invoke-static {v6}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Ljava/lang/String;)Z

    move-result v3

    .line 499
    if-eqz v3, :cond_13

    .line 501
    const-string v9, "UserDiagnose_ManualDisable_Force"

    invoke-static {v9, v11}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 502
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 503
    const-string/jumbo v0, "processManualTrigger: config is disable for force"

    .line 504
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-eqz v2, :cond_10

    .line 506
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 508
    :cond_10
    return-void

    .line 511
    :cond_11
    cmp-long v9, v18, v0

    if-gtz v9, :cond_13

    .line 512
    const-wide/32 v15, 0xa00000

    .line 514
    const-string v0, "UserDiagnose_Manual_ZippedLenLimit"

    invoke-static {v0, v11}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 516
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "processManualTrigger, config ZippedLenLimit: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v10, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 521
    goto :goto_a

    .line 519
    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 520
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v10, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :cond_12
    move-wide v0, v15

    goto :goto_a

    :cond_13
    move-wide/from16 v0, v18

    :goto_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 527
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 528
    move-object/from16 v9, v17

    .line 531
    :cond_14
    new-instance v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v10}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V

    .line 532
    iput-object v9, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    .line 533
    const-string/jumbo v9, "manual"

    iput-object v9, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 534
    iput-object v7, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 536
    iput-object v6, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 537
    iput-boolean v3, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 538
    iput-wide v13, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 539
    iput-wide v4, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    .line 540
    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object v3, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 542
    move-object/from16 v3, v17

    iput-object v3, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->q:Ljava/lang/String;

    .line 543
    iput-wide v0, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->r:J

    .line 544
    iput-object v8, v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->s:Ljava/lang/String;

    .line 546
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v10, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    .line 559
    return-void

    .line 478
    :cond_15
    move-object/from16 v3, p0

    .line 480
    :goto_b
    const-string/jumbo v0, "processManualTrigger: invalid params"

    .line 481
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v10, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v2, :cond_16

    .line 483
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 485
    :cond_16
    return-void
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 2
    .param p1, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p2, "diagnoseCode"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p3, "diagnoseMsg"    # Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 30
    .param p1, "command"    # Ljava/lang/String;

    move-object/from16 v1, p1

    const-string/jumbo v2, "new_to"

    const-string/jumbo v3, "new_from"

    .line 643
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processPushMsg"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserDiagnostician"

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 646
    .local v4, "diagnoseTaskList":Ljava/util/List;
    const/4 v6, 0x0

    .line 647
    .local v6, "userID":Ljava/lang/String;
    const/4 v7, 0x0

    .line 649
    .local v7, "taskID":Ljava/lang/String;
    sget-wide v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a:J

    .line 650
    .local v8, "traceTime":J
    const/high16 v10, 0x800000

    .line 651
    .local v10, "traceCacheSize":I
    sget-wide v11, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b:J

    .line 652
    .local v11, "stacktracerTime":J
    sget-wide v13, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c:J

    .line 653
    .local v13, "stacktracerInterval":J
    const/4 v15, 0x0

    .line 655
    .local v15, "retrieveFilePath":Ljava/lang/String;
    const/16 v16, 0x0

    .line 657
    .local v16, "commandJsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v0

    .line 660
    move-object/from16 v1, v16

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, v16

    .line 661
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "commandJsonObject":Lorg/json/JSONObject;
    .local v1, "commandJsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 662
    return-void

    .line 667
    :cond_0
    :try_start_1
    const-string/jumbo v0, "userID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    .line 670
    goto :goto_1

    .line 668
    :catchall_1
    move-exception v0

    .line 669
    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v16, v6

    .end local v6    # "userID":Ljava/lang/String;
    .local v16, "userID":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v6, v16

    .line 672
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "userID":Ljava/lang/String;
    .restart local v6    # "userID":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "taskID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v0

    .line 675
    goto :goto_2

    .line 673
    :catchall_2
    move-exception v0

    .line 674
    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v16, v7

    .end local v7    # "taskID":Ljava/lang/String;
    .local v16, "taskID":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v16

    .line 678
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "taskID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    :goto_2
    const/16 v16, 0x0

    .line 680
    .local v16, "configJsonObject":Lorg/json/JSONObject;
    :try_start_3
    const-string v0, "config"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v0

    .line 683
    move-wide/from16 v17, v8

    move-object/from16 v8, v16

    goto :goto_3

    .line 681
    :catchall_3
    move-exception v0

    .line 682
    .restart local v0    # "e":Ljava/lang/Throwable;
    move-wide/from16 v17, v8

    .end local v8    # "traceTime":J
    .local v17, "traceTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v8, v16

    .line 684
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "configJsonObject":Lorg/json/JSONObject;
    .local v8, "configJsonObject":Lorg/json/JSONObject;
    :goto_3
    if-eqz v8, :cond_1

    .line 687
    :try_start_4
    const-string/jumbo v0, "traceviewTime"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move/from16 v16, v10

    .end local v10    # "traceCacheSize":I
    .local v16, "traceCacheSize":I
    const-wide/16 v9, 0x1

    :try_start_5
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v21

    mul-long v17, v19, v21

    .line 688
    const-string/jumbo v0, "traceviewSize"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v9, v0, 0x400

    .line 689
    .end local v16    # "traceCacheSize":I
    .local v9, "traceCacheSize":I
    :try_start_6
    const-string/jumbo v0, "stackTracerTime"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move/from16 v16, v9

    const-wide/16 v9, 0x1

    .end local v9    # "traceCacheSize":I
    .restart local v16    # "traceCacheSize":I
    :try_start_7
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    mul-long v11, v21, v23

    .line 690
    :try_start_8
    const-string/jumbo v0, "stackTracerInterval"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-wide/from16 v21, v11

    const-wide/16 v11, 0x1

    .end local v11    # "stacktracerTime":J
    .local v21, "stacktracerTime":J
    :try_start_9
    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    mul-long v9, v9, v11

    .line 693
    .end local v13    # "stacktracerInterval":J
    .local v9, "stacktracerInterval":J
    move-wide v13, v9

    move/from16 v10, v16

    move-wide/from16 v11, v21

    goto :goto_6

    .line 691
    .end local v9    # "stacktracerInterval":J
    .restart local v13    # "stacktracerInterval":J
    :catchall_4
    move-exception v0

    goto :goto_4

    .end local v21    # "stacktracerTime":J
    .restart local v11    # "stacktracerTime":J
    :catchall_5
    move-exception v0

    move-wide/from16 v21, v11

    .end local v11    # "stacktracerTime":J
    .restart local v21    # "stacktracerTime":J
    :goto_4
    move/from16 v10, v16

    move-wide/from16 v11, v21

    goto :goto_6

    .end local v16    # "traceCacheSize":I
    .end local v21    # "stacktracerTime":J
    .local v9, "traceCacheSize":I
    .restart local v11    # "stacktracerTime":J
    :catchall_6
    move-exception v0

    move/from16 v16, v9

    .end local v9    # "traceCacheSize":I
    .restart local v16    # "traceCacheSize":I
    goto :goto_5

    :catchall_7
    move-exception v0

    goto :goto_5

    .end local v16    # "traceCacheSize":I
    .restart local v10    # "traceCacheSize":I
    :catchall_8
    move-exception v0

    move/from16 v16, v10

    .end local v10    # "traceCacheSize":I
    .restart local v16    # "traceCacheSize":I
    :goto_5
    move/from16 v10, v16

    .line 696
    .end local v16    # "traceCacheSize":I
    .restart local v10    # "traceCacheSize":I
    :goto_6
    :try_start_a
    const-string/jumbo v0, "retrieveFilePath"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object v15, v0

    .line 699
    move-object/from16 v16, v8

    move-object v8, v15

    move-wide v14, v13

    move-wide v12, v11

    move v11, v10

    move-wide/from16 v9, v17

    goto :goto_7

    .line 697
    :catchall_9
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v15

    move-wide v14, v13

    move-wide v12, v11

    move v11, v10

    move-wide/from16 v9, v17

    goto :goto_7

    .line 684
    :cond_1
    move/from16 v16, v10

    .end local v10    # "traceCacheSize":I
    .restart local v16    # "traceCacheSize":I
    move-wide/from16 v9, v17

    move/from16 v29, v16

    move-object/from16 v16, v8

    move-object v8, v15

    move-wide v14, v13

    move-wide v12, v11

    move/from16 v11, v29

    .line 703
    .end local v13    # "stacktracerInterval":J
    .end local v15    # "retrieveFilePath":Ljava/lang/String;
    .end local v17    # "traceTime":J
    .local v8, "retrieveFilePath":Ljava/lang/String;
    .local v9, "traceTime":J
    .local v11, "traceCacheSize":I
    .local v12, "stacktracerTime":J
    .local v14, "stacktracerInterval":J
    .local v16, "configJsonObject":Lorg/json/JSONObject;
    :goto_7
    const/16 v17, 0x0

    .line 705
    .local v17, "taskList":Lorg/json/JSONArray;
    :try_start_b
    const-string/jumbo v0, "tasklist"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v17, v0

    .line 708
    move-object/from16 v18, v1

    move-object/from16 v1, v17

    goto :goto_8

    .line 706
    :catchall_a
    move-exception v0

    .line 707
    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v18, v1

    .end local v1    # "commandJsonObject":Lorg/json/JSONObject;
    .local v18, "commandJsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, v17

    .line 709
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "taskList":Lorg/json/JSONArray;
    .local v1, "taskList":Lorg/json/JSONArray;
    :goto_8
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 710
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v5

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 712
    .local v5, "timeFormat":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .local v0, "index":I
    const/16 v19, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v19

    move v4, v0

    .end local v0    # "index":I
    .local v4, "index":I
    .local v20, "diagnoseTaskList":Ljava/util/List;
    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 714
    :try_start_c
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 715
    .local v19, "taskJsonObject":Lorg/json/JSONObject;
    move-object/from16 v22, v0

    .end local v19    # "taskJsonObject":Lorg/json/JSONObject;
    .local v22, "taskJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 716
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    move-object/from16 v19, v21

    .line 718
    .local v19, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    move-object/from16 v21, v0

    .end local v19    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .local v21, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    :try_start_d
    iput-object v6, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_13

    .line 719
    move-object/from16 v19, v1

    move-object/from16 v1, v21

    .end local v21    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .local v1, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .local v19, "taskList":Lorg/json/JSONArray;
    :try_start_e
    iput-object v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 720
    const-string/jumbo v0, "type"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    .end local v22    # "taskJsonObject":Lorg/json/JSONObject;
    .local v6, "taskJsonObject":Lorg/json/JSONObject;
    .local v23, "userID":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_11

    move-object/from16 v22, v7

    .end local v7    # "taskID":Ljava/lang/String;
    .local v22, "taskID":Ljava/lang/String;
    :try_start_10
    iget-object v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 722
    const-string/jumbo v0, "network"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 723
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 724
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_PUSH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 725
    iput-wide v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    .line 726
    iput v11, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    .line 727
    iput-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    .line 728
    iput-wide v14, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J

    .line 729
    iput-object v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    .line 731
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    if-eqz v0, :cond_2

    :try_start_11
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    sget-wide v26, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f:J

    div-long v24, v24, v26
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v28, v8

    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .local v28, "retrieveFilePath":Ljava/lang/String;
    mul-long v7, v24, v26

    :try_start_12
    iput-wide v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 734
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    goto :goto_a

    .line 744
    .end local v1    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local v6    # "taskJsonObject":Lorg/json/JSONObject;
    :catchall_b
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v2, v20

    goto/16 :goto_d

    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v28, v8

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v2, v20

    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    goto/16 :goto_d

    .line 731
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v6    # "taskJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v28, v8

    .line 736
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v0, "from"

    .line 737
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    int-to-long v2, v0

    :try_start_14
    sget-wide v26, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f:J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    mul-long v2, v2, v26

    add-long/2addr v7, v2

    :try_start_15
    iput-wide v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v0, "to"

    .line 739
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v7, v0

    mul-long v7, v7, v26

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 742
    :goto_a
    move-object/from16 v2, v20

    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .local v2, "diagnoseTaskList":Ljava/util/List;
    :try_start_16
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move-object/from16 v21, v1

    goto/16 :goto_c

    .line 744
    .end local v6    # "taskJsonObject":Lorg/json/JSONObject;
    :catchall_d
    move-exception v0

    move-object/from16 v21, v1

    goto/16 :goto_d

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_e
    move-exception v0

    goto :goto_b

    :catchall_f
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_b
    move-object/from16 v2, v20

    move-object/from16 v21, v1

    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    goto/16 :goto_d

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_10
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    move-object/from16 v21, v1

    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    goto/16 :goto_d

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_11
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    move-object/from16 v21, v1

    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v22    # "taskID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    goto :goto_d

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .local v6, "userID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_12
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    move-object/from16 v21, v1

    .end local v6    # "userID":Ljava/lang/String;
    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v22    # "taskID":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    goto :goto_d

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v19    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .local v1, "taskList":Lorg/json/JSONArray;
    .restart local v6    # "userID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_13
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto :goto_d

    .line 715
    .local v22, "taskJsonObject":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v19, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v6

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    move-object/from16 v6, v22

    move-object/from16 v22, v7

    .line 746
    .end local v1    # "taskList":Lorg/json/JSONArray;
    .end local v6    # "userID":Ljava/lang/String;
    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v19    # "taskList":Lorg/json/JSONArray;
    .local v22, "taskID":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    :goto_c
    move-object v0, v6

    move-object/from16 v3, v17

    goto :goto_e

    .line 744
    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v19    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v1    # "taskList":Lorg/json/JSONArray;
    .restart local v6    # "userID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :catchall_14
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    .line 745
    .end local v1    # "taskList":Lorg/json/JSONArray;
    .end local v6    # "userID":Ljava/lang/String;
    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v19    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "taskID":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    :goto_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v1, v19

    move-object/from16 v7, v22

    move-object/from16 v6, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v8, v28

    move-object/from16 v19, v0

    goto/16 :goto_9

    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v19    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v1    # "taskList":Lorg/json/JSONArray;
    .restart local v6    # "userID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v20    # "diagnoseTaskList":Ljava/util/List;
    :cond_4
    move-object/from16 v19, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move-object/from16 v2, v20

    .end local v1    # "taskList":Lorg/json/JSONArray;
    .end local v6    # "userID":Ljava/lang/String;
    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .end local v20    # "diagnoseTaskList":Ljava/util/List;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v19    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "taskID":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    goto :goto_f

    .line 709
    .end local v2    # "diagnoseTaskList":Ljava/util/List;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "taskID":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v28    # "retrieveFilePath":Ljava/lang/String;
    .restart local v1    # "taskList":Lorg/json/JSONArray;
    .local v4, "diagnoseTaskList":Ljava/util/List;
    .restart local v6    # "userID":Ljava/lang/String;
    .restart local v7    # "taskID":Ljava/lang/String;
    .restart local v8    # "retrieveFilePath":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v1

    move-object v2, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    .line 750
    .end local v1    # "taskList":Lorg/json/JSONArray;
    .end local v4    # "diagnoseTaskList":Ljava/util/List;
    .end local v6    # "userID":Ljava/lang/String;
    .end local v7    # "taskID":Ljava/lang/String;
    .end local v8    # "retrieveFilePath":Ljava/lang/String;
    .restart local v2    # "diagnoseTaskList":Ljava/util/List;
    .restart local v19    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "taskID":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    .restart local v28    # "retrieveFilePath":Ljava/lang/String;
    :goto_f
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/util/List;)V

    .line 751
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;

    .line 562
    move-object/from16 v1, p2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processConfigMsg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserDiagnostician"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 565
    .local v2, "diagnoseTaskList":Ljava/util/List;
    const/4 v4, 0x0

    .line 567
    .local v4, "taskList":Lorg/json/JSONArray;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 570
    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 572
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 574
    .local v5, "timeFormat":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .local v0, "index":I
    const/4 v6, 0x0

    move-object v7, v6

    move v6, v0

    move-object v0, v7

    .end local v0    # "index":I
    .local v6, "index":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 576
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 577
    .local v0, "taskJsonObject":Lorg/json/JSONObject;
    move-object v9, v8

    .end local v0    # "taskJsonObject":Lorg/json/JSONObject;
    .local v9, "taskJsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 578
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 580
    .local v7, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    move-object v7, v0

    move-object/from16 v8, p1

    :try_start_2
    iput-object v8, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    .line 581
    const-string/jumbo v0, "taskId"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 582
    const-string/jumbo v0, "type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 584
    const-string/jumbo v0, "network"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 585
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 586
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_CONFIG:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 587
    const-string v0, "from"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sget-wide v12, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f:J

    div-long/2addr v10, v12

    mul-long v10, v10, v12

    iput-wide v10, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 589
    const-string/jumbo v0, "to"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    .line 591
    sget-wide v10, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a:J

    .line 592
    .local v10, "traceTime":J
    const/high16 v12, 0x800000

    .line 593
    .local v12, "traceCacheSize":I
    sget-wide v13, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b:J

    .line 594
    .local v13, "stacktracerTime":J
    sget-wide v15, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 595
    .local v15, "stacktracerInterval":J
    const/16 v17, 0x0

    .line 599
    .local v17, "retrieveFilePath":Ljava/lang/String;
    :try_start_3
    const-string v0, "config"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 600
    .local v1, "configJsonStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v18, v0

    .line 603
    .local v18, "configJsonObject":Lorg/json/JSONObject;
    :try_start_4
    const-string/jumbo v0, "traceviewTime"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    .end local v18    # "configJsonObject":Lorg/json/JSONObject;
    .local v1, "configJsonObject":Lorg/json/JSONObject;
    .local v19, "configJsonStr":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v18, "taskList":Lorg/json/JSONArray;
    .local v22, "timeFormat":Ljava/text/SimpleDateFormat;
    const-wide/16 v4, 0x1

    :try_start_6
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v23

    mul-long v10, v20, v23

    .line 604
    const-string/jumbo v0, "traceviewSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v12, v0, 0x400

    .line 605
    const-string/jumbo v0, "stackTracerTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v23

    mul-long v13, v20, v23

    .line 606
    const-string/jumbo v0, "stackTracerInterval"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    mul-long v20, v20, v4

    .line 609
    .end local v15    # "stacktracerInterval":J
    .local v20, "stacktracerInterval":J
    move-wide/from16 v15, v20

    goto :goto_2

    .line 607
    .end local v20    # "stacktracerInterval":J
    .restart local v15    # "stacktracerInterval":J
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .end local v19    # "configJsonStr":Ljava/lang/String;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v1, "configJsonStr":Ljava/lang/String;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v18, "configJsonObject":Lorg/json/JSONObject;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v22, v5

    move-object/from16 v1, v18

    move-object/from16 v18, v4

    .line 612
    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v1, "configJsonObject":Lorg/json/JSONObject;
    .local v18, "taskList":Lorg/json/JSONArray;
    .restart local v19    # "configJsonStr":Ljava/lang/String;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    :goto_2
    :try_start_7
    const-string/jumbo v0, "retrieveFilePath"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v17, v0

    .line 615
    move-wide v0, v15

    move-object/from16 v4, v17

    goto :goto_3

    .line 613
    :catchall_4
    move-exception v0

    .line 618
    .end local v1    # "configJsonObject":Lorg/json/JSONObject;
    .end local v19    # "configJsonStr":Ljava/lang/String;
    move-wide v0, v15

    move-object/from16 v4, v17

    goto :goto_3

    .line 616
    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    move-wide v0, v15

    move-object/from16 v4, v17

    .line 620
    .end local v15    # "stacktracerInterval":J
    .end local v17    # "retrieveFilePath":Ljava/lang/String;
    .local v0, "stacktracerInterval":J
    .local v4, "retrieveFilePath":Ljava/lang/String;
    :goto_3
    :try_start_8
    iput-wide v10, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    .line 621
    iput v12, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    .line 622
    iput-wide v13, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    .line 623
    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J

    .line 624
    iput-object v4, v7, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    .line 626
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    .line 628
    .end local v0    # "stacktracerInterval":J
    .end local v4    # "retrieveFilePath":Ljava/lang/String;
    .end local v7    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local v9    # "taskJsonObject":Lorg/json/JSONObject;
    .end local v10    # "traceTime":J
    .end local v12    # "traceCacheSize":I
    .end local v13    # "stacktracerTime":J
    :catchall_6
    move-exception v0

    goto :goto_6

    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v4, "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    :catchall_7
    move-exception v0

    goto :goto_5

    .line 577
    .restart local v9    # "taskJsonObject":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v8, p1

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 630
    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "taskJsonObject":Lorg/json/JSONObject;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    :goto_4
    move-object v0, v9

    goto :goto_7

    .line 628
    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    :catchall_8
    move-exception v0

    move-object/from16 v8, p1

    :goto_5
    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 629
    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v22

    goto/16 :goto_1

    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    move-object/from16 v8, p1

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .end local v4    # "taskList":Lorg/json/JSONArray;
    .end local v5    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    .restart local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    goto :goto_8

    .line 571
    .end local v6    # "index":I
    .end local v18    # "taskList":Lorg/json/JSONArray;
    .end local v22    # "timeFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "taskList":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v8, p1

    move-object/from16 v18, v4

    .line 638
    .end local v4    # "taskList":Lorg/json/JSONArray;
    .restart local v18    # "taskList":Lorg/json/JSONArray;
    :goto_8
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Ljava/util/List;)V

    .line 640
    return-void
.end method

.method public final b()V
    .locals 7

    .line 342
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isPositiveDiagnose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 347
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 348
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->i:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-wide v4, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->d:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 349
    return-void

    .line 351
    :cond_1
    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->i:J

    .line 357
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;-><init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;J)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .end local v2    # "currentTime":J
    return-void

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UserDiagnostician"

    const-string/jumbo v3, "processLeaveHint"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
