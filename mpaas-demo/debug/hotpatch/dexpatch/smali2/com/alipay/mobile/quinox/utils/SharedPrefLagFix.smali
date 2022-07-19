.class public Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;
.super Ljava/lang/Object;
.source "SharedPrefLagFix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpThreadPoolProxy;,
        Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpWriteToDiskRunnableProxy;,
        Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_SINGLE_TASK_TIME_OUT:J = 0xc8L

.field private static final DEFAULT_TASK_WAIT_TIME:I = 0x4

.field private static final MAX_ALLOW_FAIL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SharedPrefLagFix"

.field private static sAllowFailCount:I

.field private static sExecutorProxy:Ljava/util/concurrent/ExecutorService;

.field private static sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

.field private static sTaskTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I

    .line 43
    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 29
    sget v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I

    return v0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J

    return-wide v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 29
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fixLag(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 54
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.QueuedWork"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .local v1, "queueWorkClass":Ljava/lang/Class;
    nop

    .line 69
    sget-object v2, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    if-eqz v2, :cond_1

    .line 70
    return-void

    .line 72
    :cond_1
    new-instance v2, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;-><init>(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$1;)V

    sput-object v2, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    .line 74
    :try_start_1
    const-string v2, "sPendingWorkFinishers"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v3, v0

    .line 75
    .local v3, "sPendingWorkFinishersField":Ljava/lang/reflect/Field;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v5, v0

    .line 79
    .local v5, "sQueueWork$sPendingWorkFinishers":Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 80
    .local v6, "next":Ljava/lang/Runnable;
    sget-object v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 81
    if-nez v7, :cond_2

    .line 82
    const-string v0, "SharedPrefLagFix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "add runnable:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed, do not replace the QueuedWork\'s Runnable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 85
    .end local v6    # "next":Ljava/lang/Runnable;
    :cond_2
    goto :goto_0

    .line 86
    :cond_3
    sget-object v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "quinox_fix_lag_wait_time"

    .line 90
    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .local v2, "waitTimeString":Ljava/lang/String;
    move-object v2, v7

    if-eqz v7, :cond_4

    .line 93
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v7

    .line 95
    .local v6, "e":Ljava/lang/Throwable;
    const-wide/16 v7, 0x4

    :try_start_3
    sput-wide v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J

    .line 99
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "quinox_fix_lag_max_thread"

    .line 100
    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    .local v6, "maxThreadString":Ljava/lang/String;
    move-object v6, v7

    if-eqz v7, :cond_5

    .line 103
    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    goto :goto_2

    .line 104
    :catchall_1
    move-exception v7

    .line 105
    const/4 v7, 0x3

    :try_start_5
    sput v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I

    .line 109
    :cond_5
    :goto_2
    const-string v7, "SharedPrefLagFix"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sAllowFailCount :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sAllowFailCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", sTaskTimeOut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sTaskTimeOut:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 116
    .end local v2    # "waitTimeString":Ljava/lang/String;
    .end local v3    # "sPendingWorkFinishersField":Ljava/lang/reflect/Field;
    .end local v5    # "sQueueWork$sPendingWorkFinishers":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v6    # "maxThreadString":Ljava/lang/String;
    nop

    .line 119
    sget-object v5, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sExecutorProxy:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_6

    .line 120
    return-void

    .line 125
    :cond_6
    :try_start_6
    const-string v5, "singleThreadExecutor"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 126
    .local v3, "singleThreadExecutor":Ljava/lang/reflect/Method;
    move-object v3, v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    .line 128
    .local v5, "originExecutor":Ljava/util/concurrent/ExecutorService;
    const-string v7, "SharedPrefLagFix"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "originExecutor:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "sSingleThreadExecutor"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 130
    .local v2, "sSingleThreadExecutorField":Ljava/lang/reflect/Field;
    move-object v2, v7

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    new-instance v4, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpThreadPoolProxy;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpThreadPoolProxy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v4, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sExecutorProxy:Ljava/util/concurrent/ExecutorService;

    .line 135
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 136
    :try_start_7
    sget-object v4, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sExecutorProxy:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    :try_start_8
    const-string v4, "SharedPrefLagFix"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "executor:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 142
    .end local v2    # "sSingleThreadExecutorField":Ljava/lang/reflect/Field;
    .end local v3    # "singleThreadExecutor":Ljava/lang/reflect/Method;
    .end local v5    # "originExecutor":Ljava/util/concurrent/ExecutorService;
    goto :goto_3

    .line 137
    .restart local v2    # "sSingleThreadExecutorField":Ljava/lang/reflect/Field;
    .restart local v3    # "singleThreadExecutor":Ljava/lang/reflect/Method;
    .restart local v5    # "originExecutor":Ljava/util/concurrent/ExecutorService;
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v1    # "queueWorkClass":Ljava/lang/Class;
    .end local p0    # "context":Landroid/content/Context;
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 140
    .end local v2    # "sSingleThreadExecutorField":Ljava/lang/reflect/Field;
    .end local v3    # "singleThreadExecutor":Ljava/lang/reflect/Method;
    .end local v5    # "originExecutor":Ljava/util/concurrent/ExecutorService;
    .restart local v1    # "queueWorkClass":Ljava/lang/Class;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "SharedPrefLagFix"

    const-string v3, "replace the executor failed."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    const-string v0, "SharedPrefLagFix"

    const-string v2, "fix sp lag success!!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPrefLagFix"

    const-string v3, "replace the runnable failed"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "queueWorkClass":Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 64
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "SharedPrefLagFix"

    const-string v2, "can not found class: android.app.QueueWork, do not fixLag"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 448
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 444
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    return-void
.end method

.method private static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 452
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static timeWait()V
    .locals 11

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    return-void

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    .local v0, "start":J
    const/4 v2, 0x0

    .local v2, "completed":I
    const-wide/16 v3, 0x0

    .line 175
    :goto_0
    sget-object v5, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->realPoll()Ljava/lang/Runnable;

    move-result-object v5

    move-object v6, v5

    .local v6, "toFinish":Ljava/lang/Runnable;
    if-eqz v5, :cond_2

    .line 176
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 178
    .local v3, "timeUsed":J
    move-wide v3, v7

    const-wide/16 v9, 0xc8

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "timeWait, cost:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " remaining tasks:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " completed tasks:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SharedPrefLagFix"

    invoke-static {v7, v5}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_1
    nop

    .end local v3    # "timeUsed":J
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method public static waitToFinish()V
    .locals 8

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 151
    return-void

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "start":J
    const/4 v2, 0x0

    .line 157
    .local v2, "completed":I
    :goto_0
    sget-object v3, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->sRunnableProxy:Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->realPoll()Ljava/lang/Runnable;

    move-result-object v3

    move-object v4, v3

    .local v4, "toFinish":Ljava/lang/Runnable;
    if-eqz v3, :cond_1

    .line 158
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 162
    .local v5, "timeUsed":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "waitToFinish, cost:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " completed tasks:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "SharedPrefLagFix"

    invoke-static {v7, v3}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method
