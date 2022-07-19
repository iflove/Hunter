.class Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;
.super Ljava/lang/Object;
.source "SharedPrefLagFix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpWriteToDiskRunnableProxy"
.end annotation


# static fields
.field static volatile mMemoryCommitResultField:Ljava/lang/reflect/Field;

.field static volatile reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static sCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field static sRealExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field static volatile setDiskWriteResultMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mOriginRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->sCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 18
    .param p1, "mOriginRunnable"    # Ljava/lang/Runnable;

    .line 241
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mOriginRunnable:Ljava/lang/Runnable;

    .line 249
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_2

    .line 251
    const-class v3, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;

    monitor-enter v3

    .line 252
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 254
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v0, v7

    .line 255
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object v6, v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 256
    .local v8, "fieldType":Ljava/lang/Class;
    const-string v9, "SharedPrefLagFix"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "fieldName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.app.SharedPreferencesImpl$MemoryCommitResult"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 259
    sput-object v6, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mMemoryCommitResultField:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mMemoryCommitResultField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 263
    const-string v0, "setDiskWriteResult"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v4

    invoke-virtual {v8, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    sput-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->setDiskWriteResultMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 265
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    # getter for: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$200()I

    move-result v11

    const-wide/16 v12, 0x5

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v15}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$1;

    invoke-direct {v7, v1}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$1;-><init>(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;)V

    new-instance v9, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$2;

    invoke-direct {v9, v1}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$2;-><init>(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;)V

    move-object/from16 v17, v9

    move-object v9, v0

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 284
    sput-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->sRealExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 285
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    goto :goto_1

    .line 254
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldType":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 292
    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 295
    :cond_2
    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mOriginRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static notifyCountDownLatch(Ljava/lang/Runnable;Z)Z
    .locals 8
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "success"    # Z

    .line 346
    const-string v0, "reflect failed."

    const-string v1, "SharedPrefLagFix"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mMemoryCommitResultField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 347
    .local v3, "mcr":Ljava/lang/Object;
    sget-object v4, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->setDiskWriteResultMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "notifyCountDownLatch:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    return v5

    .line 353
    .end local v3    # "mcr":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 354
    .local v3, "e":Ljava/lang/Throwable;
    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    return v2

    .line 350
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/lang/IllegalAccessException;
    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    return v2
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 301
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->reflectResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SharedPrefLagFix"

    if-nez v0, :cond_0

    .line 303
    const-string v0, "reflect result is false, fallback"

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mOriginRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 305
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->sCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 309
    # getter for: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$200()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mOriginRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 313
    return-void

    .line 317
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->sRealExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy$3;-><init>(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 325
    sget-object v2, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->sCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 329
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 330
    # getter for: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$400()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "write cost:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    const-string v0, "wait time out, notify directly"

    # invokes: Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->mOriginRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;->notifyCountDownLatch(Ljava/lang/Runnable;Z)Z

    .line 342
    return-void

    .line 335
    :catch_1
    move-exception v0

    .line 341
    :goto_0
    return-void

    .line 333
    :catch_2
    move-exception v0

    goto :goto_0
.end method
