.class public Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;
.super Ljava/lang/Object;
.source "NativeCrashHandler.java"


# static fields
.field public static ENABLE_NATIVE_LOG:Z = false

.field public static ENABLE_UNEXP_LOG:Z = false

.field public static ENANBLE_JAVA_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "NativeCrashHandler"

.field private static crashPath:Ljava/lang/String;

.field private static sCrashApi:Lcom/uc/crashsdk/export/CrashApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENANBLE_JAVA_LOG:Z

    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_NATIVE_LOG:Z

    .line 22
    sput-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_UNEXP_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/uc/crashsdk/export/CrashApi;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    return-object v0
.end method

.method private static getCustomInfo(Landroid/content/Context;)Lcom/uc/crashsdk/export/CustomInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    .line 54
    .local v0, "info":Lcom/uc/crashsdk/export/CustomInfo;
    const-string v1, "CrashSDK"

    iput-object v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    .line 55
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    .line 56
    const/16 v1, 0x1f4

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    .line 58
    const/4 v1, 0x1

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    .line 59
    const/4 v2, 0x3

    iput v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    .line 60
    const-string v2, "app_crash"

    iput-object v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    .line 63
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iput-boolean v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iput-boolean v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 70
    iput-boolean v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 73
    :cond_1
    const/16 v1, 0x1388

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    .line 74
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 75
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 76
    return-object v0
.end method

.method public static final declared-synchronized getPath()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->crashPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->crashPath:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>()V

    .line 31
    .local v0, "versionInfo":Lcom/uc/crashsdk/export/VersionInfo;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->getCustomInfo(Landroid/content/Context;)Lcom/uc/crashsdk/export/CustomInfo;

    move-result-object v2

    new-instance v4, Lcom/alipay/mobile/common/nativecrash/CrashClientImpl;

    invoke-direct {v4}, Lcom/alipay/mobile/common/nativecrash/CrashClientImpl;-><init>()V

    sget-boolean v6, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENANBLE_JAVA_LOG:Z

    sget-boolean v7, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_NATIVE_LOG:Z

    sget-boolean v8, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_UNEXP_LOG:Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/uc/crashsdk/export/CrashApi;->createInstance(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;Ljava/lang/String;ZZZ)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->setCrashLogUploadUrl(Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->prepareCrashInfo(Landroid/content/Context;)V

    .line 37
    new-instance v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler$1;

    invoke-direct {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler$1;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setCrashGetter(Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;)V

    .line 44
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mPaaSProductVersion"

    invoke-virtual {v1, v3, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-boolean v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_UNEXP_LOG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    const/16 v2, 0x100

    const-string v3, "last product info:"

    invoke-virtual {v1, v3, v2}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "NativeCrashHandler"

    const-string v3, "initialize ok"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static prepareCrashInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    const-string v0, "NativeCrashHandler"

    :try_start_0
    const-string v1, "crashsdk"

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 82
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 84
    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->sCrashApi:Lcom/uc/crashsdk/export/CrashApi;

    invoke-virtual {v2}, Lcom/uc/crashsdk/export/CrashApi;->crashSoLoaded()V

    .line 86
    sget-boolean v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandler;->ENABLE_UNEXP_LOG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "loadLibrary failed"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v1    # "success":Z
    :cond_1
    :goto_0
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "loadLibrary exception"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
