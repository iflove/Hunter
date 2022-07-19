.class public Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
.super Ljava/lang/Object;
.source "TaskDiagnosisManager.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$1;

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "taskDiagnosis"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 112
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c:Landroid/os/Handler;

    .line 115
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    const/4 v1, 0x0

    .line 34
    .local v1, "taskStatusAnalysis":Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c:Landroid/os/Handler;

    invoke-direct {v0, p1, v2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    move-object v1, v0

    .line 36
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->startAnalysis()V

    .line 39
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "section"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    const/4 v1, 0x0

    .line 43
    .local v1, "taskStatusAnalysis":Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->endAnalysis()V

    .line 47
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "section"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    const/4 v1, 0x0

    move-object v2, v1

    .line 51
    .local v2, "taskStatusAnalysis":Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 52
    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->collectAnalysis()Ljava/util/Map;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->parcelToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "analysisStr":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->destroySelf()V

    .line 57
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->convertToMdapString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
    .locals 1

    .line 29
    # getter for: Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$SingletonHolder;->a:Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$SingletonHolder;->access$100()Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    move-result-object v0

    return-object v0
.end method

.method public static jiffyToMillisScale()J
    .locals 6

    .line 62
    sget-wide v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "start":J
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/alipay/mobile/framework/pipeline/Sysconf;->getScClkTck(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    sput-wide v2, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b:J

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getScClkTck cost = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", jiffyMillis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskDiagnosisManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "start":J
    :cond_0
    sget-wide v0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b:J

    return-wide v0
.end method


# virtual methods
.method public end(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V
    .locals 4
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "taskDiagnosisCallback"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a()V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;-><init>(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " task diagnosis fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskDiagnosisManager"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public getJiffyToMillisScale()J
    .locals 2

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->jiffyToMillisScale()J

    move-result-wide v0

    return-wide v0
.end method

.method public start(Ljava/lang/String;)V
    .locals 4
    .param p1, "section"    # Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->a()V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$1;-><init>(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " task diagnosis fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskDiagnosisManager"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
