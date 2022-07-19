.class public Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_HIDEN:I = 0x4

.field public static final STATE_INITED:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_SHOWED:I = 0x3

.field public static final STATE_SHOWING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "AsyncStartupWindow"

.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;

.field private static c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/os/Handler;

.field private static e:I

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->d:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->e:I

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 259
    .local v2, "resourceId":I
    move v2, v1

    if-lez v1, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 262
    :cond_0
    return v0
.end method

.method private static a()V
    .locals 2

    .line 203
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    .line 211
    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    .line 212
    return-void
.end method

.method private static a(I)V
    .locals 2
    .param p0, "newState"    # I

    .line 227
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$6;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 32
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/FutureTask;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->c:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/WindowManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Landroid/view/WindowManager;

    .line 32
    sput-object p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 32
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    return-object v0
.end method

.method private static b(I)V
    .locals 4
    .param p0, "state"    # I

    .line 247
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    monitor-enter v0

    .line 248
    :try_start_0
    sget v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->e:I

    if-eq v1, p0, :cond_0

    .line 249
    sput p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->e:I

    .line 250
    const-string v1, "AsyncStartupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->e:I

    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a(I)V

    .line 253
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getState()I
    .locals 2

    .line 241
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    monitor-enter v0

    .line 242
    :try_start_0
    sget v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->e:I

    monitor-exit v0

    return v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static hideIfNot()V
    .locals 3

    .line 164
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I

    .line 57
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->c:Ljava/util/concurrent/FutureTask;

    .line 77
    new-instance v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$2;

    const-string v1, "startup-window"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$2;-><init>(Ljava/lang/String;)V

    .line 84
    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->prepare(Landroid/content/Context;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public static prepare(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    .line 98
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public static registerCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 2
    .param p0, "stateCallback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static show()V
    .locals 2

    .line 140
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$4;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_0
    return-void
.end method

.method public static unregisterCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 2
    .param p0, "stateCallback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
