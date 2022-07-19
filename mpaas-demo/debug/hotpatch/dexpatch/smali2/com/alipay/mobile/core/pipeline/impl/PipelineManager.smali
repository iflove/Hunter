.class public Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
.super Ljava/lang/Object;
.source "PipelineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;,
        Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/pipeline/Pipeline;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private h:Z

.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->c:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->i:Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string v1, "config_intercept_pipeline_inner_async_task"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$1;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$1;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 156
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;

    const/4 v2, 0x2

    new-instance v3, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$2;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 162
    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$1;)V

    .line 163
    .local v1, "pipelineDispatchManager":Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/DispatchThreadPoolExecutor;->setPipelineDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V

    .line 164
    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/DispatchScheduledThreadPool;->setPipelineDispatchManager(Lcom/alipay/mobile/framework/pipeline/IDispatchManager;)V

    .line 166
    .end local v1    # "pipelineDispatchManager":Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$PipelineDispatchManager;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$3;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->createInstance(Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;)V

    .line 177
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;-><init>()V

    .line 178
    .local v1, "analysedRunnableManager":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->setAnalysisListener(Lcom/alipay/mobile/aspect/IAnalysisListener;)V

    .line 179
    invoke-static {v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->setAnalysisListener(Lcom/alipay/mobile/aspect/IAnalysisListener;)V

    .line 180
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->setTaskDiagnosis(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;)V

    .line 181
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pipelineName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 234
    .local v1, "tasks":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v1, v0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->h:Z

    if-eqz v1, :cond_0

    .line 275
    monitor-exit v0

    return-void

    .line 277
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->h:Z

    .line 278
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    if-nez v1, :cond_2

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.android.app.template.DynamicTemplateQuickPayCache"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.mobile.notification.NotificationInitVavle"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.mobile.bill.home.BillHomeTask"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.android.phone.discovery.o2ohome.dynamic.blocksystem.cache.PreLoadRunnable"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.android.phone.mobilecommon.biometric.BioMetricValve"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.android.phone.discovery.o2ohome.personal.DoExpireMsgRunnable"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.mobile.security.authcenter.login.biz.SecuritySyncValve"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    const-string v2, "com.alipay.mobile.namecertify.pipeline.NameCertifyDataUpdate"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    const-string v2, "com.alipay.mobile.apiexecutor.app.EmojiPipeTask"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    const-string v2, "com.alipay.android.phone.mobilesdk.apm.pipeline.ApmPipelineValve"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    const-string v2, "com.alipay.mobile.base.resourceclean.TasksExecutor"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a()V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pipelineName"    # Ljava/lang/String;

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "com.alipay.mobile.framework.INITED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "com.alipay.mobile.TASK_SCHEDULE_SERVICE_IDLE_TASK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "com.alipay.mobile.PORTAL_IDLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 263
    return v0
.end method


# virtual methods
.method public addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V
    .locals 3
    .param p1, "description"    # Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 223
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getPipelineName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 224
    .local v1, "pipelineName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;

    const-string v2, "PipelineName is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public addValve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "task"    # Ljava/lang/Runnable;
    .param p4, "wight"    # I

    .line 218
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 219
    invoke-interface {v0, p3, p2, p4}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 184
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/Pipeline;

    const/4 v1, 0x0

    move-object v2, v1

    .line 189
    .local v2, "pipeline":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 192
    move-object v2, v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$4;

    invoke-direct {v10, p0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$4;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 202
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    move-object v5, v0

    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .local v5, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 203
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;JLjava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 204
    .local v0, "timeoutPipeline":Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
    new-instance v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/mobile/framework/pipeline/StandardPipeline;Ljava/lang/String;)V

    move-object v2, v1

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 207
    .local v1, "size":I
    sget-object v3, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pipeline size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pipeline size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "timeoutPipeline":Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
    .end local v1    # "size":I
    .end local v5    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 214
    :cond_1
    :goto_0
    return-object v2
.end method
