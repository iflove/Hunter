.class public Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;
.super Ljava/lang/Object;
.source "IsolateCrashSdkInitializer.java"


# static fields
.field public static ENABLE_NATIVE_LOG:Z = false

.field public static ENABLE_UNEXP_LOG:Z = false

.field public static ENANBLE_JAVA_LOG:Z = false

.field public static final FILE_PATH:Ljava/lang/String; = "app_crash"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENANBLE_JAVA_LOG:Z

    .line 20
    sput-boolean v0, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENABLE_NATIVE_LOG:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENABLE_UNEXP_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCustomInfo(Landroid/content/Context;)Lcom/uc/crashsdk/export/CustomInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    .line 51
    .local v0, "info":Lcom/uc/crashsdk/export/CustomInfo;
    const-string v1, "CrashSDK"

    iput-object v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    .line 52
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    .line 53
    const/16 v1, 0x1f4

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    .line 55
    const/4 v1, 0x1

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    .line 56
    const/4 v2, 0x3

    iput v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    .line 57
    const-string v2, "app_crash"

    iput-object v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    .line 60
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iput-boolean v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 64
    iput-boolean v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 67
    :cond_0
    const/16 v1, 0x1388

    iput v1, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    .line 68
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 69
    iput-boolean v2, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 70
    return-object v0
.end method

.method private static getProductVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    move-object v0, v1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 45
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 46
    :goto_0
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>()V

    .line 26
    .local v0, "versionInfo":Lcom/uc/crashsdk/export/VersionInfo;
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->getProductVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 27
    .local v9, "productVersion":Ljava/lang/String;
    iput-object v9, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->getCustomInfo(Landroid/content/Context;)Lcom/uc/crashsdk/export/CustomInfo;

    move-result-object v2

    new-instance v4, Lcom/alipay/mobile/common/nativecrash/CrashClientImpl;

    invoke-direct {v4}, Lcom/alipay/mobile/common/nativecrash/CrashClientImpl;-><init>()V

    sget-boolean v6, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENANBLE_JAVA_LOG:Z

    sget-boolean v7, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENABLE_NATIVE_LOG:Z

    sget-boolean v8, Lcom/alipay/mobile/common/logging/compat/IsolateCrashSdkInitializer;->ENABLE_UNEXP_LOG:Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/uc/crashsdk/export/CrashApi;->createInstance(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;Ljava/lang/String;ZZZ)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    .line 31
    .local v1, "crashApi":Lcom/uc/crashsdk/export/CrashApi;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->setCrashLogUploadUrl(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "mPaaSProductVersion"

    invoke-virtual {v1, v2, v9}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
