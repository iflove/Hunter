.class public Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;
.super Landroid/app/Service;
.source "FgBgMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;
    }
.end annotation


# static fields
.field static final MSG_DATA_KEY_ACTIVITY:Ljava/lang/String; = "key_activity"

.field private static final MSG_DATA_KEY_CALLING_PID:Ljava/lang/String; = "key_calling_pid"

.field static final MSG_DATA_KEY_EVENT_TIME:Ljava/lang/String; = "key_event_time"

.field private static final MSG_DATA_KEY_IS_LITE_PROCESS:Ljava/lang/String; = "key_is_lite_process"

.field static final MSG_DATA_KEY_PROCESS_NAME:Ljava/lang/String; = "key_process_name"

.field static final MSG_DATA_KEY_PROCESS_TYPE:Ljava/lang/String; = "key_process_type"

.field static final MSG_WHAT_ADD_CALLBACK:I = 0x2

.field static final MSG_WHAT_GET_FOREGROUND_PROCESS:I = 0x3

.field static final MSG_WHAT_MOVE_BACKGROUND:I = 0x1

.field static final MSG_WHAT_MOVE_FOREGROUND:I = 0x0

.field private static final PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

.field static final TAG:Ljava/lang/String; = "FgBgMonitorService"

.field private static final sCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static sComingFgProcessName:Ljava/lang/String;

.field private static sComingTopActivity:Ljava/lang/String;

.field private static sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

.field private static sFgProcessName:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sLastEventTime:J

.field private static final sLiteCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTopActivity:Ljava/lang/String;


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLastEventTime:J

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLiteCallbacks:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sCallbacks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->onNotifyMoveToBackground(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->onNotifyMoveToForeground(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLiteCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->doBindService(Landroid/content/Context;)V

    return-void
.end method

.method private static bindServiceIfNot(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 387
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    .line 389
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->doBindService(Landroid/content/Context;)V

    .line 391
    :cond_0
    return-void
.end method

.method private static doBindService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 394
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    .line 397
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 399
    return-void
.end method

.method static getFgBgProcessNoIPC()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    .locals 5

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    .line 91
    .local v1, "processName":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;

    .line 92
    .local v2, "activity":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v3

    .line 93
    .local v3, "processType":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 94
    new-instance v4, Lcom/alipay/mobile/common/fgbg/ProcessInfo;

    invoke-direct {v4, v1, v3, v2}, Lcom/alipay/mobile/common/fgbg/ProcessInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    return-object v4

    .line 97
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "activity":Ljava/lang/String;
    .end local v3    # "processType":Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    nop

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you can\'t use this method if you not on main process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 3

    .line 103
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FgBgMonitorService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$1;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sHandler:Landroid/os/Handler;

    .line 174
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 357
    if-eqz p0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    .local v1, "packageName":Ljava/lang/String;
    move-object v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->MAIN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 363
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isLiteProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->LITE:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "push"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->PUSH:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 367
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tools"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->TOOLS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 369
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ext"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->EXT:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 371
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sss"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->SSS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 374
    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->UNKNOWN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0

    .line 358
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_7
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->UNKNOWN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0
.end method

.method static initWhenMainProcess()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "FgBgMonitorService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 82
    return-void
.end method

.method private static notify(Landroid/os/Message;)V
    .locals 8
    .param p0, "message"    # Landroid/os/Message;

    .line 327
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "callbackIterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    move-object v2, v1

    .line 328
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "FgBgMonitorService"

    if-eqz v3, :cond_2

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 330
    .local v2, "messenger":Landroid/os/Messenger;
    move-object v2, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send local message error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 331
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 332
    goto :goto_0

    .line 341
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_2
    sget-object v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLiteCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    .line 342
    .local v2, "liteCallbackIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 344
    .local v5, "pid":I
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v6

    .line 345
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v6

    if-nez v6, :cond_3

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 347
    goto :goto_2

    .line 349
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v6

    .line 350
    .local v3, "messenger":Landroid/os/Messenger;
    move-object v3, v6

    if-eqz v6, :cond_4

    .line 351
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 353
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v5    # "pid":I
    :cond_4
    goto :goto_2

    .line 354
    :cond_5
    return-void
.end method

.method private static notifyMoveToBg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "lastTopActivity"    # Ljava/lang/String;

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 300
    .local v2, "message":Landroid/os/Message;
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v3, "key_process_name"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "key_activity"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_process_type"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyMoveToBg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FgBgMonitorService"

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->notify(Landroid/os/Message;)V

    .line 310
    return-void
.end method

.method private static notifyMoveToFg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "topActivity"    # Ljava/lang/String;

    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 314
    .local v2, "message":Landroid/os/Message;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->what:I

    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v3, "key_process_name"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "key_activity"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_process_type"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyMoveToFg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FgBgMonitorService"

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->notify(Landroid/os/Message;)V

    .line 324
    return-void
.end method

.method private static onNotifyMoveToBackground(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "lastTopActivity"    # Ljava/lang/String;
    .param p2, "eventTime"    # J

    .line 266
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 268
    sget-wide v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLastEventTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " curFgProcessName:"

    const-string v4, "FgBgMonitorService"

    cmp-long v5, p2, v1

    if-gez v5, :cond_0

    .line 269
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ignore outdated background event, processName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 270
    return-void

    .line 272
    :cond_0
    :try_start_2
    sput-wide p2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLastEventTime:J

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const-string/jumbo v1, "unknown"

    move-object p1, v1

    .line 276
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 279
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->notifyMoveToBg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    .line 283
    .local v1, "pn":Ljava/lang/String;
    const/4 v2, 0x0

    sput-object v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    .line 284
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->notifyMoveToBg(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v1    # "pn":Ljava/lang/String;
    goto :goto_0

    .line 286
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notify background processName is not foreground processName, ignored. processName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "invalid notify background, processName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static onNotifyMoveToForeground(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "topActivity"    # Ljava/lang/String;
    .param p2, "eventTime"    # J

    .line 230
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 232
    sget-wide v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLastEventTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " curFgProcessName:"

    const-string v4, "FgBgMonitorService"

    cmp-long v5, p2, v1

    if-gez v5, :cond_0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ignore outdated foreground event, processName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    return-void

    .line 236
    :cond_0
    :try_start_2
    sput-wide p2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLastEventTime:J

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string/jumbo v1, "unknown"

    move-object p1, v1

    .line 240
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 242
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    sput-object p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;

    .line 245
    sput-object p1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;

    invoke-static {v1, v2, p2, p3}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->onNotifyMoveToBackground(Ljava/lang/String;Ljava/lang/String;J)V

    .line 247
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;

    .line 248
    sput-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;

    .line 250
    :cond_2
    sput-object p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    .line 251
    sput-object p1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;

    .line 252
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->notifyMoveToFg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "process moveToForeground again, ignored! process:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "invalid notify foreground, processName:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->PROCESS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static sendMessage(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Landroid/os/Message;

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 179
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 183
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v3, "key_calling_pid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 188
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 191
    const/4 v0, 0x1

    const-string v1, "key_is_lite_process"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "FgBgMonitorService"

    invoke-static {v0, p1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 195
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->bindServiceIfNot(Landroid/content/Context;)V

    .line 196
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sConnectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    .line 197
    .local v0, "connectServiceFuture":Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;

    invoke-direct {v3, v0, p0, p1}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;Landroid/content/Context;Landroid/os/Message;)V

    const-string v4, "FgBgServiceMessage"

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 226
    .end local v0    # "connectServiceFuture":Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Landroid/os/Messenger;

    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->mMessenger:Landroid/os/Messenger;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
