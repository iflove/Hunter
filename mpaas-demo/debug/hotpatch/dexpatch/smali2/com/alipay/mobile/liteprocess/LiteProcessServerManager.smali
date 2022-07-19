.class public Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;,
        Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;,
        Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;
    }
.end annotation


# static fields
.field static a:Lcom/alipay/mobile/liteprocess/LiteProcess;

.field static b:Landroid/os/Handler;

.field static c:Z

.field private static d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alipay/mobile/liteprocess/LiteProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Z

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public static sPreloadIndexCurrent:I

.field public static sPreloadIndexTotal:I


# instance fields
.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->i:Z

    .line 90
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->j:Z

    .line 92
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    sput v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexTotal:I

    .line 97
    sput v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexCurrent:I

    .line 1497
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l:Ljava/util/Set;

    .line 1496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->i()V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p0, "fromBaseActivity"    # Landroid/content/ComponentName;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    monitor-enter v0

    .line 1437
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->t:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1438
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no need safeGetFromBaseActivityName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object v2

    .line 1442
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "safeGetFromBaseActivityName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const/4 v1, 0x0

    .line 1446
    .local v1, "fromBaseActivityName":Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 1447
    sget-object v3, Lcom/alipay/mobile/liteprocess/Const;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/alipay/mobile/liteprocess/Const;->c:Ljava/lang/String;

    .line 1448
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 1451
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1452
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v3

    .line 1453
    .local v2, "checkFrom":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    if-eqz v3, :cond_4

    .line 1454
    iget v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1455
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkFrom success. checkFrom = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " fromBaseActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_1

    .line 1459
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkFrom fail and fix. checkFrom not running = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " fromBaseActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    sget-object v3, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    move-object v1, v3

    goto :goto_1

    .line 1464
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkFrom fail. checkFrom is null. fromBaseActivity =  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    .end local v2    # "checkFrom":Lcom/alipay/mobile/liteprocess/LiteProcess;
    goto :goto_1

    .line 1467
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkFrom no need. fromBaseActivity is MAIN_UI. fromBaseActivity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    sget-object v2, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    .line 1449
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1450
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkFrom success with main proc activity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1471
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "checkFrom fail. fromBaseActivity is null"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    :goto_1
    monitor-exit v0

    return-object v1

    .line 1436
    .end local v1    # "fromBaseActivityName":Ljava/lang/String;
    .end local p0    # "fromBaseActivity":Landroid/content/ComponentName;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "lpid"    # I

    monitor-enter p0

    .line 1146
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    const/4 v1, 0x0

    .line 1147
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v0

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    .line 1150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    .line 1152
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1153
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1154
    invoke-interface {v3, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;->onProcessHide(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1155
    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1158
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager onProcessHide "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1160
    iget-boolean v2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 1161
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(ILcom/alipay/mobile/liteprocess/LiteProcess;)V

    goto :goto_1

    .line 1163
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager can not Stop "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :goto_1
    iget-boolean v2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->m:Z

    if-eqz v2, :cond_3

    .line 1167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1168
    .local v0, "msg":Landroid/os/Message;
    move-object v0, v2

    const/16 v3, 0x11

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1169
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1170
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 1171
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->m:Z

    .line 1174
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d()V

    .line 1176
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v2

    .line 1177
    .local v0, "topTaskBaseActivity":Landroid/content/ComponentName;
    move-object v0, v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1178
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "LiteProcessServerManager onProcessHide and notifySrvShow"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1182
    :cond_4
    monitor-exit p0

    return-void

    .line 1156
    .end local v0    # "topTaskBaseActivity":Landroid/content/ComponentName;
    :catchall_1
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1148
    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    .line 1145
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "pid":I
    .end local p2    # "lpid":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1224
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;I)V

    .line 1234
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    sget-wide v2, Lcom/alipay/mobile/liteprocess/Config;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1235
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager addStopProcessRunnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method static a(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extra"    # Landroid/os/Bundle;

    .line 1560
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1561
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {p0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1562
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    goto :goto_0

    .line 1563
    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p0, "extra"    # Landroid/os/Bundle;
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1566
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1567
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyConfigChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1569
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v3, 0x14

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1570
    invoke-virtual {v1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1571
    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1573
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    monitor-enter p0

    .line 905
    if-eqz p1, :cond_6

    :try_start_0
    iget v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 908
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-ne p1, v0, :cond_1

    .line 909
    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 910
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 912
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessServerManager stopLiteProcess print stack trace, not exception:"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->logStopShowingLiteProcess()V

    .line 916
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager stopLiteProcess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 919
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager destroyClient "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_3

    .line 922
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    invoke-interface {v0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService;->destoryClient()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    goto :goto_0

    .line 923
    :catchall_0
    move-exception v0

    .line 924
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager stopService "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 930
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 931
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e:Landroid/util/SparseArray;

    iget v3, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 932
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_4

    .line 933
    iget-object v2, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 935
    :cond_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 938
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 936
    :catchall_1
    move-exception v0

    .line 937
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->a(Ljava/util/Set;)Z

    .line 941
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 943
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager killProcess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 945
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 946
    :try_start_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 947
    invoke-interface {v2, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;->onProcessKilled(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 948
    goto :goto_2

    .line 949
    :cond_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 950
    :try_start_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 952
    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 953
    monitor-exit p0

    return-void

    .line 949
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 904
    .end local p1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    .line 906
    .restart local p1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_6
    :goto_3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 4
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p3, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1337
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager doStartActivityFromLiteProcess intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1338
    invoke-virtual {p3, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1337
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1340
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1342
    .local v0, "bundle":Landroid/os/Bundle;
    const/high16 v2, 0x40000

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1343
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1344
    const-string v2, "mExtras"

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1346
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    if-eqz p2, :cond_1

    .line 1347
    const-string v2, "app_id"

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1349
    :cond_1
    const-string v2, "intent"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1350
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1351
    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    monitor-exit p0

    return-void

    .line 1336
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p2    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local p3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x2"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Landroid/os/Bundle;

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 6
    .param p0, "targetAppId"    # Ljava/lang/String;

    .line 388
    const-string v0, ";"

    const-string v1, ""

    const-string/jumbo v2, "recent_tiny_apps"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->onTinyAppStart()V

    .line 389
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "recentApps":Ljava/lang/String;
    sget-boolean v4, Lcom/alipay/mobile/liteprocess/Config;->RECORD_RECENT_BIKE:Z

    if-eqz v4, :cond_0

    .line 391
    const-string v4, "2017050407110255|2017041206668232"

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 392
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 394
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .end local v3    # "recentApps":Ljava/lang/String;
    :cond_1
    return-void

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    const-string/jumbo v5, "onTinyAppStart record app id error!"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 403
    return-void

    .line 401
    :catchall_1
    move-exception v1

    .line 405
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v1, v10, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STARTING_APPID contains "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    const/4 v1, 0x1

    .line 248
    .local v1, "updateFromActivity":Z
    :try_start_1
    const-string v2, "FORCE_START_LITE_APP_FROM_MAIN_UI"

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 249
    .local v2, "forceStartFromMainUi":Z
    const-string v3, "FROM_TINY_APP_ID"

    const-string v4, ""

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 250
    .local v14, "fromTinyAppid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startApp forceStartFromMainUi: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " FROM_TINY_APP_ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " CAN_FORCE_START_FROM_MAINUI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/liteprocess/Config;->p:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-boolean v3, Lcom/alipay/mobile/liteprocess/Config;->p:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 254
    :goto_0
    move v7, v3

    .end local v2    # "forceStartFromMainUi":Z
    .local v7, "forceStartFromMainUi":Z
    const/4 v15, 0x0

    if-eqz v3, :cond_2

    move-object v2, v15

    goto :goto_1

    .line 255
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v10, v14}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->m()Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    :goto_1
    move-object v3, v15

    .line 258
    .local v3, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v8, v2

    .end local v3    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v8, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v2, :cond_6

    .line 259
    iget-object v2, v8, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startApp self cycle fromLiteProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " targetAppId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_4
    iget-object v2, v8, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startApp fromLiteProcess cycle fromLiteProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " targetAppId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_3

    .line 268
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startApp fromLiteProcess.canStop = false fromLiteProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-boolean v13, v8, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    .line 270
    iput-boolean v13, v8, Lcom/alipay/mobile/liteprocess/LiteProcess;->m:Z

    goto :goto_2

    .line 273
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string/jumbo v4, "startApp fromLiteProcess is null"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_2
    move/from16 v16, v1

    .end local v1    # "updateFromActivity":Z
    .local v16, "updateFromActivity":Z
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v5, v1

    .line 277
    .local v5, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "tiny_lauch_cost"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "9 LiteProcessServerManager#startApp launch_cost#prepare begin launch_cost maybe start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "perf_prepare_time"

    invoke-virtual {v11, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    if-eqz v12, :cond_7

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 281
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_MAIN_CrossProcessBefore:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v12, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    :cond_7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v17, v5

    .end local v5    # "time":J
    .local v17, "time":J
    move-object/from16 v5, p4

    move/from16 v6, v16

    move-object/from16 v19, v8

    .end local v8    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v19, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLcom/alipay/mobile/liteprocess/LiteProcess;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 285
    monitor-exit p0

    return-void

    .line 288
    :cond_8
    :try_start_2
    const-string v1, "is_preload"

    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v1, "perf_foreground_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 290
    const-string/jumbo v1, "time_from_launch"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 291
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 290
    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 292
    const-string/jumbo v1, "perf_preload_wait"

    sget-boolean v2, Lcom/alipay/mobile/liteprocess/Config;->A:Z

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v1, :cond_a

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->cancelPreloadTaskIfExist()V

    .line 295
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "readyProcess is null and startLiteProcess"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "cold"

    invoke-direct {v10, v13, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(ZLjava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STARTING_APPID add "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, v10, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_a
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v1, :cond_b

    .line 302
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "ready doStartApp but readyProcess is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 306
    :cond_b
    :try_start_3
    iput-object v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 307
    move-object/from16 v9, v19

    .end local v19    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v9, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v9, :cond_d

    .line 308
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {v10, v9, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 309
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {v10, v1, v9}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 310
    const/16 v16, 0x1

    .line 311
    const/4 v1, 0x1

    .line 312
    .end local v7    # "forceStartFromMainUi":Z
    .local v1, "forceStartFromMainUi":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "LiteProcessServerManager startApp cycle recover bind2Lite"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v16

    move/from16 v16, v1

    goto :goto_5

    .line 314
    .end local v1    # "forceStartFromMainUi":Z
    .restart local v7    # "forceStartFromMainUi":Z
    :cond_c
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {v10, v9, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessServerManager startApp bind2Lite"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_d
    move/from16 v19, v16

    move/from16 v16, v7

    .end local v7    # "forceStartFromMainUi":Z
    .local v16, "forceStartFromMainUi":Z
    .local v19, "updateFromActivity":Z
    :goto_5
    sget-object v6, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, v19

    move-object/from16 v20, v9

    .end local v9    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v20, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZZ)V

    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessServerManager startApp "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const-string v2, "is_preload"

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onTinyAppStarted(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V

    .line 324
    sput-object v15, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 331
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;)V

    .line 334
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 240
    .end local v14    # "fromTinyAppid":Ljava/lang/String;
    .end local v16    # "forceStartFromMainUi":Z
    .end local v17    # "time":J
    .end local v19    # "updateFromActivity":Z
    .end local v20    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "startParams":Landroid/os/Bundle;
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZZ)V
    .locals 23
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p6, "forceStart"    # Z
    .param p7, "updateFromActivity"    # Z
    .param p8, "forceStartFromMainUi"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    const-string v6, "LiteProcess"

    .line 412
    if-nez p3, :cond_0

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .end local p3    # "params":Landroid/os/Bundle;
    .local v0, "params":Landroid/os/Bundle;
    goto :goto_0

    .line 412
    .end local v0    # "params":Landroid/os/Bundle;
    .restart local p3    # "params":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v7, p3

    .line 416
    .end local p3    # "params":Landroid/os/Bundle;
    .local v7, "params":Landroid/os/Bundle;
    :goto_0
    if-nez p4, :cond_1

    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .local v0, "sceneParams":Landroid/os/Bundle;
    goto :goto_1

    .line 416
    .end local v0    # "sceneParams":Landroid/os/Bundle;
    .restart local p4    # "sceneParams":Landroid/os/Bundle;
    :cond_1
    move-object/from16 v8, p4

    .line 421
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .local v8, "sceneParams":Landroid/os/Bundle;
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getCurrentLoggingInfo()Landroid/os/Parcelable;

    move-result-object v0

    .line 422
    .local v0, "loggingInfo":Landroid/os/Parcelable;
    const-string v9, "LITE_PROCESS_LOGGING_INFO"

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getCurrentLoggingInfo:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    .end local v0    # "loggingInfo":Landroid/os/Parcelable;
    goto :goto_2

    .line 424
    :catchall_0
    move-exception v0

    .line 425
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    iget v9, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    const-string v10, "LITE_PROCESS_ID"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    iget-object v9, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    const-string v10, "PRELOAD_FROM"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v9

    .line 432
    .local v0, "topTaskBaseActivity":Landroid/content/ComponentName;
    move-object v0, v9

    .line 433
    .local v9, "fromBaseActivity":Landroid/content/ComponentName;
    iget-object v10, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_3

    .line 434
    iget-object v10, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v10

    move-object v12, v11

    .line 435
    .local v12, "fromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v12, v10

    if-eqz v10, :cond_3

    .line 436
    iget-object v10, v12, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-static {v10}, Lcom/alipay/mobile/liteprocess/Util;->b(Ljava/util/Set;)Landroid/content/ComponentName;

    move-result-object v10

    move-object v13, v11

    .line 437
    .local v13, "foundFromBaseActivity":Landroid/content/ComponentName;
    move-object v13, v10

    if-eqz v10, :cond_2

    move-object v10, v13

    goto :goto_3

    :cond_2
    move-object v10, v9

    :goto_3
    move-object v9, v10

    goto :goto_4

    .line 440
    .end local v12    # "fromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local v13    # "foundFromBaseActivity":Landroid/content/ComponentName;
    :cond_3
    move-object v13, v11

    :goto_4
    invoke-static {v9}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v10

    .line 442
    .local v10, "fromBaseActivityName":Ljava/lang/String;
    const-string v14, " fromBaseActivity = "

    const-string v15, "UID"

    const-string v11, "FORCE_START"

    const-string v12, "LITE_PROCESS_SCENE_PARAMS"

    move-object/from16 v16, v9

    .end local v9    # "fromBaseActivity":Landroid/content/ComponentName;
    .local v16, "fromBaseActivity":Landroid/content/ComponentName;
    const-string v9, "LITE_PROCESS_PARAMS"

    const-string v1, "TARGETAPPID"

    move-object/from16 v17, v14

    const-string v14, "SOURCEAPPID"

    move-object/from16 v18, v6

    const-string v6, "FROM_BASE_ACTIVITY"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v19

    if-nez v19, :cond_8

    sget-boolean v19, Lcom/alipay/mobile/liteprocess/Config;->e:Z

    if-eqz v19, :cond_8

    move-object/from16 v19, v0

    .end local v0    # "topTaskBaseActivity":Landroid/content/ComponentName;
    .local v19, "topTaskBaseActivity":Landroid/content/ComponentName;
    iget v0, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 443
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 444
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    move-object v4, v13

    .line 445
    .local v4, "msg":Landroid/os/Message;
    move-object v4, v0

    const/16 v13, 0x10

    iput v13, v0, Landroid/os/Message;->what:I

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v13, 0x0

    .line 447
    .local v13, "extras":Landroid/os/Bundle;
    move-object v13, v0

    invoke-virtual {v0, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-eqz p7, :cond_5

    .line 450
    if-eqz p8, :cond_4

    .line 451
    sget-object v0, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v13, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 453
    :cond_4
    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_5
    :goto_5
    invoke-virtual {v13, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {v7, v12, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 460
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 461
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "LiteProcessServerManager fast doStartApp "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " topTaskBaseActivity =  "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 465
    .end local v4    # "msg":Landroid/os/Message;
    .end local v13    # "extras":Landroid/os/Bundle;
    nop

    .local v4, "context":Landroid/content/Context;
    move-object v12, v13

    move-object/from16 v22, v6

    move-object v6, v4

    move-object v4, v9

    move-object/from16 v9, v22

    .local v12, "intent":Landroid/content/Intent;
    goto/16 :goto_8

    .line 443
    .end local v4    # "context":Landroid/content/Context;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v4, p5

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    goto :goto_6

    .line 442
    :cond_7
    move-object/from16 v4, p5

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    goto :goto_6

    .end local v19    # "topTaskBaseActivity":Landroid/content/ComponentName;
    .restart local v0    # "topTaskBaseActivity":Landroid/content/ComponentName;
    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    .line 466
    .end local v0    # "topTaskBaseActivity":Landroid/content/ComponentName;
    .restart local v19    # "topTaskBaseActivity":Landroid/content/ComponentName;
    :goto_6
    move-object/from16 v18, v13

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 467
    .local v13, "context":Landroid/content/Context;
    move-object/from16 v17, v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v21, v20

    .line 468
    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 p3, v0

    move-object/from16 v21, v13

    .end local v13    # "context":Landroid/content/Context;
    .local v21, "context":Landroid/content/Context;
    .local p3, "intent":Landroid/content/Intent;
    const-string v13, "START_APP"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    nop

    .end local p3    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 472
    invoke-virtual {v0, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 473
    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    if-eqz p7, :cond_a

    .line 476
    if-eqz p8, :cond_9

    .line 477
    sget-object v1, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 479
    :cond_9
    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :cond_a
    :goto_7
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f:Landroid/util/SparseArray;

    iget v6, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    move-object/from16 v6, v21

    .end local v21    # "context":Landroid/content/Context;
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 483
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "LiteProcessServerManager not fast doStartApp "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " topTaskBaseActivity = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_b

    .line 487
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v0

    move-object v0, v1

    goto :goto_8

    :cond_b
    move-object v12, v0

    move-object v0, v1

    move-object/from16 v11, v20

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v12    # "intent":Landroid/content/Intent;
    :goto_8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    move-object/from16 v9, v18

    invoke-interface {v0, v9, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v6    # "context":Landroid/content/Context;
    .end local v12    # "intent":Landroid/content/Intent;
    const/4 v0, 0x2

    iput v0, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    .line 490
    iput-object v3, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 491
    const-string v0, "APP_TYPE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    .line 493
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$2;

    move-object/from16 v6, p0

    invoke-direct {v1, v6, v4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$2;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    return-void
.end method

.method private declared-synchronized a(ZLjava/lang/String;)V
    .locals 6
    .param p1, "needStartService"    # Z
    .param p2, "preloadFrom"    # Ljava/lang/String;

    monitor-enter p0

    .line 808
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 809
    monitor-exit p0

    return-void

    .line 812
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager startLiteProcess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Just Print"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 816
    monitor-exit p0

    return-void

    .line 819
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessCanStart()Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    const/4 v1, 0x0

    .line 821
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 822
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "startLiteProcess but no can start!!! "

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 823
    monitor-exit p0

    return-void

    .line 827
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->getInstance()Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    move-result-object v0

    const-string v2, "__liteprocess_start__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 827
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->putInChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 831
    iget v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 832
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is running and stop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 835
    :cond_3
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 837
    iput-object p2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 838
    nop

    .line 839
    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const/4 v0, 0x1

    iput v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    .line 840
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->s:J

    .line 841
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    sget v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexTotal:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexTotal:I

    iput v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->u:I

    .line 842
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    sget v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexCurrent:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexCurrent:I

    iput v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->v:I

    .line 844
    if-eqz p1, :cond_4

    .line 845
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V

    .line 848
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessServerManager startLiteProcess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;->register()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 852
    monitor-exit p0

    return-void

    .line 807
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "needStartService":Z
    .end local p2    # "preloadFrom":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Landroid/content/ComponentName;Lcom/alipay/mobile/liteprocess/LiteProcess;)Z
    .locals 3
    .param p0, "topTaskBaseActivity"    # Landroid/content/ComponentName;
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1401
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    .line 1402
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findProcessOnShow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/4 v0, 0x1

    return v0

    .line 1406
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)Z
    .locals 3
    .param p1, "src"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "dst"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    monitor-enter p0

    .line 633
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    monitor-exit p0

    return v0

    .line 632
    .end local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 634
    .restart local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .restart local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLcom/alipay/mobile/liteprocess/LiteProcess;)Z
    .locals 16
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "updateFromActivity"    # Z
    .param p6, "forceStartFromMainUi"    # Z
    .param p7, "fromLiteprocess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-object/from16 v10, p0

    move-object/from16 v0, p7

    monitor-enter p0

    .line 513
    move-object/from16 v11, p2

    :try_start_0
    invoke-virtual {v10, v11}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 514
    .local v3, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v12, v1

    .end local v3    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v12, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v1, :cond_6

    iget-boolean v1, v12, Lcom/alipay/mobile/liteprocess/LiteProcess;->isNebulaX:Z

    if-nez v1, :cond_6

    iget v1, v12, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move-object/from16 v14, p3

    goto/16 :goto_3

    .line 517
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v1

    move-object v13, v1

    .line 518
    .local v13, "topTaskBaseActivity":Landroid/content/ComponentName;
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->q:Z

    if-eqz v1, :cond_2

    if-eqz v13, :cond_2

    iget-object v1, v12, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    .line 520
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    const-string v1, "CLEAR_TOP_APP_WHEN_RESTART"

    const-string/jumbo v3, "true"

    move-object/from16 v14, p3

    invoke-virtual {v14, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    move-object/from16 v14, p3

    goto :goto_0

    .line 518
    :cond_2
    move-object/from16 v14, p3

    .line 524
    :goto_0
    iget-object v1, v12, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v1

    .line 525
    .local v2, "origFromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v15, v1

    .end local v2    # "origFromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v15, "origFromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v1, :cond_3

    if-eqz v13, :cond_3

    .line 527
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    invoke-direct {v10, v15, v12}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 529
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessServerManager restartApp unbind2Lite"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    :cond_3
    invoke-direct {v10, v0, v12}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 531
    invoke-direct {v10, v0, v12}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 532
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessServerManager restartApp bind2Lite"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_4
    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZ)Z

    move-result v1

    .line 536
    if-eqz v1, :cond_5

    .line 537
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restartInTask success in process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 539
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restartInTask failed and will restart in process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v12

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :goto_2
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 514
    .end local v13    # "topTaskBaseActivity":Landroid/content/ComponentName;
    .end local v15    # "origFromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_6
    move-object/from16 v14, p3

    .line 515
    :goto_3
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 512
    .end local v12    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .end local p5    # "updateFromActivity":Z
    .end local p6    # "forceStartFromMainUi":Z
    .end local p7    # "fromLiteprocess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZ)Z
    .locals 17
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "toLiteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p5, "updateFromActivity"    # Z
    .param p6, "forceStartFromMainUi"    # Z

    .line 547
    move-object/from16 v12, p3

    move/from16 v13, p5

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 548
    .local v2, "activityManager":Landroid/app/ActivityManager;
    move-object v3, v0

    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .local v3, "activityManager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    .line 549
    .local v14, "recentTasks":Ljava/util/List;
    const/4 v0, 0x0

    .line 550
    .local v0, "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 551
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v4, v5

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 554
    move-object/from16 v15, p4

    iget-object v5, v15, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    move-object v0, v4

    .line 556
    move-object v11, v0

    goto :goto_1

    .line 558
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    goto :goto_0

    .line 551
    .restart local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    move-object/from16 v15, p4

    goto :goto_0

    .line 550
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    move-object/from16 v15, p4

    move-object v11, v0

    .line 559
    .end local v0    # "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v11, "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1
    if-nez v11, :cond_3

    .line 560
    const/4 v0, 0x0

    return v0

    .line 563
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v10

    .line 565
    .local v10, "fromActivity":Landroid/content/ComponentName;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessServerManager restartAppIfNeeded sourceAppId = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " targetAppId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " toRunningTaskInfo.baseActivity = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " updateFromActivity  = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fromActivity = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " params = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "LiteProcess"

    invoke-interface {v0, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "fromForeground":Z
    if-eqz v10, :cond_6

    .line 575
    if-eqz v13, :cond_5

    .line 576
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 577
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v2

    const/16 v4, 0xe

    iput v4, v2, Landroid/os/Message;->what:I

    .line 578
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v2, "data":Landroid/os/Bundle;
    const-string v4, "FROM_BASE_ACTIVITY"

    if-eqz p6, :cond_4

    .line 580
    sget-object v5, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 582
    :cond_4
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 585
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v4

    invoke-static {v4, v7, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 587
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 588
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    .line 591
    :cond_6
    move v6, v0

    .end local v0    # "fromForeground":Z
    .local v6, "fromForeground":Z
    :goto_3
    const/4 v0, 0x0

    .line 592
    .local v0, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v10, :cond_7

    .line 593
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 592
    :cond_7
    move-object v2, v0

    .line 596
    .end local v0    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v2, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :goto_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v0

    .line 597
    .local v1, "handler":Landroid/os/Handler;
    move-object v4, v11

    .line 598
    .local v4, "finalToRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move v5, v6

    .line 599
    .local v5, "finalFromForeground":Z
    if-nez v2, :cond_8

    .line 600
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$3;

    move-object v13, v1

    .end local v1    # "handler":Landroid/os/Handler;
    .local v13, "handler":Landroid/os/Handler;
    move-object v1, v0

    move-object/from16 v16, v14

    move-object v14, v2

    .end local v2    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v14, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .local v16, "recentTasks":Ljava/util/List;
    move-object/from16 v2, p0

    move v15, v6

    .end local v6    # "fromForeground":Z
    .local v15, "fromForeground":Z
    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$3;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/app/ActivityManager;Landroid/app/ActivityManager$RunningTaskInfo;ZLandroid/os/Bundle;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcessServerManager doRestartAppInTask finish1."

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    move-object v6, v11

    goto/16 :goto_6

    .line 609
    .end local v13    # "handler":Landroid/os/Handler;
    .end local v15    # "fromForeground":Z
    .end local v16    # "recentTasks":Ljava/util/List;
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .restart local v6    # "fromForeground":Z
    .local v14, "recentTasks":Ljava/util/List;
    :cond_8
    move-object v13, v1

    move v15, v6

    move-object/from16 v16, v14

    move-object v14, v2

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local v6    # "fromForeground":Z
    .restart local v13    # "handler":Landroid/os/Handler;
    .local v14, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .restart local v15    # "fromForeground":Z
    .restart local v16    # "recentTasks":Ljava/util/List;
    iget-object v0, v14, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    const-string v1, " fromLiteProcess.clientService = "

    if-nez v0, :cond_9

    .line 610
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "LiteProcessServerManager doRestartAppInTask fail and stop start.  fromLiteProcess = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;

    move-object v6, v0

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v2, v10

    .end local v10    # "fromActivity":Landroid/content/ComponentName;
    .local v2, "fromActivity":Landroid/content/ComponentName;
    move v10, v5

    move-object v1, v11

    .end local v11    # "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v1, "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/app/ActivityManager;Landroid/app/ActivityManager$RunningTaskInfo;ZLandroid/os/Bundle;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v6, v1

    goto :goto_6

    .line 621
    .end local v1    # "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "fromActivity":Landroid/content/ComponentName;
    .restart local v10    # "fromActivity":Landroid/content/ComponentName;
    .restart local v11    # "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_9
    move-object v2, v10

    move-object v6, v11

    .end local v10    # "fromActivity":Landroid/content/ComponentName;
    .end local v11    # "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v2    # "fromActivity":Landroid/content/ComponentName;
    .local v6, "toRunningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_0
    iget-object v0, v14, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    iget v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v9, 0x1

    invoke-interface {v0, v8, v9, v15, v12}, Lcom/alipay/mobile/liteprocess/ipc/IClientService;->moveTaskToFront(IZZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    goto :goto_5

    .line 622
    :catchall_0
    move-exception v0

    .line 623
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LiteProcessServerManager doRestartAppInTask finish2.  fromLiteProcess = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_6
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized b(II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "lpid"    # I

    monitor-enter p0

    .line 1185
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move-object v2, v1

    .line 1186
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 1187
    monitor-exit p0

    return-void

    .line 1189
    :cond_0
    :try_start_1
    iput p1, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    .line 1191
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager onProcessShow "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1193
    .local v1, "lite":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v3

    iget v3, v3, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    if-eq v3, p1, :cond_1

    iget-boolean v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    if-eqz v3, :cond_1

    .line 1194
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    .line 1195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LiteProcessServerManager onProcessShow fix isShow"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    .end local v1    # "lite":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    goto :goto_0

    .line 1199
    :cond_2
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1200
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1201
    invoke-interface {v3, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;->onProcessShow(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1202
    goto :goto_1

    .line 1203
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :try_start_3
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1206
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1207
    monitor-exit p0

    return-void

    .line 1203
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1184
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "pid":I
    .end local p2    # "lpid":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "params"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 338
    :try_start_0
    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 339
    const-string v0, "SOURCEAPPID_IN_LITE"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "sourceId":Ljava/lang/String;
    const-string v0, "TARGETAPPID_IN_LITE"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "targetId":Ljava/lang/String;
    const-string v0, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    .local v0, "sceneParams":Landroid/os/Bundle;
    :try_start_1
    const-string v1, "FL_RESTORE_DATA"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    .line 345
    .local v2, "restoreData":Landroid/os/Parcelable;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {}, Lcom/alipay/android/phone/fulllinktracker/api/FullLinkSdk;->getDriverApi()Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/fulllinktracker/api/driver/IFLDriverApi;->restoreFLData(Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v2    # "restoreData":Landroid/os/Parcelable;
    :cond_0
    goto :goto_0

    .line 348
    :catchall_0
    move-exception v1

    .line 349
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "LiteProcess"

    invoke-interface {v2, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 353
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess.SAIL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAppInLiteStep2@Main but targetId is null and return"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    monitor-exit p0

    return-void

    .line 357
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 358
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess.SAIL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAppInLiteStep2@Main params:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " sceneParams:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    monitor-exit p0

    return-void

    .line 337
    .end local v0    # "sceneParams":Landroid/os/Bundle;
    .end local v3    # "sourceId":Ljava/lang/String;
    .end local v4    # "targetId":Ljava/lang/String;
    .end local p1    # "params":Landroid/os/Bundle;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 9
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    monitor-enter p0

    .line 956
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 957
    monitor-exit p0

    return-void

    .line 959
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    move-object v2, v1

    .line 960
    .local v2, "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 961
    monitor-exit p0

    return-void

    .line 963
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager stopFromLiteProcessIfNeeded liteProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-direct {p0, v2, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 966
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "LiteProcess"

    const-string v4, "LiteProcessServerManager stopLite unbind2Lite"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-boolean v0, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 972
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v3, v0

    .end local v1    # "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .local v3, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    if-nez v0, :cond_3

    .line 975
    monitor-exit p0

    return-void

    .line 977
    :cond_3
    :try_start_3
    new-instance v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$7;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$7;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    const-string v5, "LiteProcessServerManager"

    sget-wide v6, Lcom/alipay/mobile/liteprocess/Config;->y:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 987
    monitor-exit p0

    return-void

    .line 970
    .end local v3    # "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 955
    .end local v2    # "fromLiteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p1, "src"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "dst"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    monitor-enter p0

    .line 640
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind2Lite failed src == dst. src: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 647
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    .line 648
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    iget-object v1, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    .line 650
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind2Lite successful src: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 639
    .end local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 641
    .restart local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .restart local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(II)V

    return-void
.end method

.method private declared-synchronized c(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "lpid"    # I

    monitor-enter p0

    .line 1210
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAppxLoaded pid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lpid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 1212
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1213
    monitor-exit p0

    return-void

    .line 1215
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->t:J

    .line 1217
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-ne v1, v0, :cond_1

    .line 1218
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 1209
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "pid":I
    .end local p2    # "lpid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static c(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1008
    if-eqz p0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LiteProcessServerManager notifyLogout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    if-eqz v0, :cond_1

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    invoke-interface {v0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService;->notifyLogout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    return-void

    .line 1015
    :catchall_0
    move-exception v0

    .line 1016
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 1009
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized c(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p1, "src"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "dst"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    monitor-enter p0

    .line 654
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    .line 658
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    iget-object v1, p2, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    .line 662
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbind2Lite successful src: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 653
    .end local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 655
    .restart local p1    # "src":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .restart local p2    # "dst":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(II)V

    return-void
.end method

.method private static declared-synchronized d(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    monitor-enter v0

    .line 1427
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1428
    .local v3, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v3, v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1429
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "findProcessByClassName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    monitor-exit v0

    return-object v3

    .line 1432
    .end local v3    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_0
    goto :goto_0

    .line 1433
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1426
    .end local p0    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 3
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1029
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1033
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1034
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    const-string v2, "LiteProcess"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1035
    return-void

    .line 1030
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method private static e(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1048
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifySrvShow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1051
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v3, 0x16

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1052
    sget v0, Lcom/alipay/mobile/liteprocess/Config;->v:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1053
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1055
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->m:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method private static f(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 4
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1240
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 1241
    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager removeStopProcessRunnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1244
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1246
    :cond_0
    return-void
.end method

.method public static final g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .locals 4

    .line 123
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 127
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    return-object v1
.end method

.method private static g(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 8
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1367
    :try_start_0
    const-string v0, "com.alipay.mobile.logging.TinyLoggingConfigManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1369
    .local v2, "tinyLoggingConfigManager":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1371
    const-string/jumbo v0, "triggerUpload"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    aput-object v5, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    .end local v2    # "tinyLoggingConfigManager":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1375
    :catchall_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 80
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 19
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->r:Z

    if-eqz v1, :cond_0

    .line 1627
    return-void

    .line 1629
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->r:Z

    .line 1630
    iget v2, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->u:I

    iget v3, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->v:I

    iget-object v4, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 1631
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->getAiAssistantState()Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "lite"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1632
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v7

    .line 1633
    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b()J

    move-result-wide v9

    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->s:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->t:J

    iget-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->w:Ljava/util/HashMap;

    .line 1630
    move-wide/from16 v17, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v1

    invoke-static/range {v2 .. v17}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;->onLiteProcessPreload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/util/HashMap;)V

    .line 1635
    return-void
.end method

.method private declared-synchronized i()V
    .locals 5

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager must be in main process. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 137
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    const/4 v0, 0x1

    :goto_0
    :try_start_2
    sget v1, Lcom/alipay/mobile/liteprocess/Config;->b:I

    if-gt v0, v1, :cond_2

    .line 141
    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;-><init>()V

    .line 142
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->a()V

    .line 143
    iput v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    .line 144
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e:Landroid/util/SparseArray;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessService;->a:[Ljava/lang/Class;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f:Landroid/util/SparseArray;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->ACTIVITY_CLASSES:[Ljava/lang/Class;

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->ACTIVITY_CLASSES:[Ljava/lang/Class;

    aget-object v2, v2, v4

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/Class;I)V

    .line 148
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->j()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LiteProcessServerManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$LiteProcessServerHandler;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/os/Looper;)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    .line 156
    const-string v0, "LiteProcess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 157
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessServerManager init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static j()Ljava/lang/Class;
    .locals 3

    .line 163
    :try_start_0
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.ipc.NebulaProcessService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "findNebulaProcessClz error!"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private k()Z
    .locals 5

    .line 792
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->isScanAppForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 794
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    const/4 v0, 0x1

    return v0

    .line 799
    :cond_0
    goto :goto_0

    .line 797
    :catchall_0
    move-exception v1

    .line 798
    .local v1, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "checkPreloadTiming error"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private static l()V
    .locals 3

    .line 1038
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->u:Z

    if-nez v0, :cond_0

    .line 1039
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "no need notifySrvShow"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void

    .line 1042
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1043
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1044
    goto :goto_0

    .line 1045
    :cond_1
    return-void
.end method

.method private declared-synchronized m()Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 5

    monitor-enter p0

    .line 1390
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v0

    .line 1391
    .local v0, "topTaskBaseActivity":Landroid/content/ComponentName;
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1392
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {v0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Landroid/content/ComponentName;Lcom/alipay/mobile/liteprocess/LiteProcess;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1393
    monitor-exit p0

    return-object v2

    .line 1395
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_0
    goto :goto_0

    .line 1396
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findProcessOnShow return null "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1389
    .end local v0    # "topTaskBaseActivity":Landroid/content/ComponentName;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .locals 4

    monitor-enter p0

    .line 1524
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1525
    monitor-exit p0

    return-void

    .line 1528
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1534
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "stopReadyProcess"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1536
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    monitor-exit p0

    return-void

    .line 1529
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopReadyProcess cancel readyProcess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mainAtBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAllLiteProcessHide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1529
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1532
    monitor-exit p0

    return-void

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 990
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessServerManager stopAllLiteProcess"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 992
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v2

    iget-boolean v2, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->q:Z

    if-eqz v2, :cond_0

    .line 993
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager stopAllLiteProcess not kill recovering "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    goto :goto_0

    .line 996
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    goto :goto_0

    .line 998
    :cond_1
    monitor-exit p0

    return-void

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)V
    .locals 1
    .param p1, "lpid"    # I

    monitor-enter p0

    .line 900
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    .line 901
    .local v0, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 899
    .end local v0    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .end local p1    # "lpid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V
    .locals 6
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "needPreloadNebulaX"    # Z

    .line 855
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 858
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindClientService "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 860
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e:Landroid/util/SparseArray;

    iget v4, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 862
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$6;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$6;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    iput-object v3, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    .line 878
    const-string v3, "NEED_PRELOAD_NEBULAX"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    const-string v3, "UID"

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcessServerManager start service begin!"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 883
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcessServerManager start service end!"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    goto :goto_0

    .line 884
    :catch_0
    move-exception v3

    .line 885
    .local v3, "iex":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LiteProcessServerManager start service failed!"

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    .end local v3    # "iex":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v3, p1, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 891
    return-void

    .line 889
    :catchall_0
    move-exception v3

    .line 890
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .end local v3    # "t":Ljava/lang/Throwable;
    return-void

    .line 856
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/Class;I)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "lpid"    # I

    monitor-enter p0

    .line 1298
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 1299
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1300
    monitor-exit p0

    return-void

    .line 1302
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    monitor-exit p0

    return-void

    .line 1297
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .end local p1    # "clazz":Ljava/lang/Class;
    .end local p2    # "lpid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 1001
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessServerManager notifyAllLiteProcessLogout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1003
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    goto :goto_0

    .line 1005
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 895
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    .line 896
    .local v0, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    monitor-exit p0

    return-void

    .line 894
    .end local v0    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 1270
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1271
    monitor-exit p0

    return-object v1

    .line 1273
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1274
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    iget-object v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 1275
    monitor-exit p0

    return-object v2

    .line 1277
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_1
    goto :goto_0

    .line 1278
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 1269
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1022
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessServerManager notifySrvReady"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1024
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    goto :goto_0

    .line 1026
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelPreloadTaskIfExist()V
    .locals 4

    .line 779
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 780
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 781
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 782
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_0
    return-void

    .line 784
    :catchall_0
    move-exception v0

    .line 785
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "cancelPreloadTaskIfExist error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 1500
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1501
    monitor-exit p0

    return-void

    .line 1504
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 1511
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$9;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    .line 1518
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1519
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    sget-wide v2, Lcom/alipay/mobile/liteprocess/Config;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1520
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "addStopReadyProcessRunnable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    monitor-exit p0

    return-void

    .line 1505
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addStopReadyProcessRunnable return mainAtBackground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAllLiteProcessHide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1505
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1507
    monitor-exit p0

    return-void

    .line 1499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 6

    monitor-enter p0

    .line 1540
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeStopReadyProcessRunnable runnable == null ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", readyProcess == null ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pipeline over ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", starting ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1542
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1544
    monitor-exit p0

    return-void

    .line 1547
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1548
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1549
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "removeStopReadyProcessRunnable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_3
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1553
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "removeStopReadyProcessRunnable and startAsync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    sget v0, Lcom/alipay/mobile/liteprocess/Config;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    :cond_4
    monitor-exit p0

    return-void

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 4
    .param p1, "lpid"    # I

    monitor-enter p0

    .line 1250
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1251
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    iget v3, v3, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1252
    monitor-exit p0

    return-object v2

    .line 1254
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_0
    goto :goto_0

    .line 1255
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1249
    .end local p1    # "lpid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 4
    .param p1, "pid"    # I

    monitor-enter p0

    .line 1260
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1261
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    iget v3, v3, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1262
    monitor-exit p0

    return-object v2

    .line 1264
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_0
    goto :goto_0

    .line 1265
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1259
    .end local p1    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findProcessCanStart()Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 5

    monitor-enter p0

    .line 1410
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1411
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-nez v3, :cond_0

    .line 1412
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findProcessCanStart TERMINATED "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    monitor-exit p0

    return-object v2

    .line 1415
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    goto :goto_0

    .line 1417
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1418
    .restart local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    if-eqz v3, :cond_2

    .line 1419
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findProcessCanStart canStop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    monitor-exit p0

    return-object v2

    .line 1422
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_2
    goto :goto_1

    .line 1423
    :cond_3
    monitor-exit p0

    return-object v1

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllAliveProcess()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/liteprocess/LiteProcess;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1282
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .local v0, "aliveProcess":Ljava/util/List;
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1284
    .local v2, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v2, v3

    iget v3, v3, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-eqz v3, :cond_0

    .line 1285
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    .end local v2    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    goto :goto_0

    .line 1288
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1281
    .end local v0    # "aliveProcess":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLiteProcessLooper()Landroid/os/Looper;
    .locals 1

    .line 1360
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getReadyLiteProcess()Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 1

    .line 1493
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    return-object v0
.end method

.method public declared-synchronized hasPreloadCompletedProcess()Z
    .locals 1

    monitor-enter p0

    .line 1485
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasPreloadProcess()Z
    .locals 1

    monitor-enter p0

    .line 1489
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1489
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAllLiteProcessHide()Z
    .locals 3

    monitor-enter p0

    .line 1381
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1382
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1383
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1385
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    goto :goto_0

    .line 1386
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyScanAppEvent(Z)V
    .locals 3
    .param p1, "toForeground"    # Z

    .line 1058
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->C:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    iget v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1063
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v2, 0x17

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1064
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1065
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    const-string v2, "LiteProcess"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1067
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 1059
    :cond_2
    :goto_0
    return-void
.end method

.method public onMainProcessGotoBackground()V
    .locals 1

    .line 1619
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->r:Z

    if-nez v0, :cond_0

    .line 1620
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1622
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->recordDecisionData()V

    .line 1623
    return-void
.end method

.method public declared-synchronized onProcessAdd(IILjava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "lpid"    # I
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "replyTo"    # Landroid/os/Messenger;

    monitor-enter p0

    .line 1071
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1073
    .local v0, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l:Ljava/util/Set;

    iget-object v2, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1075
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STARTING_APPID remove liteProcess.appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->l:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1078
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STARTING_APPID remove appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    :cond_1
    nop

    .line 1083
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1080
    :catchall_0
    move-exception v1

    .line 1081
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_2

    .line 1084
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessServerManager onProcessAdd liteProcess = null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1085
    monitor-exit p0

    return-void

    .line 1087
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_2
    const/4 v2, 0x2

    :try_start_3
    iput v2, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    .line 1088
    iput p1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    .line 1089
    iput-object p4, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->a:Ljava/lang/String;

    .line 1090
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/liteprocess/LiteProcess;->setReplyTo(Landroid/os/Messenger;)V

    .line 1091
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eq v2, v0, :cond_3

    iget-object v2, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1092
    iput-object p3, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 1094
    :cond_3
    if-eqz p2, :cond_4

    .line 1095
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1096
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1098
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessServerManager onProcessAdd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->isScanAppForeground()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1100
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->notifyScanAppEvent(Z)V

    .line 1102
    :cond_5
    sget-boolean v2, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->a:Z

    if-eqz v2, :cond_6

    .line 1103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1104
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v2

    const/16 v3, 0xd

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1105
    const-string v2, "LiteProcess"

    invoke-static {p5, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 1108
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1109
    :try_start_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1110
    invoke-interface {v3, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;->onProcessAdd(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1111
    goto :goto_2

    .line 1112
    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1070
    .end local v0    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "pid":I
    .end local p2    # "lpid":I
    .end local p3    # "appId":Ljava/lang/String;
    .end local p4    # "clientId":Ljava/lang/String;
    .end local p5    # "replyTo":Landroid/os/Messenger;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onProcessRemove(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "lpid"    # I

    monitor-enter p0

    .line 1116
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    if-ne v0, p1, :cond_0

    .line 1117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager readyProcess onProcessRemove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1119
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 1122
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    .line 1123
    .local v0, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessServerManager onProcessRemove "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    if-ne v1, p1, :cond_2

    .line 1125
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1127
    invoke-interface {v3, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;->onProcessRemove(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1128
    goto :goto_0

    .line 1129
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "onProcessRemove and reset"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->a()V

    .line 1133
    if-eqz p2, :cond_2

    .line 1134
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1135
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1129
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1139
    :cond_2
    :goto_1
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-nez v1, :cond_3

    .line 1141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1143
    :cond_3
    monitor-exit p0

    return-void

    .line 1115
    .end local v0    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local p1    # "pid":I
    .end local p2    # "lpid":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStartAppEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1591
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->onAppStartEvent(Ljava/lang/String;)V

    .line 1594
    :cond_0
    return-void
.end method

.method public onTinyAppStarted(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V
    .locals 23
    .param p1, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p2, "isPreload"    # Z

    .line 1601
    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 1602
    return-void

    .line 1605
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h(Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1607
    iget-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    iget v2, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->u:I

    iget v3, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->v:I

    iget-object v4, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 1608
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->getAiAssistantState()Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lite"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z

    .line 1610
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v9

    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b()J

    move-result-wide v11

    .line 1611
    invoke-static {}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a()J

    move-result-wide v13

    move-object/from16 v21, v1

    move/from16 v22, v2

    iget-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->s:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->t:J

    move-wide/from16 v17, v1

    .line 1612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1607
    move/from16 v7, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static/range {v1 .. v20}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;->onTinyAppStart(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJJJJJ)V

    .line 1613
    return-void
.end method

.method public registerCallServerBean()V
    .locals 3

    .line 1355
    const-class v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;->registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "registerCallServerBean"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public registerProcessLifeCycleCallback(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1576
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v0

    .line 1577
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized startActivityFromLiteProcessIfNeeded(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1306
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->b()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1307
    .local v2, "baseActivity":Landroid/content/ComponentName;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1311
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1312
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivityFromLiteProcessIfNeeded cannot start "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    monitor-exit p0

    return v3

    .line 1316
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/liteprocess/Const;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1317
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1318
    .local v1, "launchContext":Landroid/content/Context;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 1319
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .line 1320
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1322
    :cond_2
    invoke-virtual {v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1323
    monitor-exit p0

    return v4

    .line 1325
    .end local v1    # "launchContext":Landroid/content/Context;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "baseActivityClassName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "LiteProcess"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startActivityFromLiteProcessIfNeeded baseActivityClassName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v5

    .line 1328
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1329
    invoke-direct {p0, v1, p1, p2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1330
    monitor-exit p0

    return v4

    .line 1332
    :cond_4
    monitor-exit p0

    return v3

    .line 1308
    .end local v0    # "baseActivityClassName":Ljava/lang/String;
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_5
    :goto_0
    monitor-exit p0

    return v3

    .line 1305
    .end local v2    # "baseActivity":Landroid/content/ComponentName;
    .end local p1    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local p2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startAppAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 207
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startAppAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 206
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "startParams":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startAppAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 212
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager startAppAsync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 211
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "startParams":Landroid/os/Bundle;
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startAppInLiteStep3(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "sceneParams"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 363
    .local v2, "msg":Landroid/os/Message;
    move-object v2, v0

    const/16 v3, 0x15

    iput v3, v0, Landroid/os/Message;->what:I

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v1

    .line 365
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    const-string v4, "START_APP_IN_LITE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 366
    const-string v0, "TARGETAPPID_IN_LITE"

    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "targetId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "appType":Ljava/lang/String;
    const-string v5, "APP_TYPE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v5, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 371
    const-string v5, "PID"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 372
    .local v6, "pid":I
    move v6, v5

    if-nez v5, :cond_0

    .line 373
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "LiteProcess.SAIL"

    const-string/jumbo v7, "startAppInLiteStep3@Main but pid is 0 and return"

    invoke-interface {v1, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 376
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v5

    .line 377
    .local v1, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v1, v5

    if-nez v5, :cond_1

    .line 378
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "LiteProcess.SAIL"

    const-string/jumbo v8, "startAppInLiteStep3@Main but liteProcess is null and return"

    invoke-interface {v5, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 381
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v5

    const-string v7, "LiteProcess"

    invoke-static {v5, v7, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "LiteProcess.SAIL"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startAppInLiteStep3@Main finish "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 361
    .end local v0    # "targetId":Ljava/lang/String;
    .end local v1    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "appType":Ljava/lang/String;
    .end local v6    # "pid":I
    .end local p1    # "params":Landroid/os/Bundle;
    .end local p2    # "sceneParams":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLiteProcess(Z)V
    .locals 1
    .param p1, "needStartService"    # Z

    .line 804
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(ZLjava/lang/String;)V

    .line 805
    return-void
.end method

.method public declared-synchronized startLiteProcessAsync(I)V
    .locals 9
    .param p1, "delaySeconds"    # I

    monitor-enter p0

    .line 669
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 670
    monitor-exit p0

    return-void

    .line 678
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->i:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->c:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 679
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p1, :cond_f

    .line 680
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreload()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 688
    :cond_2
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->f:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager startLiteProcessAsync cancel1  mainAtBackground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAllLiteProcessHide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 695
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 697
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 698
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcess(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    .line 702
    :cond_4
    :try_start_3
    const-string v0, "default"

    .line 703
    .local v0, "preloadFrom":Ljava/lang/String;
    if-nez p1, :cond_5

    .line 704
    const-string/jumbo v3, "nebula"

    move-object v0, v3

    goto :goto_0

    .line 705
    :cond_5
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    .line 706
    const-string/jumbo v3, "saoyisao"

    move-object v0, v3

    goto :goto_0

    .line 707
    :cond_6
    const/4 v3, -0x2

    if-ne p1, v3, :cond_7

    .line 708
    const-string v3, "bike"

    move-object v0, v3

    goto :goto_0

    .line 709
    :cond_7
    const/4 v3, -0x3

    if-ne p1, v3, :cond_8

    .line 710
    const-string/jumbo v3, "tinyapp"

    move-object v0, v3

    goto :goto_0

    .line 711
    :cond_8
    const/4 v3, -0x4

    if-ne p1, v3, :cond_9

    .line 712
    const-string/jumbo v3, "search"

    move-object v0, v3

    goto :goto_0

    .line 713
    :cond_9
    const/4 v3, -0x5

    if-ne p1, v3, :cond_a

    .line 714
    const-string/jumbo v3, "scan"

    move-object v0, v3

    goto :goto_0

    .line 715
    :cond_a
    const/4 v3, -0x6

    if-ne p1, v3, :cond_b

    .line 716
    const-string/jumbo v3, "scheme"

    move-object v0, v3

    goto :goto_0

    .line 717
    :cond_b
    const/4 v3, -0x7

    if-ne p1, v3, :cond_c

    .line 718
    const-string v3, "favorite"

    move-object v0, v3

    goto :goto_0

    .line 719
    :cond_c
    if-gtz p1, :cond_d

    .line 720
    const-string/jumbo v3, "other"

    move-object v0, v3

    .line 723
    :cond_d
    :goto_0
    if-gez p1, :cond_e

    .line 724
    const/4 p1, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->cancelPreloadTaskIfExist()V

    .line 728
    :cond_e
    move-object v3, v0

    .line 729
    .local v3, "preload":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LiteProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LiteProcessServerManager startLiteProcessAsync delaySeconds "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    sget-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 731
    move v2, p1

    .line 733
    .local v2, "preloadDelay":I
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v4

    .line 734
    .local v4, "scheduledThreadPoolExecutor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->start()V

    .line 735
    new-instance v5, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;

    invoke-direct {v5, p0, v2, v3}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;ILjava/lang/String;)V

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    .line 772
    sput-object v5, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 774
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->end()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 775
    monitor-exit p0

    return-void

    .line 681
    .end local v0    # "preloadFrom":Ljava/lang/String;
    .end local v1    # "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .end local v2    # "preloadDelay":I
    .end local v3    # "preload":Ljava/lang/String;
    .end local v4    # "scheduledThreadPoolExecutor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_f
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiteProcessServerManager startLiteProcessAsync return  needPreloadLocal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " NEED_PRELOAD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/Config;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " IS_START_PROCESS_ASYNC_ING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 684
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 685
    monitor-exit p0

    return-void

    .line 668
    .end local p1    # "delaySeconds":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unRegisterProcessLifeCycleCallback(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$ProcessLifeCycleCallback;

    .line 1582
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h:Ljava/util/Set;

    monitor-enter v0

    .line 1583
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1584
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
