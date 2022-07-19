.class public Lcom/alipay/mobile/framework/LauncherApplicationAgent;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;,
        Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;,
        Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;
    }
.end annotation


# static fields
.field public static NEED_PRELOAD:Z

.field public static NEED_SYNC:Z

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/CountDownLatch;

.field private static d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

.field private static e:Ljava/util/concurrent/CountDownLatch;

.field private static g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

.field private static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final i:Ljava/lang/Object;


# instance fields
.field private f:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

.field protected mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

.field protected mContext:Landroid/app/Application;

.field protected mLazyBundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-string v0, "lazy_bundle"

    const-string/jumbo v1, "s.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "s_plain.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->b:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z

    .line 67
    sput-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_PRELOAD:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Ljava/util/concurrent/CountDownLatch;

    .line 99
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->e:Ljava/util/concurrent/CountDownLatch;

    .line 516
    new-instance v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;-><init>(Lcom/alipay/mobile/framework/LauncherApplicationAgent$1;)V

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    .line 517
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "bundleContext"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "new LauncherApplicationAgent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundleContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    .line 117
    new-instance v0, Lcom/alipay/mobile/framework/BundleContext;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/framework/BundleContext;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    .line 120
    :try_start_0
    const-string v0, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 129
    sput-object p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sInstance="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z

    goto :goto_0

    .line 136
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 137
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "NEED_SYNC"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v4, v2

    .line 138
    .local v4, "field":Ljava/lang/reflect/Field;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "get NEED_SYNC error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NEED_SYNC: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mytest"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadActivityLaunch()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_PRELOAD:Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "NEED_PRELOAD: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_PRELOAD:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 151
    const-string/jumbo v0, "sInitCountDownLatch2.countDown()"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to instantiate MicroApplicationContextImpl"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LauncherApplicationAgent must be single instance mode : sInstance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sInstance.getClass().getClassLoader()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", LauncherApplicationAgent.class.getClassLoader()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addWaitInitObserver(Ljava/util/Observer;)V
    .locals 1
    .param p0, "observer"    # Ljava/util/Observer;

    .line 573
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;->addObserver(Ljava/util/Observer;)V

    .line 574
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    .locals 6

    .line 520
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->init()V

    .line 524
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    return-object v0

    .line 528
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 529
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherApplication.Init"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v3, v2

    .line 530
    .local v3, "needWait":Z
    move v3, v0

    if-eqz v0, :cond_6

    .line 531
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    sget-object v4, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-eqz v4, :cond_5

    .line 533
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LauncherApplication.Init"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 534
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 537
    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 539
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;->setChanged()V

    .line 540
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 542
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 543
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;->setChanged()V

    .line 546
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->g:Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$WaitInitObservable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 549
    goto :goto_5

    .line 547
    :catchall_1
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-nez v0, :cond_7

    .line 552
    const-string v0, "LaunchApplicationAgent"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LauncherApplicationAgent.getInstance() return null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    :cond_7
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    return-object v0
.end method

.method public static getmBundleContext()Lcom/alipay/mobile/framework/BundleContext;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    const-string/jumbo v0, "sInitCountDownLatch2.await() end. sInstance="

    const-string v1, "LaunchApplicationAgent"

    :try_start_0
    const-string/jumbo v2, "sInitCountDownLatch2.await() start."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    .end local v2    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    nop

    .line 300
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    iget-object v0, v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    return-object v0

    .line 297
    :catchall_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static isInited()Z
    .locals 6

    .line 561
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 562
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherApplication.Init"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v3, v2

    .line 563
    .local v3, "needWait":Z
    move v3, v0

    if-eqz v0, :cond_4

    .line 564
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    sget-object v4, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-eqz v4, :cond_3

    .line 566
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LauncherApplication.Init"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 567
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    :cond_4
    :goto_4
    if-nez v3, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public static readLazyBundles(Ljava/io/BufferedInputStream;)Ljava/util/Map;
    .locals 7
    .param p0, "bufferedInputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "lazyBundles":Ljava/util/Map;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x0

    .line 456
    .local v2, "size":I
    move v2, v1

    if-lez v1, :cond_2

    .line 457
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-ge v1, v2, :cond_2

    .line 464
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v3, "bundleName":Ljava/lang/String;
    move-object v3, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v4, "microContentArray":[Ljava/lang/String;
    move-object v4, v5

    if-eqz v5, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 468
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .local v5, "set":Ljava/util/Set;
    goto :goto_1

    .line 471
    .end local v5    # "set":Ljava/util/Set;
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 472
    .restart local v5    # "set":Ljava/util/Set;
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v4    # "microContentArray":[Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "i":I
    .end local v3    # "bundleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "LaunchApplicationAgent"

    const-string/jumbo v4, "readLazyBundles(BufferedInputStream) error."

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    const/4 v0, 0x0

    nop

    .line 483
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    return-object v0
.end method

.method public static writeLazyBundles(Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    .locals 4
    .param p0, "lazyBundles"    # Ljava/util/Map;
    .param p1, "bufferedOutputStream"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .line 438
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 442
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 443
    .local v1, "entity":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 444
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 445
    .local v2, "microContents":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 446
    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 447
    .end local v1    # "entity":Ljava/util/Map$Entry;
    goto :goto_0

    .line 449
    .end local v2    # "microContents":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 451
    :cond_1
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBundleContext()Lcom/alipay/mobile/framework/BundleContext;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getLazyBundles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final init()V
    .locals 4

    .line 230
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string/jumbo v1, "t_agentinit"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "time_startup_sub"

    const-string/jumbo v1, "t_loadPackageProperties"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "LaunchApplicationAgent"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "t_maac1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    iget-object v3, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->f:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V

    .line 239
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v1

    const-string/jumbo v2, "t_agentinitover"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 240
    const-string v1, "framework_init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 242
    return-void
.end method

.method public final loadServices()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->initSerivces()V

    .line 262
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default: LauncherApplicationAgent.onConfigurationChanged() locale = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->systemLocale:Ljava/util/Locale;

    .line 505
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 499
    const-string v0, "LaunchApplicationAgent"

    const-string v1, "Default: LauncherApplicationAgent.onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 495
    const-string v0, "LaunchApplicationAgent"

    const-string v1, "Default: LauncherApplicationAgent.onTerminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method parseBundles(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "lazyBundles":Ljava/util/Map;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 408
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 409
    .local v3, "bundles":[Ljava/lang/String;
    move-object v3, v1

    array-length v1, v1

    if-lez v1, :cond_3

    .line 410
    new-instance v1, Ljava/util/HashMap;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 413
    array-length v1, v3

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_3

    aget-object v8, v3, v7

    .line 414
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v2, "strArray":[Ljava/lang/String;
    move-object v2, v8

    array-length v8, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    aget-object v8, v2, v4

    .line 416
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    aget-object v9, v2, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 417
    aget-object v8, v2, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v5, "microContents":[Ljava/lang/String;
    move-object v5, v8

    array-length v8, v8

    if-lez v8, :cond_2

    .line 419
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 420
    .local v8, "set":Ljava/util/Set;
    array-length v9, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v5, v10

    .line 421
    .local v6, "content":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 422
    move-object v6, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 423
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v6    # "content":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 426
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 427
    aget-object v9, v2, v4

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .end local v5    # "microContents":[Ljava/lang/String;
    .end local v8    # "set":Ljava/util/Set;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v3    # "bundles":[Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public postInit()V
    .locals 2

    .line 491
    const-string v0, "LaunchApplicationAgent"

    const-string v1, "Default: LauncherApplicationAgent.postInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public final postLoad()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->postInit()V

    .line 253
    return-void
.end method

.method public preInit()V
    .locals 2

    .line 487
    const-string v0, "LaunchApplicationAgent"

    const-string v1, "Default: LauncherApplicationAgent.preInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public preload()V
    .locals 2

    .line 213
    const-string v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "preload()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->preload(Landroid/app/Application;)V

    .line 218
    return-void
.end method

.method public recover()V
    .locals 2

    .line 318
    const-string v0, "LaunchApplicationAgent"

    const-string v1, "Default: LauncherApplicationAgent.recover()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public final restoreState()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->restoreState()V

    .line 269
    const-string v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "startup : finish restoreState()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected final setExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    .locals 2
    .param p1, "agent"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setExceptionHandlerAgent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->f:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 207
    return-void
.end method
