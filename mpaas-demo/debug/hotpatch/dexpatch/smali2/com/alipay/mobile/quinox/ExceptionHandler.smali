.class public final Lcom/alipay/mobile/quinox/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/quinox/ExceptionHandler;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "ExceptionHandler"

    sput-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 73
    instance-of v0, p0, Ljava/lang/IllegalAccessError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Class ref in pre-verified class resolved to unexpected implementation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.infsword.service.AppInstallReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    .line 73
    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/ExceptionHandler;
    .locals 2

    .line 28
    sget-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->b:Lcom/alipay/mobile/quinox/ExceptionHandler;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/alipay/mobile/quinox/ExceptionHandler;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/ExceptionHandler;->b:Lcom/alipay/mobile/quinox/ExceptionHandler;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/alipay/mobile/quinox/ExceptionHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/ExceptionHandler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/ExceptionHandler;->b:Lcom/alipay/mobile/quinox/ExceptionHandler;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->b:Lcom/alipay/mobile/quinox/ExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public final setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/quinox/ExceptionHandler;

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    const-string v1, "ExceptionHandler(Quinox).setUp()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/ExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 50
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 51
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 54
    sget-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    const-string v1, "ExceptionHandler(Quinox).stop()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/quinox/ExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 56
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 83
    sget-object v0, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    const-string v1, "ExceptionHandler got Exception."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    instance-of v0, p2, Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/NoClassDefFoundError;

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->stopOptHostClassLoader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 92
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 94
    .local v0, "threadName":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 95
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 101
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v1

    .line 100
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_1
    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 104
    const-string v1, "LauncherApplication.Init"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 105
    const-string v1, "doInstallMultiDex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 106
    const-string v1, "LocalBroadcastManager.SubThread"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 107
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    :try_start_2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->checkAndDisableArrayMapCache(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_SUB_THREAD_CRASH:Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_4
    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 150
    return-void

    .line 148
    :catchall_2
    move-exception v1

    .line 152
    return-void

    .line 109
    :cond_5
    :goto_2
    sget-object v1, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    const-string v3, "QuinoxExceptionHandler: This is the exception that cause Crash."

    invoke-static {v1, v3, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaCrashTime:J

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "filtered":Z
    :try_start_3
    invoke-static {p2}, Lcom/alipay/mobile/quinox/ExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v3

    .line 118
    goto :goto_3

    .line 116
    :catchall_3
    move-exception v3

    .line 117
    .local v3, "tr":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_3
    if-nez v1, :cond_7

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 123
    :cond_6
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    :cond_7
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 129
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleContinuousCrash(ILjava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleCrashOnStartup()V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->updateLaunchTimeWhenCrash()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 134
    goto :goto_5

    .line 132
    :catchall_4
    move-exception v2

    .line 133
    .local v2, "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/quinox/ExceptionHandler;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_8
    :goto_5
    iget-object v2, p0, Lcom/alipay/mobile/quinox/ExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_9

    .line 138
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "NegligibleThrowable"

    invoke-direct {v3, v4, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p1, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "filtered":Z
    :cond_9
    return-void
.end method
