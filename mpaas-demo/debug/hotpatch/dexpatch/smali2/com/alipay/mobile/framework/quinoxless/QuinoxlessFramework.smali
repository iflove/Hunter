.class public Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;
.super Ljava/lang/Object;
.source "QuinoxlessFramework.java"


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;


# instance fields
.field private a:Landroid/app/Application;

.field private e:Lcom/alipay/mobile/framework/quinoxless/IInitCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/IInitCallback;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "callback"    # Lcom/alipay/mobile/framework/quinoxless/IInitCallback;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    .line 49
    iput-object p2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->e:Lcom/alipay/mobile/framework/quinoxless/IInitCallback;

    .line 50
    return-void
.end method

.method private a()V
    .locals 13

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 68
    .local v0, "launchStartTime":J
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "performance_startup"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d()V

    .line 74
    new-instance v2, Lcom/alipay/dexpatch/m/ProcessInfo;

    iget-object v3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 76
    .local v4, "processInfo":Lcom/alipay/dexpatch/m/ProcessInfo;
    move-object v4, v2

    invoke-virtual {v2}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-static {}, Lcom/alipay/mobile/quinox/ExceptionHandler;->getInstance()Lcom/alipay/mobile/quinox/ExceptionHandler;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/ExceptionHandler;->setUp(Landroid/content/Context;)V

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->createInstance(Landroid/content/Context;)Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    move-result-object v2

    move-object v5, v3

    .line 80
    .local v5, "dexPatchExceptionHandler":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    move-object v5, v2

    invoke-virtual {v2}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->getLastCrashInfo()Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    .line 81
    .local v6, "lastCrashInfo":Ljava/lang/String;
    move-object v6, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v7, "keybiztrace"

    const/4 v8, 0x0

    const-string v9, "QuinoxlessFramework"

    const-string v10, "FRAME_DEXPATCH"

    const-string v11, "BIZ_FRAME"

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v3, "params":Ljava/util/Map;
    move-object v3, v2

    const-string/jumbo v12, "stackFrame"

    invoke-interface {v2, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "1000"

    invoke-static {v11, v10, v2, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "report FRAME_DEXPATCH 1000"

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 88
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 90
    .end local v3    # "params":Ljava/util/Map;
    :cond_0
    invoke-virtual {v5}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->shouldReportFuse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "1001"

    invoke-static {v11, v10, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "report FRAME_DEXPATCH 1001"

    invoke-static {v9, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 95
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {v5}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->takeDown()V

    .line 98
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->init(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 100
    invoke-virtual {v4}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 104
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/ExceptionHandler;->getInstance()Lcom/alipay/mobile/quinox/ExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/ExceptionHandler;->stop()V

    .line 106
    .end local v5    # "dexPatchExceptionHandler":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    .end local v6    # "lastCrashInfo":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static a(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 335
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->initSavedLocale(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "QuinoxlessFramework"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 109
    invoke-static {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;->getPrivacySwitcher(Landroid/content/Context;)Z

    move-result v0

    .line 111
    .local v0, "switcher":Z
    :try_start_0
    const-string v1, "com.alipay.mobile.common.logging.api.utils.PrivacyUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "NEW_PRIVACY"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QuinoxlessFramework.initPrivacySwitcher e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuinoxlessFramework"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->f()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->e()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->g()V

    return-void
.end method

.method private b()V
    .locals 13

    .line 132
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 142
    new-instance v0, Lcom/alipay/dexpatch/m/HotPatch;

    iget-object v6, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-direct {v0, v6, v1}, Lcom/alipay/dexpatch/m/HotPatch;-><init>(Landroid/app/Application;Z)V

    .line 145
    new-instance v6, Lcom/alipay/dexpatch/m/ProcessInfo;

    iget-object v7, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-direct {v6, v7}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v7

    const-string v8, "QuinoxlessFramework"

    if-eqz v7, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 149
    iget-object v7, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v7}, Lcom/alipay/dexpatch/m/DexPatchBridge;->setOuterFrameworkInited(Landroid/content/Context;)V

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "DexPatchBridge.setOuterFrameworkInited(application) cost:"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v7

    const-string/jumbo v9, "privacy_agreed"

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isLiteProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string/jumbo v0, "privacy user agreed initAfterPrivacyAgreed in other process"

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->f()V

    .line 184
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->e()V

    .line 185
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->g()V

    return-void

    .line 187
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    new-instance v2, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$2;-><init>(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void

    .line 154
    :cond_4
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/alipay/dexpatch/m/HotPatch;->setupHotPatch(ZZ)V

    .line 155
    invoke-virtual {v0}, Lcom/alipay/dexpatch/m/HotPatch;->monitorSuccess()V

    .line 157
    new-instance v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    new-instance v6, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;

    iget-object v7, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-direct {v6, v7}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;-><init>(Landroid/app/Application;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a(Landroid/app/Application;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    const-string/jumbo v0, "privacy user agreed initAfterPrivacyAgreed"

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c()V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init finish, clock cost:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, thread cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    new-instance v2, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$1;-><init>(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private c()V
    .locals 4

    .line 207
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->f()V

    .line 208
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->e()V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->g()V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->preInit()V

    .line 211
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->init()V

    .line 212
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->postLoad()V

    .line 213
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->loadServices()V

    .line 214
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->restoreState()V

    .line 215
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->postInit()V

    .line 216
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->setStartActivityContext(Landroid/content/Context;)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startFrameworkSecondPipeLine()V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startClientStartedPipeline()V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->e:Lcom/alipay/mobile/framework/quinoxless/IInitCallback;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/alipay/mobile/framework/quinoxless/IInitCallback;->onPostInit()V

    goto :goto_0

    .line 225
    :cond_0
    :try_start_0
    const-string v0, "com.alipay.mobile.framework.quinoxless.QuinoxlessApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onPostInit"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    nop

    .line 231
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "no postinit"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()V
    .locals 11

    const-string/jumbo v0, "noteLoggerInited"

    const-string v1, "QuinoxlessFramework"

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 265
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    move-object v4, v2

    const-string v5, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v3

    .line 266
    .local v5, "binderClazz":Ljava/lang/Class;
    move-object v5, v2

    const-string v6, "initQuinoxless"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 267
    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    aput-object v7, v6, v10

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isAarMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v6, "aar"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setMpaasMode(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v6, "inside"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setMpaasMode(Ljava/lang/String;)V

    .line 274
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mpaas access_mode"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getMpaasMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Init MonitorLogger: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->init()V

    .line 279
    new-instance v2, Lcom/alipay/dexpatch/m/ProcessInfo;

    iget-object v6, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-direct {v2, v6}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v2}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->getInstance()Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    move-result-object v2

    move-object v6, v3

    .line 283
    .local v6, "dexPatchExceptionHandler":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    move-object v6, v2

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {v6, v10}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->setDoRecordCrash(Z)V

    goto :goto_1

    .line 280
    .end local v6    # "dexPatchExceptionHandler":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :cond_1
    move-object v6, v3

    .line 288
    :cond_2
    :goto_1
    const-string v2, "getTraceLogger"

    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v6, "traceLoggerObject":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->setLogger(Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchLogger;->noteLoggerInited()V

    .line 293
    const-string v2, "com.alipay.dexpatch.compat.LoggerImpl"

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 294
    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 295
    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "com.alipay.dexpatch.compat.ContextImpl"

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 297
    const-string/jumbo v7, "setOuterEnvInited"

    new-array v8, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 298
    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v2, "com.alipay.dexpatch.compat.MonitorImpl"

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 300
    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 301
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    nop

    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "binderClazz":Ljava/lang/Class;
    .end local v6    # "traceLoggerObject":Ljava/lang/Object;
    return-void

    .line 302
    :catchall_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private e()V
    .locals 12

    const-string v0, "QuinoxlessFramework"

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 310
    .local v1, "startTime":J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 311
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    const-string v6, "com.alipay.mobile.monitor.api.ClientMonitor"

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v6, v4

    .line 312
    .local v6, "binderClazz":Ljava/lang/Class;
    const-string v7, "createInstance"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v7, v4

    .line 313
    .local v7, "createInstanceMethod":Ljava/lang/reflect/Method;
    move-object v7, v3

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 314
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    aput-object v8, v3, v11

    invoke-virtual {v7, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    nop

    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "binderClazz":Ljava/lang/Class;
    .end local v7    # "createInstanceMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v3

    .line 316
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 320
    .local v3, "endTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setupMonitor cost: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v3, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private f()V
    .locals 8

    .line 325
    :try_start_0
    const-string v0, "com.alipay.mobile.common.info.DeviceInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 326
    .local v2, "deviceInfo":Ljava/lang/Class;
    const-string v3, "createInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 327
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    nop

    .end local v2    # "deviceInfo":Ljava/lang/Class;
    return-void

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "QuinoxlessFramework"

    const-string/jumbo v2, "preload device info failed."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static g()V
    .locals 2

    .line 348
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilesdk.tianyanadapter.MetaInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    const-string v0, "QuinoxlessFramework"

    const-string/jumbo v1, "setup tianyan failed."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    if-eqz v1, :cond_0

    .line 243
    sget-object v1, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit v0

    return-void

    .line 239
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "QuinoxlessFramework.setup need invoke in Application.onCreate or Application.attachContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initSuccess()Z
    .locals 2

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    monitor-enter v0

    .line 247
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAarMode()Z
    .locals 1

    .line 58
    :try_start_0
    const-string v0, "com.mpaas.project.aar.convert.converter.FinalRInit"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuinoxlessMode()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 259
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return-void
.end method

.method public static setup(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 128
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->setup(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/IInitCallback;)V

    .line 129
    return-void
.end method

.method public static setup(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/IInitCallback;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "callback"    # Lcom/alipay/mobile/framework/quinoxless/IInitCallback;

    .line 118
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;-><init>(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/IInitCallback;)V

    .line 123
    sput-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->d:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->a()V

    .line 124
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is forbidden to set up framework twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onLowMemory()V
    .locals 1

    .line 255
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->onLowMemory()V

    .line 256
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 251
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->onTerminate()V

    .line 252
    return-void
.end method
