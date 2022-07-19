.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
.super Ljava/lang/Object;
.source "TraceDataManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;
.implements Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;,
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static volatile c:Z


# instance fields
.field public d:I

.field private e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:J

.field private volatile h:I

.field private final i:I

.field private final j:I

.field private volatile k:Z

.field private final l:Ljava/lang/Object;

.field private m:I

.field private n:I

.field private o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

.field private p:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

.field private s:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

.field private t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    .line 55
    const-string v0, "isTraceDebug"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->f:Ljava/lang/Object;

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->d:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h:I

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->i:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->j:I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->l:Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->f()V

    .line 95
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->s:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->r:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->r:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    monitor-enter p0

    .line 465
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 466
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    if-eqz p2, :cond_0

    .line 468
    const-string v0, "data"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a(Ljava/lang/String;)Z

    .line 471
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 464
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 473
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public static b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    .locals 1

    .line 103
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 106
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->q:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->s:Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h:I

    return v0
.end method

.method private f()V
    .locals 1

    .line 110
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    .line 111
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;)V

    .line 112
    return-void
.end method

.method private static g()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 232
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v2, v0

    .line 233
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 234
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    const-string v3, "getTopH5Page "

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0

    .line 238
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v1

    move-object v3, v0

    .line 239
    .local v3, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 244
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    :catchall_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTopH5Page...e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->g:J

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->k:Z

    .line 309
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c()V

    .line 310
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 313
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->k()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->k:Z

    .line 352
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d()V

    .line 353
    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->l()V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h:I

    return v0
.end method

.method private j()V
    .locals 6

    .line 357
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 358
    .local v2, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v2, v0

    const-string v3, "FPS"

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 360
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->b()I

    move-result v0

    .line 361
    .local v0, "fps":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 362
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 363
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v3

    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 366
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 367
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v0    # "fps":I
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    return-void

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    .local v0, "r":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    .end local v0    # "r":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 52
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h:I

    return v0
.end method

.method private k()V
    .locals 6

    .line 376
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 377
    .local v2, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v2, v0

    const-string v3, "MEMORY"

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->b()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "memory":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 381
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 382
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v3

    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v3, "page"

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 385
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 386
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v0    # "memory":Ljava/lang/String;
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    return-void

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    .local v0, "r":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    .end local v0    # "r":Ljava/lang/Throwable;
    return-void
.end method

.method private l()V
    .locals 6

    .line 394
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 395
    .local v2, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v2, v0

    const-string v3, "CPU"

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 397
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 398
    .local v3, "cpuUsage":Ljava/lang/String;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 399
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 402
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 403
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 406
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    .end local v3    # "cpuUsage":Ljava/lang/String;
    return-void

    .line 408
    :catchall_0
    move-exception v0

    .line 409
    .local v0, "r":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "r":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 123
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    const-string v1, "init Tracer..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-boolean v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-eqz v1, :cond_0

    .line 125
    return-object p0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 128
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 129
    return-object p0

    .line 131
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 133
    const-string v4, "channelId"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "channelId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "channelId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const-string v2, "initWorker...channelId is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object p0

    .line 139
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    .line 141
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h()V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->q:Ljava/lang/ref/WeakReference;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wss://hpmweb.alipay.com/host/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "websocketUrl":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;-><init>(B)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->p:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;

    .line 146
    iput-object v2, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 147
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->p:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;

    iput-object v0, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$a;->a:Ljava/lang/String;

    .line 148
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 158
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->getDeviceInfo()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    .line 159
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setDevBrand(Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setAppId(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setAppName(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appVersion"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setAppVersion(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setAppHome(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setSystemVersion(Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 167
    .local v2, "context":Landroid/content/Context;
    move-object v2, v4

    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 169
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setClientVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 176
    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 252
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 253
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "exitSession"

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 256
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 446
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->n:I

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 452
    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->n:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->n:I

    .line 454
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "evalStr"    # Ljava/lang/String;

    .line 480
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->b()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    const/4 v1, 0x0

    .line 484
    .local v1, "webview":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 485
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Ljava/lang/String;)V

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 505
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 414
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 420
    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->m:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->m:I

    .line 422
    :cond_1
    if-nez p2, :cond_2

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->m:I

    const/16 v2, 0xc00

    if-le v1, v2, :cond_4

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    const-string/jumbo v1, "traceData"

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 426
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->m:I

    goto :goto_1

    .line 429
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->m:I

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_4

    .line 430
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    .line 431
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 432
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()J
    .locals 4

    .line 115
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-nez v0, :cond_0

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->u:Z

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->u:Z

    .line 461
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 508
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 509
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    .line 510
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 511
    .local v0, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v0, v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear page cache:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , webview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearCache(Z)V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->i()V

    .line 516
    return-void
.end method

.method public onConnectClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "onConnectClosed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public onConnectError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectError...error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "onConnectSuccess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    const-string v1, "getDeviceInfo"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public recv(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    const-string/jumbo v0, "type"

    .line 265
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recv..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const-string/jumbo v0, "recv...message is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const v7, 0x1ccb941a

    const-string v8, "getDeviceInfo"

    const/4 v9, 0x2

    if-eq v6, v7, :cond_4

    const v7, 0x1f9d589c

    if-eq v6, v7, :cond_3

    const v7, 0x40b292db

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v6, "refresh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const-string v6, "disconnect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    :cond_5
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v9, :cond_6

    goto :goto_1

    .line 282
    .restart local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->t:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-direct {p0, v8, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->o:Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    const-string/jumbo v1, "user close connection."

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a(ILjava/lang/String;)V

    .line 280
    return-void

    .line 276
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    return-void

    .line 290
    :cond_9
    :goto_1
    return-void

    .line 288
    :catch_0
    move-exception v0

    move-object v2, v5

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v0, v2

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "data parse error, message=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v2, v4, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->onConnectError(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public recv([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 295
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->recv(Ljava/lang/String;)V

    .line 296
    return-void
.end method
