.class Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;
.super Lcom/alipay/mobile/common/fgbg/FgBgMonitor;
.source "FgBgMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

.field private static final TAG:Ljava/lang/String; = "FgBgMonitorImpl"

.field private static mClientMessenger:Landroid/os/Messenger;

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private volatile mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mFgBgListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private final mScreenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->sHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mHasInited:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyScreenInteractive()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyScreenUninteractive()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyMoveForeground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyMoveBackground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V

    return-void
.end method

.method static synthetic access$600()[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    return-object v0
.end method

.method private initIfNot()V
    .locals 5

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mHasInited:Z

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mHasInited:Z

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FgBgMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 60
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;Landroid/os/Looper;)V

    .line 63
    .local v0, "handler":Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;
    iget-object v3, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->prepare()V

    .line 67
    const-string v3, "FgBgMonitorService"

    invoke-static {v3, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 70
    :cond_0
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mClientMessenger:Landroid/os/Messenger;

    .line 71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 72
    .local v1, "message":Landroid/os/Message;
    move-object v1, v3

    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 73
    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mClientMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 75
    iget-object v3, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sendMessage(Landroid/content/Context;Landroid/os/Message;)V

    .line 77
    .end local v0    # "handler":Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1
    return-void
.end method

.method private notifyMoveBackground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V
    .locals 4
    .param p1, "processInfo"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    monitor-enter v0

    .line 229
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 230
    .local v1, "clone":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;

    .line 232
    .local v2, "fgBgListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v2, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;->onMoveToBackground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V

    .line 235
    .end local v2    # "fgBgListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    return-void

    .line 230
    .end local v1    # "clone":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyMoveForeground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V
    .locals 4
    .param p1, "processInfo"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    monitor-enter v0

    .line 217
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v1, "clone":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;

    .line 220
    .local v2, "fgBgListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 221
    invoke-interface {v2, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;->onMoveToForeground(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;)V

    .line 223
    .end local v2    # "fgBgListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    return-void

    .line 218
    .end local v1    # "clone":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyScreenInteractive()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    monitor-enter v0

    .line 241
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v1, "clone":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;

    .line 244
    .local v2, "screenListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 245
    invoke-interface {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;->onScreenInteractive()V

    .line 247
    .end local v2    # "screenListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    return-void

    .line 242
    .end local v1    # "clone":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyScreenUninteractive()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    monitor-enter v0

    .line 253
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v1, "clone":Ljava/util/Set;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;

    .line 256
    .local v2, "screenListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;->onScreenUninteractive()V

    .line 259
    .end local v2    # "screenListener":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    return-void

    .line 254
    .end local v1    # "clone":Ljava/util/Set;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private registerScreenReceiverIfNot()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 112
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public getForegroundProcess()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    .locals 9

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->initIfNot()V

    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 137
    .local v2, "message":Landroid/os/Message;
    move-object v2, v0

    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 138
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mClientMessenger:Landroid/os/Messenger;

    iput-object v0, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sendMessage(Landroid/content/Context;Landroid/os/Message;)V

    .line 140
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v3, v4, :cond_0

    .line 144
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :goto_0
    goto :goto_1

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "FgBgMonitorImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getForegroundProcess 0.5s failed:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", try no ipc call"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getFgBgProcessNoIPC()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    .line 149
    :catchall_0
    move-exception v4

    .line 150
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "FgBgMonitorImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getFgBgProcessNoIPC failed:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 154
    :cond_0
    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 156
    :goto_1
    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    const/4 v4, 0x0

    aget-object v1, v3, v4
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0

    return-object v1

    .line 160
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 157
    :catch_1
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "FgBgMonitorImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getForegroundProcess failed:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v3    # "e":Ljava/lang/InterruptedException;
    monitor-exit v0

    .line 161
    return-object v1

    .line 160
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public isInBackground()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->getForegroundProcess()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackgroundV2()Z

    move-result v0

    return v0
.end method

.method onProcessFgBgWatcherInited()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->initWhenMainProcess()V

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->getInstance()Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->registerCallback(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;)V

    .line 212
    return-void
.end method

.method public registerFgBgListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->initIfNot()V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerScreenListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->registerScreenReceiverIfNot()V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterFgBgListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$FgBgListener;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mFgBgListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterScreenListener(Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ScreenListener;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
