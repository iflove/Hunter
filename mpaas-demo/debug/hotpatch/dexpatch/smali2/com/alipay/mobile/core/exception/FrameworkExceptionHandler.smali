.class public Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
.super Ljava/lang/Object;
.source "FrameworkExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "ExceptionHandler"

.field private static a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobile/core/impl/AppExitHelper;

.field private e:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:Ljava/util/List;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_8

    .line 233
    const-string v0, "ExceptionHandler"

    const-string v1, "FrameworkExceptionHandler: This is the exception that cause Crash.\r\n"

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaCrashTime:J

    .line 238
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 239
    nop

    .line 241
    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    goto :goto_0

    .line 242
    :catchall_0
    move-exception v3

    .line 243
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 245
    :goto_0
    if-nez v3, :cond_1

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    :cond_0
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_1
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_INVALID_CRASH:Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 256
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    .line 259
    invoke-virtual {v3, v1, p2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleContinuousCrash(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isStartupCrash()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleCrashOnStartup()V

    .line 263
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->updateLaunchTimeWhenCrash()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    goto :goto_2

    .line 264
    :catchall_1
    move-exception v1

    .line 265
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    :cond_4
    :goto_2
    nop

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v1, :cond_5

    .line 272
    :try_start_2
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearTopApps()V

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    goto :goto_3

    .line 275
    :catchall_2
    move-exception v1

    .line 276
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_5
    move-object v1, v2

    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/core/impl/AppExitHelper;

    if-eqz v3, :cond_7

    .line 281
    if-eqz v1, :cond_6

    .line 282
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_4

    .line 284
    :cond_6
    invoke-virtual {v3, v2, v2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 288
    goto :goto_4

    .line 286
    :catchall_3
    move-exception v1

    .line 287
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "NegligibleThrowable"

    invoke-direct {v0, v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    iget-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p2, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 294
    :cond_8
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "filter":Z
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    instance-of v2, v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    .line 206
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;->filter(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    instance-of v1, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.infsword.service.AppInstallReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 218
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    .line 222
    .local v2, "agent":Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;->filter(Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    move v0, v3

    .line 225
    goto :goto_1

    .line 223
    :catchall_0
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "ExceptionHandler"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v2    # "agent":Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 228
    :cond_4
    return v0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 11

    .line 309
    const-string v0, "KEY_CRASH_CUR_DAY"

    const-string v1, "OOMException"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Landroid/content/Context;

    const-string v6, "framework_preferences"

    invoke-virtual {v4, v5, v6, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    div-long/2addr v5, v7

    .line 312
    const-wide/16 v7, 0x0

    invoke-interface {v4, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const-string v9, "KEY_CRASH_REPORT_COUNT"

    cmp-long v10, v5, v7

    if-eqz v10, :cond_0

    .line 315
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-interface {v4, v9, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v2

    .line 319
    const/16 v5, 0xa

    if-le v0, v5, :cond_1

    .line 320
    return-void

    .line 322
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 326
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_SUB_THREAD_CRASH:Ljava/lang/Object;

    invoke-static {v0, p1, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_2
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v0, p1, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    goto :goto_1

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    const-string v4, "ExceptionHandler"

    const-string/jumbo v5, "reportSubThreadExceptions error"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    :goto_1
    nop

    .line 337
    :try_start_2
    invoke-static {p1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 338
    :goto_2
    if-eqz p1, :cond_4

    .line 339
    :try_start_3
    iput-boolean v2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:Z

    goto :goto_3

    .line 365
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 342
    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    .line 343
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    const-string v4, "activity"

    .line 344
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 346
    new-array v2, v2, [I

    .line 347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 349
    array-length v2, v0

    if-lez v2, :cond_5

    .line 350
    aget-object v0, v0, v3

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "totalProportional: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dalvikHeapAlloc: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "totalPss: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dalvikPss: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "nativePss: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "otherPss: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    :cond_5
    :try_start_4
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 363
    goto :goto_4

    .line 361
    :catchall_2
    move-exception v0

    .line 367
    :cond_6
    goto :goto_4

    .line 365
    :catchall_3
    move-exception p1

    const/4 p1, 0x0

    .line 370
    :goto_4
    if-eqz p1, :cond_7

    .line 371
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->logAllThreadsTraces()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 374
    :try_start_6
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 377
    return-void

    .line 375
    :catchall_4
    move-exception p1

    goto :goto_5

    .line 379
    :catchall_5
    move-exception p1

    .line 382
    return-void

    .line 381
    :cond_7
    :goto_5
    return-void
.end method

.method private static c(Ljava/lang/Throwable;)Z
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 385
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 386
    return v0

    .line 388
    :cond_0
    move-object v1, p0

    .local v1, "temp":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 389
    :goto_0
    if-eqz v1, :cond_3

    .line 390
    instance-of v3, v1, Ljava/lang/RuntimeException;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v2, "message":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 393
    const-string v3, "InputChannel is not initialized."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    return v4

    .line 397
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    instance-of v3, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_2

    .line 398
    return v4

    .line 400
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 403
    :cond_3
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    .locals 2

    const-class v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    .line 71
    :cond_0
    sget-object v1, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/alipay/mobile/core/impl/AppExitHelper;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appExitHelper"    # Lcom/alipay/mobile/core/impl/AppExitHelper;
    .param p3, "agent"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    const-string v1, "ExceptionHandler"

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "Thread.getDefaultUncaughtExceptionHandler() is a FrameworkExceptionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 86
    iput-object p3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 90
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 91
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 94
    :try_start_0
    const-string v0, "com.alipay.mobile.common.logging.api.HiddenNativeCrashListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 95
    .local v3, "hiddenListenerClazz":Ljava/lang/Class;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "hiddenListener":Ljava/lang/Object;
    const-string/jumbo v4, "setAgentListener"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v6, v2

    .line 97
    .local v6, "register":Ljava/lang/reflect/Method;
    move-object v6, v4

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    new-instance v4, Lcom/alipay/mobile/core/exception/FNativeCrashListener;

    invoke-direct {v4}, Lcom/alipay/mobile/core/exception/FNativeCrashListener;-><init>()V

    .line 99
    .local v2, "ncl":Lcom/alipay/mobile/core/exception/FNativeCrashListener;
    move-object v2, v4

    iget-object v7, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->setAppExitHelper(Lcom/alipay/mobile/core/impl/AppExitHelper;)V

    .line 100
    iget-object v4, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->setMicroApplicationContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 101
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "framework"

    aput-object v5, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v6, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    nop

    .end local v0    # "hiddenListener":Ljava/lang/Object;
    .end local v2    # "ncl":Lcom/alipay/mobile/core/exception/FNativeCrashListener;
    .end local v3    # "hiddenListenerClazz":Ljava/lang/Class;
    .end local v6    # "register":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object p0
.end method

.method public registerExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;)V
    .locals 1
    .param p1, "agent"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 127
    const-string v0, "ExceptionHandler"

    const-string v1, "FrameworkExceptionHandler got Exception."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->checkAndDisableArrayMapCache(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    .line 135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mExceptionHandlerAgent is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    instance-of v2, v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    if-eqz v2, :cond_1

    .line 138
    check-cast v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;->uncaughtException(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    return-void

    .line 141
    :cond_1
    instance-of v2, v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    return-void

    .line 148
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 150
    return-void

    .line 153
    :cond_3
    const/4 v1, 0x0

    .line 155
    .local v1, "threadName":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 156
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 162
    goto :goto_2

    .line 160
    :catchall_1
    move-exception v2

    .line 161
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_2
    const/4 v2, 0x0

    .line 165
    .local v2, "mainLooperThread":Ljava/lang/Thread;
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 168
    goto :goto_3

    .line 166
    :catchall_2
    move-exception v3

    .line 167
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_3
    const-string v3, "MicroApplicationContextImpl_WorkThread"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Exception occurs in worker thread, but it will not crash.\r\n"

    if-eqz v3, :cond_5

    .line 170
    invoke-static {v0, v4, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    goto :goto_4

    .line 172
    :cond_5
    if-eq p1, v2, :cond_a

    const-string/jumbo v3, "main"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    goto :goto_6

    .line 181
    :cond_6
    const-string v3, "LauncherApplication.Init"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 182
    const-string v3, "doInstallMultiDex"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 183
    const-string v3, "LocalBroadcastManager.SubThread"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    .line 186
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 187
    invoke-static {v0, v4, p2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_8
    :goto_4
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b(Ljava/lang/Throwable;)V

    .line 191
    return-void

    .line 184
    :cond_9
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 180
    :cond_a
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
