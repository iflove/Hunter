.class public Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;
.super Ljava/lang/Object;
.source "LiteProcessClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;
    }
.end annotation


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;

.field private static c:Z

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Z

.field private static h:Landroid/os/Handler;

.field public static hasStartApp:Z

.field private static i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->hasStartApp:Z

    .line 67
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c:Z

    .line 69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d:Ljava/util/Set;

    .line 71
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    .line 73
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->f:Z

    .line 75
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->g:Z

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->i:Ljava/util/Set;

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LiteProcessClientManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 100
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()V
    .locals 5

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 109
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessClientManager must be in lite process or nebula process.  current: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 114
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit v0

    return-void

    .line 118
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_2
    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->f:Z

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "LiteProcessClientManager prepare"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->b:Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;

    if-nez v2, :cond_3

    .line 126
    new-instance v2, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->b:Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$LiteProcessClientHandler;

    .line 127
    const-string v3, "LiteProcess"

    invoke-static {v3, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 129
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->registerBiz()V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->ACTIVITY_CLASSES:[Ljava/lang/Class;

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v4

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v2, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    sget-object v3, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v4

    sub-int/2addr v4, v1

    aget-object v1, v3, v4

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->prepare()V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->prepare()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v6, p0

    const-class v7, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v7

    .line 291
    :try_start_0
    const-string/jumbo v0, "main"

    const-string v1, "LiteProcessClientManager.startApp()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 296
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 297
    const-string/jumbo v3, "mytest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geth5service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string v3, "com.alipay.tinybootloader.TinyBootloadService"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string v3, "com.alipay.tiny.api.TinyService"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    :try_start_2
    const-string/jumbo v3, "mytest"

    const-string/jumbo v4, "register engine step error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v6, :cond_5

    .line 312
    const-string v0, "SOURCEAPPID"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    const-string v0, "TARGETAPPID"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    const-string v0, "LITE_PROCESS_PARAMS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 315
    const-string v0, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 316
    if-eqz v10, :cond_3

    .line 318
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 319
    const-string v0, "CrossProcessByPreService"

    const-wide/16 v11, -0x1

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 320
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_CrossProcessByPreService:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_CrossProcessByPreService:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    :cond_0
    const-string v0, "CrossProcessByActivity"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 324
    cmp-long v0, v11, v15

    if-lez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_CrossProcessByActivity:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_CrossProcessByActivity:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 327
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_StartApp:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_TINY_LITE_StartApp:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 330
    :cond_2
    const-string v0, "LITE_PROCESS_LOGGING_INFO"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setCurrentLoggingInfo(Landroid/os/Parcelable;)V

    .line 332
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setCurrentLoggingInfo:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    goto :goto_1

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->hasStartApp:Z

    if-nez v0, :cond_4

    .line 339
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SOURCEAPPID"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TARGETAPPID"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LITE_PROCESS_PARAMS"

    invoke-static {v9}, Lcom/alipay/mobile/liteprocess/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LITE_PROCESS_SCENE_PARAMS"

    invoke-static {v10}, Lcom/alipay/mobile/liteprocess/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "LiteProcessClientManager sp put TARGETAPPID "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_4
    const-string v0, "FORCE_START"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move-object v2, v5

    move-object v5, v10

    goto :goto_2

    .line 348
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    const-string v1, "SOURCEAPPID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    const-string v2, "TARGETAPPID"

    const-string v5, ""

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    const-string v5, "LITE_PROCESS_PARAMS"

    const-string v8, ""

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/liteprocess/Util;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 352
    const-string v5, "LITE_PROCESS_SCENE_PARAMS"

    const-string v8, ""

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 353
    const-string v5, "LITE_PROCESS_ID"

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v8

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    move-object v5, v0

    move-object v8, v2

    const/4 v0, 0x1

    move-object v2, v1

    .line 356
    :goto_2
    if-nez v9, :cond_6

    .line 357
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 358
    const-string v1, "appId"

    invoke-virtual {v9, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "APP_TYPE"

    const-string v10, "APP_TYPE"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "REALLY_STARTAPP"

    const-string v10, "REALLY_STARTAPP"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    const-string/jumbo v1, "nebulaStartflag"

    const-string/jumbo v10, "nebulaStartflag"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "REALLY_DOSTARTAPP"

    const-string v10, "REALLY_DOSTARTAPP"

    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_6
    sput-boolean v4, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->hasStartApp:Z

    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v10, "LiteProcess"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "LiteProcessClientManager begin startApp sourceAppId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " targetAppId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " params = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " intent = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 370
    invoke-virtual {v1, v8}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 371
    const-string v10, "APP_TYPE"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 372
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v10

    new-array v4, v4, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v1, v4, v3

    .line 373
    invoke-interface {v10, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 375
    if-eqz v0, :cond_7

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v3, "forceStart and finish first."

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, v2, v8, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 380
    :cond_7
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 383
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 387
    move-object v4, v0

    goto :goto_3

    .line 384
    :catchall_2
    move-exception v0

    .line 385
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LiteProcess"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 388
    :goto_3
    nop

    .line 389
    nop

    .line 390
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;

    move-object v1, v0

    move-object v3, v8

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Intent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 400
    monitor-exit v7

    return-void

    .line 290
    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic a(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Message;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d(Landroid/os/Message;)V

    return-void
.end method

.method static declared-synchronized a(Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;)V
    .locals 2
    .param p0, "liteClient"    # Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 566
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->i:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit v0

    return-void

    .line 565
    .end local p0    # "liteClient":Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Ljava/lang/Class;)V
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 556
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    return-void
.end method

.method static a(Ljava/lang/Class;I)V
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "lpid"    # I

    .line 560
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 561
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    return-void
.end method

.method static b()V
    .locals 4

    .line 588
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager stopSelfByServer, print stack trace, not exception:"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$4;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method static synthetic b(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Message;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c(Landroid/os/Message;)V

    return-void
.end method

.method static declared-synchronized c()V
    .locals 4

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 604
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager destoryClient before"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;

    .line 606
    invoke-interface {v2}, Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;->onClientDestory()V

    .line 607
    goto :goto_0

    .line 608
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager destoryClient"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit v0

    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 282
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$1;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method static synthetic c(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method private static c(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 237
    iget v0, p0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->onScanAppMonitorAction(Z)V

    .line 238
    return-void
.end method

.method public static clientRemoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
    .locals 1
    .param p0, "args"    # Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    .line 90
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->j:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;->remoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static d()V
    .locals 3

    .line 612
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessClientManager markNotPreloadNebulaX"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c:Z

    .line 614
    return-void
.end method

.method private static d(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "extra"    # Landroid/os/Bundle;

    const-string v0, "changed_configs"

    const-string v1, "data_overflow"

    const-string v2, "LiteProcess"

    .line 242
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "onConfigChanged enter"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v4, 0x0

    move-object v5, v4

    .line 244
    .local v5, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 245
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v4, "configs":Ljava/util/HashMap;
    move-object v4, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/base/config/ConfigService;->saveConfigs(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v4    # "configs":Ljava/util/HashMap;
    .end local v5    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    :cond_0
    return-void

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "onConfigChanged error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private static d(Landroid/os/Message;)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 270
    if-nez p0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSrvShow delay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v0, p0, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/Util;->a(J)V

    .line 275
    return-void
.end method

.method static e()V
    .locals 9

    const-string/jumbo v0, "mytest"

    .line 622
    :try_start_0
    const-string/jumbo v1, "preload step 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string v2, "com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 624
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getAppById"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 625
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "1"

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 626
    .local v1, "app":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preload step 2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget-boolean v4, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c:Z

    if-eqz v4, :cond_0

    .line 630
    const-string/jumbo v4, "preload step nebulax start"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 632
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const-string v5, "com.alipay.mobile.nebulax.integration.api.NebulaService"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    move-object v4, v2

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v4

    .line 634
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "preload step nebulax error"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string/jumbo v5, "preload step nebulax end"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 629
    :cond_0
    move-object v4, v2

    .line 640
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 641
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5Service;->preLoadInTinyProcess()V

    .line 643
    sget-boolean v5, Lcom/alipay/mobile/liteprocess/Config;->k:Z

    if-eqz v5, :cond_1

    .line 645
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    const-string v6, "com.alipay.tinybootloader.TinyBootloadService"

    invoke-interface {v5, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    const-string v6, "com.alipay.tiny.api.TinyService"

    invoke-interface {v5, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 647
    .local v2, "tinyService":Ljava/lang/Object;
    move-object v2, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "preload"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 648
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .end local v2    # "tinyService":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "preload step 3"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    nop

    .end local v1    # "app":Ljava/lang/Object;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    return-void

    .line 651
    :catchall_1
    move-exception v1

    .line 652
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "preload error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static declared-synchronized e(Landroid/os/Bundle;)V
    .locals 11
    .param p0, "params"    # Landroid/os/Bundle;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 450
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 451
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v1

    const-string v4, "START_APP_IN_CURRENT_PROCESS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 452
    const-string v1, "START_APP_IN_LITE"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 454
    const-string v1, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 455
    .local v1, "sceneParams":Landroid/os/Bundle;
    const-string v4, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 457
    const-string v4, "SOURCEAPPID_IN_LITE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "sourceAppId":Ljava/lang/String;
    const-string v4, "TARGETAPPID_IN_LITE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 460
    .local v10, "targetAppId":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FROM_BASE_ACTIVITY_IN_LITE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    const-string v4, "FROM_BASE_ACTIVITY_IN_LITE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    .line 465
    :cond_0
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 466
    .local v2, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v4

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 467
    const-string v4, "APP_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 468
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 469
    invoke-interface {v4, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 471
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const/4 v9, 0x0

    move-object v6, v10

    move-object v7, v3

    move-object v8, v1

    invoke-interface/range {v4 .. v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 472
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v6, "LiteProcess.SAIL"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startAppInLiteStep4@"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " finish fromBaseActivity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " startParams:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " sceneParams:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit v0

    return-void

    .line 449
    .end local v1    # "sceneParams":Landroid/os/Bundle;
    .end local v2    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "sourceAppId":Ljava/lang/String;
    .end local v10    # "targetAppId":Ljava/lang/String;
    .end local p0    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic f()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->l()V

    return-void
.end method

.method private static f(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 477
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    move-object v2, v1

    .line 478
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v2, v0

    .line 482
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v3, v1

    .line 483
    .local v3, "componentName":Landroid/content/ComponentName;
    move-object v3, v0

    const-string v4, "LiteProcess"

    if-nez v0, :cond_1

    .line 484
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcessClientManager startActivity but component null!"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void

    .line 488
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LiteProcessClientManager startActivity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 490
    .local v1, "launchContext":Landroid/content/Context;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 491
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 492
    .end local v1    # "launchContext":Landroid/content/Context;
    .local v0, "launchContext":Landroid/content/Context;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "LiteProcessClientManager startActivity use AppContext."

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 496
    .end local v0    # "launchContext":Landroid/content/Context;
    .restart local v1    # "launchContext":Landroid/content/Context;
    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 497
    .local v0, "launchActivity":Landroid/app/Activity;
    const/4 v5, 0x1

    .line 498
    .local v5, "useStartActivityForResult":Z
    sget-object v6, Lcom/alipay/mobile/liteprocess/Config;->D:Ljava/util/Set;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/alipay/mobile/liteprocess/Config;->D:Ljava/util/Set;

    .line 499
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/alipay/mobile/liteprocess/Config;->D:Ljava/util/Set;

    .line 500
    const-string v7, "all"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 501
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "LiteProcessClientManager startActivity match LITE_STARTACTIVITY4RESULT_BLACKLIST"

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v5, 0x0

    .line 504
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LiteProcessClientManager startActivity useStartActivityForResult: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-eqz v5, :cond_5

    .line 506
    const/16 v4, 0x400

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 508
    :cond_5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 511
    .end local v0    # "launchActivity":Landroid/app/Activity;
    .end local v5    # "useStartActivityForResult":Z
    return-void
.end method

.method static synthetic g()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->k()V

    return-void
.end method

.method public static getAsyncHandler()Landroid/os/Handler;
    .locals 1

    .line 278
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static getBaseClassNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    return-object v0
.end method

.method public static getHookBackKeyBlackList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->j()V

    return-void
.end method

.method static synthetic i()Ljava/util/Set;
    .locals 1

    .line 61
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e:Ljava/util/Set;

    return-object v0
.end method

.method public static isSrvReady()Z
    .locals 1

    .line 519
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->g:Z

    return v0
.end method

.method private static j()V
    .locals 3

    .line 229
    const-string v0, "LiteProcess"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "onPauseProfile, calling ArtHook.replaceProcessProfilingInfo"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/alipay/arthook/ArtHook;->replaceProcessProfilingInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v1

    .line 232
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static k()V
    .locals 3

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string/jumbo v2, "reInitUc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "uc_init_success_in_main"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 259
    return-void
.end method

.method private static l()V
    .locals 4

    .line 262
    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 263
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->g:Z

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "onSrvReady notifyAll"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static m()V
    .locals 6

    .line 523
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->a:Z

    if-nez v0, :cond_1

    .line 524
    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;

    monitor-enter v0

    .line 525
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 527
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager begin wait pipeline"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-class v1, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 529
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager end wait pipeline"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessClientManager wait pipeline error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 536
    :cond_1
    return-void
.end method

.method private static n()V
    .locals 6

    .line 539
    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->g:Z

    if-nez v1, :cond_1

    .line 540
    monitor-enter v0

    .line 541
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 543
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessClientManager begin wait srv with stack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Just Print"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 545
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "LiteProcessClientManager end wait srv"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiteProcessClientManager wait srv error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 552
    :cond_1
    return-void
.end method

.method public static onLiteProcessPreloadComplete()V
    .locals 3

    .line 657
    const/4 v0, 0x0

    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 658
    move-object v0, v1

    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 659
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 660
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 661
    const-string v1, "LiteProcess"

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 662
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreloadCompleted()V

    .line 663
    invoke-static {}, Lcom/alipay/mobile/liteprocess/TinyAppClassPreloader;->preloadClasses()V

    .line 664
    return-void
.end method

.method public static recordAppStart(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 403
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->init(Ljava/lang/String;)V

    .line 404
    const-string v0, "is_preload"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreload(Z)V

    .line 405
    const-string v0, "is_local"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setLocal(Z)V

    .line 406
    const-string/jumbo v0, "perf_prepare_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPrepareTime(J)V

    .line 407
    const-string/jumbo v0, "perf_open_app_time"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setOpenAppTime(J)V

    .line 408
    const-string v0, "chInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    .line 409
    const-string v2, "PRELOAD_FROM"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setPreloadFrom(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 412
    const-string/jumbo v0, "qrCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "ch_scan"

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_0
    const-string v0, "customParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "chInfo=app_desktop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "app_desktop"

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    const-string v0, "ap_framework_sceneId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneId_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setChInfo(Ljava/lang/String;)V

    .line 421
    :cond_2
    :goto_0
    const-string/jumbo v0, "perf_foreground_start_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setForegroundStartTime(J)V

    .line 422
    const-string/jumbo v0, "perf_rpc_time"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setRpcTime(J)V

    .line 423
    const-string/jumbo v0, "time_from_launch"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setTimeFromLaunch(J)V

    .line 424
    const-string/jumbo v0, "perf_preload_wait"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setIsPreloadWait(Z)V

    .line 425
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->recordAppStart(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public static setClientRemoteCallHandler(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;)V
    .locals 0
    .param p0, "remoteCaller"    # Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;

    .line 86
    sput-object p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->j:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;

    .line 87
    return-void
.end method

.method public static declared-synchronized startAppInLiteStep1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "sourceAppId"    # Ljava/lang/String;
    .param p1, "targetAppId"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "sceneParams"    # Landroid/os/Bundle;

    const-class v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;

    monitor-enter v0

    .line 430
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 431
    .local v3, "msg":Landroid/os/Message;
    move-object v3, v1

    const/16 v4, 0x15

    iput v4, v1, Landroid/os/Message;->what:I

    .line 432
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 433
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v1

    const-string v4, "START_APP_IN_CURRENT_PROCESS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 434
    const-string v1, "START_APP_IN_LITE"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v1, "LPID"

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v1, "SOURCEAPPID_IN_LITE"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "TARGETAPPID_IN_LITE"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "LITE_PROCESS_SCENE_PARAMS"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    sget-object v1, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    const-string v1, "FROM_BASE_ACTIVITY_IN_LITE"

    sget-object v4, Lcom/alipay/mobile/liteprocess/LiteProcessActivity;->fromBaseActivity:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 445
    const-string v1, "LiteProcess"

    invoke-static {v1, v3}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 446
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "LiteProcess.SAIL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAppInLiteStep1@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " finish "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit v0

    return-void

    .line 429
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local p0    # "sourceAppId":Ljava/lang/String;
    .end local p1    # "targetAppId":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "sceneParams":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopSelfByClient()V
    .locals 4

    .line 574
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "LiteProcessClientManager stopSelfByClient"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$3;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$3;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    return-void
.end method

.method public static waitIfNeeded()V
    .locals 0

    .line 514
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->m()V

    .line 515
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->n()V

    .line 516
    return-void
.end method
