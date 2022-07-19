.class public Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
.super Ljava/lang/Object;
.source "ProcessFgBgWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher; = null

.field private static final TAG:Ljava/lang/String; = "ProcessFgBgWatcher"

.field private static inited:Z

.field static mAppContext:Landroid/content/Context;

.field private static sActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static sActivityThread:Ljava/lang/Object;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mCurIsForeground:Z

.field private final mFgBgCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivities:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->INSTANCE:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    .line 159
    new-instance v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;-><init>(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$008(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    .line 38
    iget v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I

    return v0
.end method

.method static synthetic access$010(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    .line 38
    iget v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/Activity;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->isProcessForeground(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->notifyMoveToBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    .line 38
    iget-boolean v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->notifyMoveToForeground(Ljava/lang/String;)V

    return-void
.end method

.method private static getActivities(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 223
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "mMainThread"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivityThread:Ljava/lang/Object;

    .line 227
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivityThread:Ljava/lang/Object;

    const-string v1, "mActivities"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static getContextImpl(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 231
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 232
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
    .locals 1

    .line 78
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->INSTANCE:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    return-object v0
.end method

.method private static hasNoStoppedActivities(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludeActivity"    # Landroid/app/Activity;

    .line 201
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivities:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->getActivities(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivities:Ljava/util/Map;

    .line 204
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->sActivities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 205
    .local v2, "activityRecords":Ljava/util/Collection;
    move-object v2, v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v1, "obj":Ljava/lang/Object;
    move-object v1, v3

    if-eqz v3, :cond_3

    .line 208
    const-string/jumbo v3, "stopped"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 209
    if-nez v3, :cond_3

    .line 210
    if-eqz p1, :cond_2

    const-string v3, "activity"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 213
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 216
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 218
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 69
    sget-boolean v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->inited:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->inited:Z

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->getInstance()Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;->onProcessFgBgWatcherInited()V

    .line 73
    sput-object p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mAppContext:Landroid/content/Context;

    .line 75
    :cond_0
    return-void
.end method

.method private isProcessForeground(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeActivity"    # Landroid/app/Activity;

    .line 119
    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->hasNoStoppedActivities(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .local v0, "isForeground":Z
    goto :goto_1

    .line 120
    .end local v0    # "isForeground":Z
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasNoStoppedActivities() invoke failed! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessFgBgWatcher"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 125
    .local v0, "isForeground":Z
    :goto_1
    return v0
.end method

.method private notifyMoveToBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 150
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v1, "copy":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const-string v0, "ProcessFgBgWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyMoveToBackground "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;

    .line 155
    .local v2, "callback":Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;
    invoke-interface {v3, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;->onMoveToBackground(Ljava/lang/String;)V

    .line 156
    .end local v2    # "callback":Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;
    goto :goto_0

    .line 157
    :cond_0
    return-void

    .line 151
    .end local v1    # "copy":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyMoveToForeground(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 138
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v1, "copy":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const-string v0, "ProcessFgBgWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyMoveToForeground "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;

    .line 143
    .local v2, "callback":Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;
    invoke-interface {v3, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;->onMoveToForeground(Ljava/lang/String;)V

    .line 144
    .end local v2    # "callback":Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;
    goto :goto_0

    .line 145
    :cond_0
    return-void

    .line 139
    .end local v1    # "copy":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public isProcessBackground(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->isProcessForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessForeground(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->isProcessForeground(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;)V
    .locals 2
    .param p1, "fgBgCallback"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;

    .line 85
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;)V
    .locals 2
    .param p1, "fgBgCallback"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;

    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mFgBgCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
