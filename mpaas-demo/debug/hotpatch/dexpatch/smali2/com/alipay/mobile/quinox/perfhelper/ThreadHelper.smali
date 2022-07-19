.class public final Lcom/alipay/mobile/quinox/perfhelper/ThreadHelper;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjustThreadParams()V
    .locals 8

    const-string v0, "ThreadHelper"

    .line 32
    const/4 v1, 0x1

    const-wide/16 v2, 0x1e

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    instance-of v5, v5, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v5, :cond_0

    .line 33
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    move-object v5, v4

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v5

    .line 37
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "adjust the executor\'s params of AsyncTask failed."

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string v6, "com.googlecode.androidannotations.api.BackgroundExecutor"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 43
    .local v5, "backGroundExecutor":Ljava/lang/Class;
    const-string v7, "DEFAULT_EXECUTOR"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    .local v4, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    move-object v4, v6

    new-instance v7, Lcom/alipay/mobile/quinox/perfhelper/ThreadHelper$1;

    invoke-direct {v7}, Lcom/alipay/mobile/quinox/perfhelper/ThreadHelper$1;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 59
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 60
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .end local v4    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v5    # "backGroundExecutor":Ljava/lang/Class;
    return-void

    .line 61
    :catchall_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "adjust params of AsyncTaskExecutor failed."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
