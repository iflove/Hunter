.class public Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;
    .locals 2

    .line 17
    sget-object v0, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;->a:Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;->a:Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    invoke-direct {v1}, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;-><init>()V

    sput-object v1, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;->a:Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;->a:Lcom/mpaas/mpaasadapter/api/FrameworkAdapter;

    return-object v0
.end method


# virtual methods
.method public registerFrameworkAdater(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 31
    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "method doOnNotBundleProjectType , param \"application\" can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
