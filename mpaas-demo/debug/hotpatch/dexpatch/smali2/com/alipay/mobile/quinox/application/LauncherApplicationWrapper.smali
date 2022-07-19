.class public Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;
.implements Lcom/mpaas/privacypermission/PrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;,
        Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$HookResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGENT_ACTIVITY:Ljava/lang/String; = "com.alipay.mobile.framework.LauncherActivityAgent"

.field private static final DEFAULT_AGENT_APPLICATION:Ljava/lang/String; = "com.alipay.mobile.framework.LauncherApplicationAgent"

.field private static final KEY_AGENT_ACTIVITY:Ljava/lang/String; = "agent.activity"

.field private static final KEY_AGENT_ACTIVITY_LAYOUT:Ljava/lang/String; = "agent.activity.layout"

.field private static final KEY_AGENT_APPLICATION:Ljava/lang/String; = "agent.application"

.field private static final KEY_ENABLE_GNUSTL:Ljava/lang/String; = "enable.gnustl.load"

.field private static final KEY_ENABLE_STLPORT:Ljava/lang/String; = "enable.stlport.load"

.field private static final KEY_PROCESS_CREATE:Ljava/lang/String; = "process.create.worker"

.field private static final KEY_PROCESS_DELAY:Ljava/lang/String; = "process.start.worker"

.field private static final KEY_PROCESS_LIFECYCLE:Ljava/lang/String; = "process.start.lifecycle"

.field public static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static final USE_PREINSTALL_COMPAT:Z = false

.field public static sInstance:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# instance fields
.field private cleanPatchAtLaunch:Z

.field public isInstallMultiDex:Z

.field private mAgentActivity:Ljava/lang/String;

.field private mAgentActivityLayout:Ljava/lang/String;

.field private mAgentApplication:Ljava/lang/String;

.field private mBaseContext:Landroid/content/Context;

.field private mBootFinish:Z

.field private mBootObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

.field private mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

.field private mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

.field private mCacheDir:Ljava/io/File;

.field private mCacheDirUpdateTime:J

.field private mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContextLockOpt:Z

.field private mCurrentProcessStartupTime:J

.field private mDexPatch:Lcom/alipay/mobile/quinox/hotpath/a;

.field private mExternalCacheDir:Ljava/io/File;

.field private mExternalCacheDirUpdateTime:J

.field private final mExternalFilesDir:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalFilesDirUpdateTime:J

.field private mFilesDir:Ljava/io/File;

.field private mFilesDirUpdateTime:J

.field private mFirstClass:Ljava/lang/String;

.field public mFullCheckBundles:Z

.field private final mGettingWebViewPkgMark:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHacked:Z

.field private final mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

.field private mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

.field private mIsDebug:Z

.field private mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private mMainHandler:Landroid/os/Handler;

.field private mNativeLibsTimeOnAttachBaseContext:J

.field private mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

.field private mOldResources:Landroid/content/res/Resources;

.field private mPackageInfo:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPostInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreloadFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

.field private mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

.field private mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

.field private mSavedLocale:Ljava/util/Locale;

.field private mServices:[Landroid/content/pm/ServiceInfo;

.field private mSharedPreferenceWrapper:Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

.field private mSuspendGcResult:I

.field private mSuspendGcReturnCode:I

.field private mTarget:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeRes:I

.field private mThemeResource:Landroid/content/res/Resources;

.field private mVerifyClassResult:I

.field private mVerifyClassReturnCode:I

.field private mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private onHostResourcesCreatedFirstTime:Z

.field private preInstall:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 3
    .param p1, "launcherApplication"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCurrentProcessStartupTime:J

    .line 201
    new-instance v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    .line 203
    new-instance v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    .line 225
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    .line 228
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    .line 237
    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$1;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mGettingWebViewPkgMark:Ljava/lang/ThreadLocal;

    .line 280
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mNativeLibsTimeOnAttachBaseContext:J

    .line 283
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 303
    iput v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    .line 305
    const v1, 0x7fffffff

    iput v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    .line 307
    iput v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 309
    iput v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    .line 311
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 314
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->cleanPatchAtLaunch:Z

    .line 315
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onHostResourcesCreatedFirstTime:Z

    .line 329
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPostInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 335
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadingActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3591
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalFilesDir:Ljava/util/Map;

    .line 341
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 342
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getLauncherActivityThemeResources()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .param p1, "x1"    # Z

    .line 169
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentRestoreState(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentPostInit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/hotpath/b;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/b;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPreload()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .param p1, "x1"    # Z

    .line 169
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->prepare(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadFuture:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .param p1, "x1"    # Z

    .line 169
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPrepare(Z)V

    return-void
.end method

.method private afterSetupApplication()V
    .locals 0

    .line 2831
    return-void
.end method

.method private beforePreloadActivity()V
    .locals 6

    .line 1928
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadingActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/AppState;->setPreloadingActivity(Z)V

    .line 1930
    const-string v0, "com.alipay.mobile.framework.pipeline.BlockablePipelineInvoker"

    const-string v3, "setBlockPipeline"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v2, [Ljava/lang/Object;

    .line 1931
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1930
    invoke-static {v0, v3, v4, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    :cond_0
    return-void

    .line 1933
    :catch_0
    move-exception v0

    .line 1934
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1936
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private beforeSetupApplication()V
    .locals 10

    const-string v0, "LauncherApplication"

    .line 2794
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.android.phone.mobilesdk.apm.APMByHostClassLoader"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2795
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 2796
    .local v2, "needPostInit":Z
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 2798
    :try_start_1
    const-string v3, "setPostInit"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v7, v4

    .line 2799
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v7, v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2800
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2801
    const/4 v2, 0x1

    .line 2804
    .end local v7    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 2802
    :catch_0
    move-exception v3

    move-object v7, v3

    .line 2803
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "apm setPostInit error"

    invoke-static {v0, v3, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2796
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v7, v4

    .line 2806
    :goto_0
    const-string v3, "beforeSetupApplication"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/app/Application;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2807
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v7, v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2808
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v6, v3, v5

    invoke-virtual {v7, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    if-eqz v2, :cond_1

    .line 2810
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/lang/Class;)V

    const-string v5, ""

    const-wide/16 v8, 0x2328

    invoke-virtual {v3, v4, v5, v8, v9}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2827
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "needPostInit":Z
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return-void

    .line 2825
    :catchall_0
    move-exception v1

    .line 2826
    .local v1, "tr":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beforeSetupApplication() Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 3238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    .locals 1

    .line 251
    sget-object v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->sInstance:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    return-object v0
.end method

.method private getLauncherActivityThemeResources()I
    .locals 5

    .line 1909
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1910
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1912
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v4, v1

    .line 1913
    .local v4, "intent":Landroid/content/Intent;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1915
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1921
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 1919
    :catchall_0
    move-exception v0

    .line 1920
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1923
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return v3
.end method

.method private getPackageInfo()Ljava/lang/Object;
    .locals 4

    .line 3045
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 3046
    .local v2, "contextImpl":Landroid/content/Context;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mPackageInfo"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3048
    .local v1, "mPackageInfoField":Ljava/lang/reflect/Field;
    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3049
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3050
    return-object v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 4

    .line 958
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    const-string v2, "currentActivityThread"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 959
    .local v2, "activityThread":Ljava/lang/Object;
    const-string v3, "getProcessName"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 960
    .end local v2    # "activityThread":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 961
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "LauncherApplication"

    const-string v3, "get process failed"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getStartupPerformanceExtraReportData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "extraMap":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object v1

    .line 267
    .local v1, "wrapper":Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    iget v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "suspend_gc_result"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "suspend_gc_return_code"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify_class_result"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify_class_return_code"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->fillReportData(Ljava/util/Map;)V

    .line 274
    return-object v0
.end method

.method private hookDvmLite()Z
    .locals 6

    .line 1565
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1566
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1567
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookLite()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 1569
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isConservativeStartupLite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1570
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setConservativeStartupLite()V

    .line 1571
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1573
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->startHookVerify(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    .line 1574
    iput v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 1575
    const-string v1, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hookdvm finish, result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    .line 1578
    :cond_0
    const/4 v1, 0x2

    :try_start_3
    iput v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1582
    goto :goto_0

    .line 1580
    :catchall_0
    move-exception v1

    .line 1581
    .local v1, "thr":Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "LauncherApplication"

    const-string v4, "hookdvm error"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1584
    .end local v1    # "thr":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1585
    return v2

    .line 1584
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private hookDvmMain()Z
    .locals 11

    .line 1589
    const-string v0, "mytest"

    const-string v1, "hookDvmMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1592
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1594
    .local v1, "sdkInt":I
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHook()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 1595
    const-string v3, "LauncherApplication"

    const-string v6, "need hookdvm"

    invoke-static {v3, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1597
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isConverativeStartup()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1598
    const-string v3, "LauncherApplication"

    const-string v4, "hookdvm did"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1601
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->initAndStart(Landroid/content/Context;)V

    .line 1604
    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->startHookVerify(I)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    .line 1605
    iput v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 1609
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseGc()I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    .line 1610
    iput v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    .line 1612
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hookdvm finish, verifyClass: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", suspendGc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1614
    .local v3, "msg":Ljava/lang/String;
    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    if-gez v4, :cond_0

    goto :goto_0

    .line 1617
    :cond_0
    const-string v4, "LauncherApplication"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1615
    :cond_1
    :goto_0
    const-string v4, "LauncherApplication"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v5

    .line 1621
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_3
    iput v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 1622
    iput v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    .line 1623
    const-string v3, "LauncherApplication"

    const-string v4, "ConservativeStartup: disable suspend gc and verify class"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1625
    :catchall_0
    move-exception v3

    .line 1626
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "LauncherApplication"

    const-string v5, "hookdvm error"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_2
    goto/16 :goto_7

    .line 1628
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArt()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_c

    .line 1630
    :try_start_5
    const-string v3, "LauncherApplication"

    const-string v6, "need hookart"

    invoke-static {v3, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isConverativeStartup()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1632
    const-string v3, "LauncherApplication"

    const-string v4, "force hookdvm"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->needHookArtCl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1634
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 1635
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v3

    const-string v6, "enable_verify_class"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1636
    .local v3, "verifyClassFlag":Z
    const-string v6, "enable_suspend_gc"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1637
    .local v6, "suspendGcFlag":Z
    const-string v7, "LauncherApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "verifyClassFlag: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", suspendGcFlag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1640
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setConservativeStartup()V

    .line 1642
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->initAndStart(Landroid/content/Context;)V

    .line 1644
    const/4 v7, 0x3

    const/16 v8, 0x15

    const/4 v9, 0x4

    if-eqz v3, :cond_5

    .line 1645
    if-lt v1, v8, :cond_4

    const/16 v10, 0x1a

    if-gt v1, v10, :cond_4

    .line 1646
    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->startHookVerify(I)I

    move-result v10

    iput v10, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    .line 1647
    iput v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    goto :goto_3

    .line 1649
    :cond_4
    iput v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    goto :goto_3

    .line 1652
    :cond_5
    iput v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 1655
    :goto_3
    if-eqz v6, :cond_7

    .line 1656
    if-lt v1, v8, :cond_6

    const/16 v8, 0x1b

    if-gt v1, v8, :cond_6

    .line 1657
    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseGcLollipop(I)I

    move-result v7

    iput v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    .line 1658
    iput v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    goto :goto_4

    .line 1660
    :cond_6
    iput v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    goto :goto_4

    .line 1663
    :cond_7
    iput v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    .line 1666
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hookArt finish, verifyClass: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", suspendGc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1668
    .local v7, "msg":Ljava/lang/String;
    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    if-ltz v8, :cond_9

    iget v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    if-gez v8, :cond_8

    goto :goto_5

    .line 1671
    :cond_8
    const-string v8, "LauncherApplication"

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .end local v3    # "verifyClassFlag":Z
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "suspendGcFlag":Z
    .end local v7    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 1669
    .restart local v3    # "verifyClassFlag":Z
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "suspendGcFlag":Z
    .restart local v7    # "msg":Ljava/lang/String;
    :cond_9
    :goto_5
    const-string v8, "LauncherApplication"

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1675
    .end local v3    # "verifyClassFlag":Z
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "suspendGcFlag":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_a
    const-string v3, "LauncherApplication"

    const-string v4, "needHookArtCl: false"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1677
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v5

    .line 1679
    :cond_b
    :try_start_7
    iput v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    .line 1680
    iput v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    .line 1681
    const-string v3, "LauncherApplication"

    const-string v4, "ConservativeStartup: disable suspend gc and verify class"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1685
    goto :goto_7

    .line 1683
    :catchall_1
    move-exception v3

    .line 1684
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_8
    const-string v4, "LauncherApplication"

    const-string v5, "hookart error"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1687
    .end local v1    # "sdkInt":I
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_c
    :goto_7
    monitor-exit v0

    .line 1688
    return v2

    .line 1687
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method private init()V
    .locals 2

    .line 2491
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getPackageInfo()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageInfo:Ljava/lang/Object;

    .line 2492
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    return-void

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2495
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 2496
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2493
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 2494
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initBundleManager()V
    .locals 2

    .line 2516
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/NotQuinoxModeUtils;->isNotQuinoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2517
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/NotQuinoxModeUtils;->isNotQuinoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2520
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/NotQuinoxModeBundleManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/bundle/NotQuinoxModeBundleManager;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 2522
    :cond_1
    return-void
.end method

.method private initDebug()V
    .locals 2

    .line 2504
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    .line 2505
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->setDebug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    return-void

    .line 2506
    :catchall_0
    move-exception v0

    .line 2507
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2508
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->setDebug(Z)V

    .line 2510
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initFormMetaData()V
    .locals 5

    .line 1475
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "enable.gnustl.load"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    .line 1476
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "enable.stlport.load"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    .line 1477
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "agent.application"

    const-string v3, "com.alipay.mobile.framework.LauncherApplicationAgent"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentApplication:Ljava/lang/String;

    .line 1478
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "agent.activity"

    const-string v3, "com.alipay.mobile.framework.LauncherActivityAgent"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivity:Ljava/lang/String;

    .line 1479
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1480
    .local v0, "spf":Landroid/content/SharedPreferences;
    const-string v1, "use_new_welcome_layout"

    const-string v3, "no"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1481
    const-string v1, "activity_start_logo_new"

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivityLayout:Ljava/lang/String;

    .line 1482
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsUseNewActivityLayout(Z)V

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v3, 0x0

    const-string v4, "agent.activity.layout"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivityLayout:Ljava/lang/String;

    .line 1485
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsUseNewActivityLayout(Z)V

    .line 1488
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STLLibUtil.sEnableGnustl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", STLLibUtil.sEnableStlport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAgentApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAgentActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAgentActivityLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivityLayout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherApplication"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method private interceptWhenPreload(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 3466
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3467
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPreloadLaunch()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3468
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadingActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_5

    .line 3470
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    .line 3471
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 3473
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    .line 3474
    .local v2, "componentName":Landroid/content/ComponentName;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 3475
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mServices:[Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_2

    .line 3476
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3477
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mServices:[Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 3478
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3479
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 3480
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x4

    .line 3481
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3482
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iput-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mServices:[Landroid/content/pm/ServiceInfo;

    .line 3484
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "serviceIntent":Landroid/content/Intent;
    :try_start_2
    throw v0

    .line 3486
    .restart local p1    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mServices:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_4

    .line 3487
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3488
    .restart local v0    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mServices:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 3489
    .local v6, "s":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3490
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3492
    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intercept process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " launch for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3493
    const/4 v1, 0x1

    return v1

    .line 3488
    .end local v6    # "s":Landroid/content/pm/ServiceInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3501
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_4
    goto :goto_2

    .line 3499
    :catchall_1
    move-exception v0

    .line 3500
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherApplication"

    const-string v3, "startService"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3504
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    return v1
.end method

.method private internalPreload()V
    .locals 3

    .line 1742
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    if-eqz v0, :cond_0

    .line 1744
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->a()V

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    .line 1749
    .local v0, "preloadFlag":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preloadFlag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mytest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 1751
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preloadResource()V

    .line 1754
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 1755
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c()V

    .line 1758
    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 1759
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupApplication(Z)V

    .line 1762
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->startPushWhenPreloadAndWeCan(Z)V

    .line 1763
    return-void
.end method

.method private internalPreloadActivity()V
    .locals 3

    .line 1766
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->beforePreloadActivity()V

    .line 1768
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->startPushWhenPreloadAndWeCan(Z)V

    .line 1771
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 1772
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1814
    :cond_0
    new-instance v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    .line 1823
    .local v0, "bizEnterCallback":Lcom/alipay/mobile/quinox/utils/Callback;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->addNewActivityCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V

    .line 1824
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v2, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1833
    return-void
.end method

.method private internalPrepare(Z)V
    .locals 22

    .line 2003
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, ", code: "

    const-string v4, "LauncherApplication"

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->runAnomalyDetection()V

    .line 2007
    :cond_0
    const-string v5, "mytest"

    const-string v0, "internalPrepare step 1"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v6, "internal_prepare_start"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2009
    const-string v6, "time_startup_sub"

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->start(Ljava/lang/String;)V

    .line 2010
    const-string v0, "pre_setupApplication"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    if-nez v0, :cond_1

    .line 2012
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    if-eqz v0, :cond_1

    .line 2013
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->a()V

    .line 2034
    :cond_1
    const/16 v0, -0x12

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2037
    goto :goto_0

    .line 2035
    :catchall_0
    move-exception v0

    .line 2039
    :goto_0
    const-string v0, "internalPrepare step 2"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 2041
    sput-boolean v7, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    .line 2043
    :cond_2
    if-eqz v2, :cond_3

    .line 2045
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b()V

    .line 2048
    :cond_3
    new-instance v8, Lcom/alipay/mobile/quinox/bundle/g;

    invoke-direct {v8}, Lcom/alipay/mobile/quinox/bundle/g;-><init>()V

    .line 2049
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const-string v10, "plugins"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v0, v9, v10, v2}, Lcom/alipay/mobile/quinox/bundle/g;->a(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/io/File;Z)V

    .line 2051
    const-string v0, "internalPrepare step 3"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2055
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c()V

    .line 2057
    :cond_4
    const-string v0, "internalPrepare step 4"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSTLSosInQuinoxProcessAgain(Landroid/content/Context;)V

    .line 2061
    const-string v0, "internalPrepare step 5"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preloadResource()V

    .line 2066
    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-eqz v0, :cond_5

    .line 2067
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->k()[Ljava/lang/String;

    .line 2069
    :cond_5
    const-string v0, "internalPrepare step 6"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v9}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->k()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/hotpath/b;->b([Ljava/lang/String;)V

    .line 2071
    const-string v0, "internalPrepare step 7"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :try_start_1
    const-class v0, Landroid/content/res/AssetManager;

    const-string v9, "isUpToDate"

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2077
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2078
    const-string v0, "hoks"

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z

    goto :goto_1

    .line 2080
    :cond_6
    const-string v0, "AssetManager.isUpToDate() is not native, abort load(hoks)"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2084
    goto :goto_1

    .line 2082
    :catchall_1
    move-exception v0

    .line 2083
    const-string v9, "loadLib(hoks) failed!"

    invoke-static {v4, v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2086
    :goto_1
    const-string v0, "internalPrepare step 8"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-direct {v1, v11}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupApplication(Z)V

    .line 2091
    const-string v9, "postLoad"

    invoke-static {v6, v9}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const-string v0, "internalPrepare step 9"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iput-boolean v7, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootFinish:Z

    .line 2094
    sput-boolean v7, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->isFrameworkFinished:Z

    .line 2095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCurrentProcessStartupTime:J

    sub-long/2addr v12, v14

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "bootfinish "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/g;->a()V

    .line 2102
    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-nez v0, :cond_8

    .line 2103
    const-wide/16 v14, 0x5dc

    cmp-long v0, v12, v14

    if-lez v0, :cond_8

    .line 2105
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v8, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "quinox_force_low_end_device"

    .line 2106
    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2107
    if-eqz v0, :cond_7

    .line 2108
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2109
    const-string v0, "com.alipay.mobile.common.logging.util.LowEndDeviceUtil"

    const-string v8, "setForceLowEndDevice"

    new-array v10, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    new-array v12, v7, [Ljava/lang/Object;

    .line 2110
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    .line 2109
    invoke-static {v0, v8, v10, v12}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2115
    :cond_7
    goto :goto_2

    .line 2113
    :catchall_2
    move-exception v0

    .line 2114
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2119
    :cond_8
    :goto_2
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    const-string v8, "remove mFullCheckBundles in sp"

    const-string v10, "key_check_md5_for_bundles"

    const-string v12, "framework_safeguard_preferences"

    const-string v13, "writeCfg-internalPrepare"

    const/4 v14, 0x5

    const/4 v15, 0x0

    if-eqz v0, :cond_c

    .line 2122
    :try_start_3
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2126
    nop

    .line 2129
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2130
    return-void

    .line 2133
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2134
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->end(Ljava/lang/String;)V

    .line 2136
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->setChanged()V

    .line 2137
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->notifyObservers()V

    .line 2138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Thread;->setPriority(I)V

    .line 2139
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    .line 2140
    sget-object v6, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    if-ne v6, v0, :cond_a

    if-nez v2, :cond_a

    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v0, :cond_b

    .line 2143
    :cond_a
    :try_start_4
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v7, v2, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(ZLjava/util/Collection;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2146
    goto :goto_3

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    invoke-static {v13, v0, v15}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2148
    :goto_3
    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v0, :cond_b

    .line 2150
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v2, v12, v11}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2152
    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :cond_b
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, v15}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2160
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V

    .line 2162
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2178
    goto/16 :goto_8

    .line 2123
    :catchall_3
    move-exception v0

    .line 2124
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2125
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2182
    :cond_c
    :try_start_5
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 2186
    nop

    .line 2188
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2189
    const-string v0, "loadServices"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :try_start_6
    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 2196
    nop

    .line 2197
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2198
    return-void

    .line 2201
    :cond_d
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->countObservers()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentRestoreState(Z)V

    .line 2203
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v9, "load_services"

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2204
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->end(Ljava/lang/String;)V

    .line 2205
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->setChanged()V

    .line 2206
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->notifyObservers()V

    .line 2208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Thread;->setPriority(I)V

    .line 2210
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    .line 2211
    sget-object v6, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    if-ne v6, v0, :cond_f

    if-nez v2, :cond_f

    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v0, :cond_10

    .line 2214
    :cond_f
    :try_start_7
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v7, v2, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(ZLjava/util/Collection;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 2217
    goto :goto_5

    .line 2215
    :catch_1
    move-exception v0

    .line 2216
    invoke-static {v13, v0, v15}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2219
    :goto_5
    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v0, :cond_10

    .line 2221
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v2, v12, v11}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2222
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2223
    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_10
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, v15}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2231
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V

    .line 2235
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentPostInit()V

    .line 2237
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStopJitState(I)V

    .line 2240
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2241
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/hotpath/b;->a()V

    .line 2245
    :cond_11
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2246
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->setOuterFrameworkInited(Landroid/content/Context;)V

    .line 2250
    :cond_12
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    const-wide/16 v8, 0x3e8

    const-string v2, "MainProcessMultiDexTimeOnAttachBaseContext"

    if-eqz v0, :cond_13

    .line 2251
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->b()J

    move-result-wide v12

    .line 2252
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    cmp-long v0, v12, v8

    if-ltz v0, :cond_13

    .line 2256
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v16

    .line 2257
    const-string v17, "multiDexInstallTime"

    const-string v18, "main.attachBaseContext"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 2258
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 2259
    invoke-static {v11}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2262
    goto :goto_6

    .line 2260
    :catchall_4
    move-exception v0

    .line 2261
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2265
    :cond_13
    :goto_6
    iget-wide v12, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mNativeLibsTimeOnAttachBaseContext:J

    .line 2266
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    cmp-long v0, v12, v8

    if-ltz v0, :cond_14

    .line 2270
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v16

    .line 2271
    const-string v17, "ensureNativeLibsTime"

    const-string v18, "main.attachBaseContext"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 2272
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 2273
    invoke-static {v11}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2276
    goto :goto_7

    .line 2274
    :catchall_5
    move-exception v0

    .line 2275
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2279
    :cond_14
    :goto_7
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    if-eqz v0, :cond_15

    .line 2281
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->f()V

    .line 2285
    :cond_15
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v0, v2, :cond_16

    .line 2286
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0, v15}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuClearException(Landroid/content/Context;Ljava/lang/String;)V

    .line 2289
    :cond_16
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2290
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getMainCurrentLaunchTime()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuRecordNewLaunchTime(Landroid/content/Context;J)V

    .line 2294
    :cond_17
    :goto_8
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2295
    iget v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    iget v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    if-ne v0, v2, :cond_19

    .line 2296
    :cond_18
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v6, "perf_preferences"

    invoke-virtual {v0, v2, v6, v11}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2297
    const-string v0, "report hook verify failure"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    const-string v5, "needHookVerifyReport"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2300
    :try_start_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2301
    const-string v6, "verifyClassResult"

    iget v7, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    const-string v6, "verifyClassReturnCode"

    iget v7, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v12

    .line 2305
    const-string v13, "hookverify"

    iget-object v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 2306
    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v14

    iget v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iget v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 2305
    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 2307
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 2308
    invoke-static {v11}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "report hookverify: verifyClass"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", suspendGc: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2314
    goto :goto_9

    .line 2312
    :catchall_6
    move-exception v0

    .line 2313
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2315
    :goto_9
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2319
    :cond_19
    return-void

    .line 2193
    :catchall_7
    move-exception v0

    .line 2194
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2195
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2183
    :catchall_8
    move-exception v0

    .line 2184
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2185
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isBerserkerProcess()Z
    .locals 1

    .line 2622
    const/4 v0, 0x0

    return v0
.end method

.method private isMainThread()Z
    .locals 2

    .line 3407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    const-string v0, "LauncherApplication"

    const-string v1, "waitForLaunch thread is main"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const/4 v0, 0x1

    return v0

    .line 3411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVMCapable()Z
    .locals 2

    .line 3722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 3723
    const/4 v0, 0x1

    return v0

    .line 3725
    :cond_0
    sget-boolean v0, Landroidx/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    return v0
.end method

.method private keepFgServiceIfWeCan(I)V
    .locals 5
    .param p1, "preloadFlag"    # I

    .line 1836
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_1

    .line 1838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 1840
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.alipay.android.launcher.service.WonderfulService"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 1842
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1843
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v4, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$11;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$11;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v1, v3, v4, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->superBindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1856
    nop

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    return-void

    .line 1854
    :catchall_0
    move-exception v0

    .line 1855
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1856
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 1857
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 1858
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-class v4, Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->startAsFgOrStop(Landroid/content/Context;ZLandroid/content/Intent;)Z

    return-void

    .line 1860
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1861
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->deleteChannel()V

    .line 1863
    :cond_2
    return-void
.end method

.method private launcherApplicationAgentPostInit()V
    .locals 3

    .line 2350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    const-string v1, "postInit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    goto :goto_0

    .line 2351
    :catch_0
    move-exception v0

    .line 2352
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    const-string v2, "LauncherActivityAgent postInit"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2355
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->afterSetupApplication()V

    .line 2356
    return-void
.end method

.method private launcherApplicationAgentRestoreState(Z)V
    .locals 6
    .param p1, "foreground"    # Z

    .line 2338
    const-string v0, "restoreState"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2345
    return-void

    .line 2339
    :catchall_0
    move-exception v1

    .line 2341
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2344
    return-void

    .line 2342
    :catchall_1
    move-exception v0

    .line 2343
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2346
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private loadLib(Ljava/lang/String;)Z
    .locals 10

    .line 2360
    const-string v0, ".so"

    const-string v1, "lib"

    const-string v2, ""

    const-string v3, "LauncherApplication"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    goto/16 :goto_4

    .line 2361
    :catchall_0
    move-exception v5

    .line 2362
    const-string v6, "mytest"

    const-string v7, "loadlibrary error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2364
    :try_start_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v6}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->g()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v6, :cond_3

    .line 2366
    const/4 v6, 0x0

    .line 2368
    :try_start_2
    iget-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 2369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2371
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v0

    .line 2368
    invoke-interface {v7, v8, p1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2372
    if-nez p1, :cond_0

    .line 2373
    return v4

    .line 2376
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2377
    :try_start_3
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 2379
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2386
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2389
    :goto_0
    goto :goto_4

    .line 2387
    :catch_0
    move-exception p1

    .line 2388
    :try_start_5
    invoke-static {v3, v2, p1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_0

    .line 2380
    :catchall_1
    move-exception p1

    move-object v6, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 2381
    :goto_1
    :try_start_6
    invoke-static {v3, v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2384
    if-eqz v6, :cond_1

    .line 2386
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2389
    goto :goto_2

    .line 2387
    :catch_1
    move-exception p1

    .line 2388
    :try_start_8
    invoke-static {v3, v2, p1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2382
    :cond_1
    :goto_2
    return v4

    .line 2384
    :catchall_3
    move-exception p1

    if-eqz v6, :cond_2

    .line 2386
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2389
    goto :goto_3

    .line 2387
    :catch_2
    move-exception v0

    .line 2388
    :try_start_a
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2389
    :cond_2
    :goto_3
    throw p1

    .line 2393
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2398
    nop

    .line 2400
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result p1

    .line 2401
    const/16 v0, 0x40

    if-ne p1, v0, :cond_4

    .line 2402
    return v4

    .line 2404
    :cond_4
    const/4 p1, 0x1

    return p1

    .line 2395
    :catchall_4
    move-exception p1

    .line 2396
    invoke-static {v3, v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2397
    return v4
.end method

.method private onProcessCreate()V
    .locals 10

    .line 2756
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2757
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v3, v1

    .line 2759
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v3, v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "process.start.lifecycle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 2761
    .local v4, "processLifeCycleClass":Ljava/lang/String;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 2762
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2763
    const-string v5, "onCreate"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2764
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v6, v5, v9

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2769
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "processLifeCycleClass":Ljava/lang/String;
    :cond_0
    return-void

    .line 2767
    :catchall_0
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2770
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private preHandlePreloadProcedure()Z
    .locals 4

    .line 1392
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_PRELOAD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1395
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1397
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPreloadActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    goto :goto_0

    .line 1398
    :catchall_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherApplication"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1403
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    .line 1405
    .local v0, "preloadFlag":I
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->restartProcessWithInstrumentationIfNeed(I)V

    .line 1406
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->keepFgServiceIfWeCan(I)V

    .line 1408
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPreloadLaunch()Z

    move-result v2

    .line 1409
    .local v2, "isPreloadProcedure":Z
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_1

    .line 1410
    const/4 v2, 0x0

    .line 1411
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1413
    :cond_1
    return v2
.end method

.method private preReadSp()V
    .locals 2

    .line 943
    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/LaunchStrategy;->PRELOAD_DOWNGRADE:Z

    if-eqz v0, :cond_0

    .line 944
    return-void

    .line 946
    :cond_0
    const-string v0, "perf_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 947
    const-string v0, "framework_safeguard_preferences"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 948
    const-string v0, "framework_preferences"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 949
    const-string v0, "com.eg.android.AlipayGphone_config"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 950
    const-string v0, "DynamicRelease"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 951
    const-string v0, "CubeStrategy"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 952
    const-string v0, "locale"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 953
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 954
    return-void
.end method

.method private preloadResource()V
    .locals 3

    .line 3523
    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/LaunchStrategy;->PRELOAD_DOWNGRADE:Z

    if-eqz v0, :cond_0

    .line 3524
    return-void

    .line 3526
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3527
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "quinox_preload_resource"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "LauncherApplication"

    if-nez v0, :cond_1

    .line 3528
    const-string v0, "quinox preload resource, but config say we can not do it."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    return-void

    .line 3531
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    .line 3532
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v0, v2, :cond_2

    .line 3533
    const-string v0, "preload resource, but detect upgrade/new/downgrade, ignore."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    return-void

    .line 3536
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$18;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$18;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    const-string v2, "resource-preload"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3550
    :cond_3
    return-void
.end method

.method private prepare(Z)V
    .locals 7
    .param p1, "preInstall"    # Z

    .line 1500
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LauncherApplication.Init"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1501
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1502
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1504
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1506
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPrepareThread(Ljava/lang/Thread;)V

    .line 1508
    const-wide/16 v3, 0x0

    .line 1510
    .local v3, "timeDelayed":J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->isLastProcessStartupCrash()Z

    move-result v5

    const-string v6, "LauncherApplication"

    if-eqz v5, :cond_0

    .line 1511
    const-wide/16 v3, 0xbb8

    .line 1512
    const-string v5, "internalPrepare delay 3s for last startupCrash"

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isDynamicReleaseLaunch()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1516
    const-string v5, "internalPrepare delay 5s for launch from DynamicRelease"

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-wide/16 v3, 0x1388

    .line 1519
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPreloadLaunch()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1520
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 1521
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1522
    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->recoverBlackListComponentStateIfNeed(Landroid/content/Context;Ljava/util/Map;)V

    .line 1525
    :cond_3
    :goto_0
    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;

    invoke-direct {v1, p0, p1, v2}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;ZLandroid/os/HandlerThread;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1555
    return-void
.end method

.method private processCreate()V
    .locals 10

    .line 2773
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2775
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2776
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v3, v1

    .line 2778
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v3, v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "process.create.worker"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 2780
    .local v4, "delayClass":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2781
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2782
    const-string v5, "run"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2783
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v6, v5, v9

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "delayClass":Ljava/lang/String;
    :cond_0
    return-void

    .line 2786
    :catchall_0
    move-exception v0

    .line 2787
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2790
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private processStart()V
    .locals 11

    .line 2727
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v0

    const-string v1, "run"

    const-string v2, "mytest"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 2729
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v5

    .line 2730
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v7, v5

    .line 2732
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v7, v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "process.start.worker"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2734
    .local v0, "delayClass":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2735
    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v3

    invoke-virtual {v8, v1, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2736
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v8, v4, v3

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    .end local v0    # "delayClass":Ljava/lang/String;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void

    .line 2738
    :catchall_0
    move-exception v0

    .line 2739
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "processDelay"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2740
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 2743
    :cond_1
    :try_start_1
    const-string v0, "com.alipay.mobile.quinox.splash.NonPushProcStarter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v6, v5

    .line 2744
    .local v6, "clazz":Ljava/lang/Class;
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v5

    .line 2745
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v7, v4, v3

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2750
    nop

    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "clazz":Ljava/lang/Class;
    return-void

    .line 2748
    :catchall_1
    move-exception v0

    .line 2749
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "NonPushProcStarter"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2752
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 2746
    :catch_0
    move-exception v0

    .line 2750
    return-void
.end method

.method private registerOtherProcessExceptionHandler()V
    .locals 1

    .line 3276
    new-instance v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$17;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$17;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3320
    return-void
.end method

.method private replaceResource(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 3029
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3031
    .local v1, "mResourcesField":Ljava/lang/reflect/Field;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3032
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3033
    return-void
.end method

.method private restartProcessWithInstrumentationIfNeed(I)V
    .locals 13
    .param p1, "preloadFlag"    # I

    const-string v0, "LauncherApplication"

    .line 1417
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1419
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_7

    .line 1420
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->getInstance()Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1421
    .local v3, "current":Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;
    move-object v3, v1

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 1423
    const/4 v1, 0x0

    .line 1424
    .local v1, "isPushExist":Z
    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    move-object v6, v2

    .line 1425
    .local v6, "activityManager":Landroid/app/ActivityManager;
    move-object v6, v5

    if-eqz v5, :cond_2

    .line 1426
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move-object v7, v2

    .line 1427
    .local v7, "runningAppProcessInfos":Ljava/util/List;
    move-object v7, v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 1428
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1429
    .local v5, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, ":push"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1430
    move v1, v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1436
    .end local v5    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "runningAppProcessInfos":Ljava/util/List;
    :cond_1
    move-object v4, v2

    goto :goto_0

    .line 1425
    :cond_2
    move-object v4, v2

    move-object v7, v4

    .line 1436
    :cond_3
    :goto_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1437
    .local v7, "args":Landroid/os/Bundle;
    move-object v7, v5

    const-string v8, "preload_origin_preload_by"

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCommonPreloadBy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v5, "preload_origin_push_exist"

    invoke-virtual {v7, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1439
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v5

    const-string v8, "ComponentName"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1440
    .local v4, "component":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1442
    .local v5, "cls":Ljava/lang/Class;
    const-class v8, Landroid/app/Service;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1443
    const-string v8, "preload_origin_component"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v8

    const-string v9, "ActionName"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v2

    .line 1445
    .local v9, "action":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1446
    const-string v8, "preload_origin_action"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "start PreloadInstrumentation, originComponent:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " originAction:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isPushExist:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-class v12, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v10, v2, v7}, Lcom/alipay/mobile/quinox/LauncherApplication;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1450
    nop

    .end local v9    # "action":Ljava/lang/String;
    return-void

    .line 1451
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "do not support "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to start PreloadInstrumentation."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    .end local v1    # "isPushExist":Z
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "args":Landroid/os/Bundle;
    return-void

    .line 1454
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->restartComponent(Landroid/content/Context;)V

    .line 1456
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->isOriginPushExist()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1457
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->startPushWhenPreloadAndWeCan(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1461
    .end local v3    # "current":Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;
    :catchall_0
    move-exception v1

    .line 1462
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1463
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    return-void

    .line 1465
    :cond_8
    :goto_2
    return-void
.end method

.method private setUpStrictMode(Z)V
    .locals 3
    .param p1, "isDebug"    # Z

    .line 3323
    if-eqz p1, :cond_0

    .line 3324
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 3326
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 3327
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3324
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3329
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 3330
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 3331
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 3332
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 3329
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3336
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 3337
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1

    .line 3338
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    const/4 v1, 0x0

    .line 3339
    .local v1, "origin":Landroid/os/StrictMode$VmPolicy;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 3342
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3346
    .local v0, "vmPolicyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    :try_start_1
    const-string v2, "disableDeathOnFileUriExposure"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3351
    goto :goto_0

    .line 3347
    :catchall_0
    move-exception v2

    .line 3349
    :try_start_2
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 3350
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    move-object v0, v2

    .line 3352
    :goto_0
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 3353
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3358
    .end local v0    # "vmPolicyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    .end local v1    # "origin":Landroid/os/StrictMode$VmPolicy;
    :cond_1
    return-void

    .line 3356
    :catchall_1
    move-exception v0

    .line 3357
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3359
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private setupApplication(Z)V
    .locals 10
    .param p1, "preload"    # Z

    const-string v0, "framework_preInit"

    const-string v1, "time_startup_sub"

    const-string v2, "LauncherApplication"

    .line 2434
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v5

    const-string v6, "pre_setupApplication"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2435
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    if-nez v5, :cond_0

    .line 2437
    new-instance v5, Lcom/alipay/mobile/quinox/BundleContext;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/quinox/BundleContext;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    .line 2440
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentApplication:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2442
    .local v5, "clazz":Ljava/lang/Class;
    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 2444
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "startup : mAgentApplication\'s ClassLoader : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/app/Application;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 2448
    .local v8, "constructor":Ljava/lang/reflect/Constructor;
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v9, v6, v7

    iget-object v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    aput-object v9, v6, v4

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 2442
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_1
    move-object v8, v3

    .line 2451
    :goto_0
    if-eqz p1, :cond_2

    .line 2452
    const-string v0, "preload"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v8

    .line 2453
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2454
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    return-void

    .line 2458
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->beforeSetupApplication()V

    .line 2461
    const-string v6, "preInit"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2462
    .local v8, "method":Ljava/lang/reflect/Method;
    move-object v8, v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2463
    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2465
    const-string v0, "t_agentinit"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentApplication:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".init()"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string v0, "init"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2471
    move-object v6, v0

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2472
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v7, "framework_init"

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2474
    const-string v0, "load_services"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setupApplication() error."

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2478
    const-string v1, "SetupApplicationError"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 2480
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 2482
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupBerserker()V
    .locals 0

    .line 2613
    return-void
.end method

.method private setupClassLoader()V
    .locals 5

    .line 2556
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->emptyInit()V

    .line 2558
    const-class v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 2559
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    new-instance v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0}, Ldalvik/system/PathClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;-><init>(Ljava/lang/ClassLoader;Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ldalvik/system/PathClassLoader;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 2561
    const-class v2, Ljava/lang/ClassLoader;

    const-string v3, "parent"

    invoke-static {v2, v0, v3, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2566
    .end local v0    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    nop

    .line 2567
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->setHostClassLoader(Ljava/lang/ClassLoader;)V

    .line 2568
    return-void

    .line 2562
    :catchall_0
    move-exception v0

    .line 2563
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to setupClassLoader()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2564
    .local v1, "exception":Ljava/lang/RuntimeException;
    const-string v2, "LauncherApplication"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2565
    throw v1
.end method

.method private setupCrashSdk4IsolatedProcess()V
    .locals 8

    .line 2572
    :try_start_0
    const-string v0, "com.alipay.mobile.common.logging.compat.IsolateCrashSdkInitializer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2573
    .local v2, "clazz_IsolateCrashSdkInitializer":Ljava/lang/Class;
    const-string v3, "initialize"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2574
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    nop

    .end local v2    # "clazz_IsolateCrashSdkInitializer":Ljava/lang/Class;
    return-void

    .line 2575
    :catchall_0
    move-exception v0

    .line 2576
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2578
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private setupCube()V
    .locals 6

    .line 2585
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cube_sample"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2586
    if-eqz v0, :cond_0

    .line 2587
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2588
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2589
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupCube randome= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mytest"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    rem-int/2addr v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2591
    return-void

    .line 2595
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.mobile.cube.CubeSetup"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2596
    const-string v1, "setup"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2597
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    return-void

    .line 2598
    :catchall_0
    move-exception v0

    .line 2599
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2601
    return-void
.end method

.method private setupFgBgWatcher()V
    .locals 8

    .line 2679
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.mobile.common.fgbg.ProcessFgBgWatcher"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2680
    .local v2, "fgbgWatcher":Ljava/lang/Class;
    const-string v3, "init"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Application;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 2681
    .local v3, "init":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2682
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v4, v0, v7

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2685
    nop

    .end local v2    # "fgbgWatcher":Ljava/lang/Class;
    .end local v3    # "init":Ljava/lang/reflect/Method;
    return-void

    .line 2683
    :catchall_0
    move-exception v0

    .line 2684
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2686
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private setupGestureMonitor()V
    .locals 8

    .line 2690
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.mobile.security.gesture.monitor.ProcessGestureMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2691
    .local v2, "fgbgWatcher":Ljava/lang/Class;
    const-string v3, "init"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Application;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 2692
    .local v3, "init":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2693
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v4, v0, v7

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    nop

    .end local v2    # "fgbgWatcher":Ljava/lang/Class;
    .end local v3    # "init":Ljava/lang/reflect/Method;
    return-void

    .line 2694
    :catchall_0
    move-exception v0

    .line 2695
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2697
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static setupJit()V
    .locals 8

    const-string v0, "JITDisable"

    .line 2707
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    .line 2708
    return-void

    .line 2710
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 2711
    .local v3, "isArt":Z
    if-eqz v1, :cond_1

    .line 2712
    return-void

    .line 2714
    :cond_1
    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    .line 2716
    .local v5, "clazzVMRuntime":Ljava/lang/Class;
    move-object v5, v1

    const-string v6, "getRuntime"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2717
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2718
    .local v4, "runtime":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "disableJitCompilation"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2719
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    .end local v3    # "isArt":Z
    .end local v4    # "runtime":Ljava/lang/Object;
    .end local v5    # "clazzVMRuntime":Ljava/lang/Class;
    return-void

    .line 2721
    :catchall_0
    move-exception v1

    .line 2722
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "setupJit error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2724
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private setupLeakCanary()V
    .locals 6

    .line 3363
    :try_start_0
    const-string v0, "com.alipay.android.phone.devtool.leakreporter.ApplicationInjector"

    const-string v1, "installLeakCanary"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    return-void

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupLeakCanary Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherApplication"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private setupLocale()V
    .locals 11

    const-string v0, "LauncherApplication"

    .line 2834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2836
    .local v1, "startTime":J
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b()Ldalvik/system/PathClassLoader;

    move-result-object v3

    const-string v4, "com.alipay.mobile.framework.locale.LocaleHelper"

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 2839
    .local v5, "clazz":Ljava/lang/Class;
    move-object v5, v3

    const-string v6, "getInstance"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v6, v4

    .line 2840
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v6, v3

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2841
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2843
    .local v3, "instance":Ljava/lang/Object;
    const-string v4, "initSavedLocale"

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/app/Application;

    aput-object v10, v9, v7

    invoke-virtual {v5, v4, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2844
    move-object v6, v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2845
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v8, v4, v7

    invoke-virtual {v6, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    const-string v4, "setupLocale"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 2849
    :catch_0
    move-exception v3

    .line 2850
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setupLocaleHelper"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2852
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2853
    .local v3, "stepTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "setupLocale: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mytest"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void
.end method

.method private setupLogging()V
    .locals 12

    const-string v0, "noteLoggerInited"

    const-string v1, "LauncherApplication"

    .line 2626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2628
    .local v2, "startTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 2629
    .local v6, "binderClazz":Ljava/lang/Class;
    const-string v7, "init"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2630
    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Init MonitorLogger: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v7, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->init()V

    .line 2635
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2637
    invoke-static {}, Lcom/alipay/dexpatch/compat/a;->a()Lcom/alipay/dexpatch/compat/a;

    move-result-object v4

    move-object v7, v5

    .line 2638
    .local v7, "dexPatchExceptionHandler":Lcom/alipay/dexpatch/compat/a;
    move-object v7, v4

    if-eqz v4, :cond_1

    .line 2639
    invoke-virtual {v7}, Lcom/alipay/dexpatch/compat/a;->b()V

    goto :goto_0

    .line 2635
    .end local v7    # "dexPatchExceptionHandler":Lcom/alipay/dexpatch/compat/a;
    :cond_0
    move-object v7, v5

    .line 2643
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/dexpatch/compat/b;->a()V

    .line 2644
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v8, "com.alipay.dexpatch.compat.LoggerImpl"

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2645
    .local v7, "clazz_LoggerImpl":Ljava/lang/Class;
    new-array v8, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2646
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v8, "com.alipay.dexpatch.compat.ContextImpl"

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2648
    const-string v8, "setOuterEnvInited"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2649
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2650
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v8, "com.alipay.dexpatch.compat.MonitorImpl"

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2651
    new-array v8, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2652
    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    nop

    .end local v6    # "binderClazz":Ljava/lang/Class;
    .end local v7    # "clazz_LoggerImpl":Ljava/lang/Class;
    goto :goto_1

    .line 2653
    :catchall_0
    move-exception v0

    .line 2654
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2656
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setupLogging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mytest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    return-void
.end method

.method private setupMonitor()V
    .locals 10

    .line 2660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2662
    .local v0, "startTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.alipay.mobile.monitor.api.ClientMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 2663
    .local v4, "binderClazz":Ljava/lang/Class;
    const-string v5, "createInstance"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v5, v3

    .line 2664
    .local v5, "createInstanceMethod":Ljava/lang/reflect/Method;
    move-object v5, v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2665
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v6, v2, v9

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    nop

    .end local v4    # "binderClazz":Ljava/lang/Class;
    .end local v5    # "createInstanceMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 2666
    :catchall_0
    move-exception v2

    .line 2667
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "LauncherApplication"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2670
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2671
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->beforeSetupApplication()V

    .line 2673
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2674
    .local v2, "endTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setupMonitor cost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mytest"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return-void
.end method

.method private setupPackages()Z
    .locals 4

    .line 2529
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->initBundleManager()V

    .line 2531
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mDexPatch:Lcom/alipay/mobile/quinox/hotpath/a;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 2534
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 2536
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a()Z

    move-result v0

    .line 2538
    .local v0, "bRet":Z
    new-instance v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Lcom/alipay/mobile/quinox/bundle/BundleManager;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 2540
    new-instance v1, Lcom/alipay/mobile/quinox/a;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/quinox/a;-><init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/resources/ResourcesManager;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->init(Lcom/alipay/mobile/quinox/api/QuinoxAgent;)V

    .line 2542
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-static {v1}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->setBundleManager(Ljava/lang/Object;)V

    .line 2543
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/hotpath/IRBridge;->setBundleManager(Lcom/alipay/mobile/quinox/bundle/BundleManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    nop

    .line 2548
    return v0

    .line 2544
    .end local v0    # "bRet":Z
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LauncherApplication"

    const-string v2, "BundleManager.init() error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2546
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupPermissionGate()V
    .locals 3

    .line 3509
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/mpaas/privacypermission/PermissionGate;->createInstance(Landroid/app/Application;)V

    .line 3510
    invoke-static {}, Lcom/mpaas/privacypermission/PermissionGate;->getInstance()Lcom/mpaas/privacypermission/PermissionGate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mpaas/privacypermission/PermissionGate;->registerPrivacyCallback(Lcom/mpaas/privacypermission/PrivacyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3514
    return-void

    .line 3512
    :catchall_0
    move-exception v0

    .line 3513
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    const-string v2, "Failed to setupPermissionGate()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3515
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private startPushWhenPreloadAndWeCan(Z)V
    .locals 6
    .param p1, "force"    # Z

    const-string v0, "LauncherApplication"

    .line 1866
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 1868
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 1869
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 1870
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.alipay.pushsdk.push.NotificationService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "preload_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCommonPreloadBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1872
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 1874
    .local v1, "context":Landroid/content/Context;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1877
    :try_start_1
    new-instance v4, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$12;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$12;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1888
    return-void

    .line 1886
    :catchall_0
    move-exception v4

    .line 1887
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1904
    .end local v4    # "e":Ljava/lang/Throwable;
    return-void

    .line 1889
    :catchall_1
    move-exception v4

    .line 1890
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1892
    :try_start_3
    new-instance v5, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$13;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$13;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1903
    return-void

    .line 1901
    :catchall_2
    move-exception v3

    .line 1902
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1906
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private stopHookDvmLite()V
    .locals 4

    .line 1692
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1693
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1695
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->removeConservativeStartupLite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    goto :goto_0

    .line 1696
    :catchall_0
    move-exception v1

    .line 1697
    .local v1, "thr":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "LauncherApplication"

    const-string v3, "stopHookDvm error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1699
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1700
    const-string v1, "LauncherApplication"

    const-string v2, "hookdvm remove"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private updateBundleResources()V
    .locals 3

    .line 3257
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 3259
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3260
    .local v0, "newConfiguration":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3261
    .local v1, "newDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3262
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSavedLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    .line 3264
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3266
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3270
    .end local v0    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "newDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    return-void

    .line 3268
    :catchall_0
    move-exception v0

    .line 3269
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    const-string v2, "update configuration failed"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3272
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private declared-synchronized wairForLaunch(Landroid/content/Intent;)V
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;

    monitor-enter p0

    .line 3416
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 3417
    monitor-exit p0

    return-void

    .line 3419
    :cond_0
    :try_start_1
    const-string v0, "com.eg.android.AlipayGphone"

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3420
    const-string v0, "LauncherApplication"

    const-string v1, "wairForLaunch !Alipay"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3421
    monitor-exit p0

    return-void

    .line 3423
    .end local p0    # "this":Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x0

    move-object v2, v1

    .line 3424
    .local v2, "spf":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 3425
    monitor-exit p0

    return-void

    .line 3427
    :cond_2
    :try_start_3
    const-string v0, "push_delay_flag"

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3428
    if-nez v0, :cond_3

    .line 3429
    const-string v0, "LauncherApplication"

    const-string v1, "wairForLaunch needDelay is false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3430
    monitor-exit p0

    return-void

    .line 3432
    :cond_3
    :try_start_4
    const-string v0, "performance_startup"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3433
    const-string v0, "LauncherApplication"

    const-string v1, "wairForLaunch contains performance_startup"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3434
    monitor-exit p0

    return-void

    .line 3437
    :cond_4
    if-nez p1, :cond_5

    .line 3438
    :try_start_5
    const-string v0, "LauncherApplication"

    const-string v1, "waitForLaunch service is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3439
    monitor-exit p0

    return-void

    .line 3441
    :cond_5
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v1

    .line 3442
    .local v3, "componentName":Landroid/content/ComponentName;
    move-object v3, v0

    if-nez v0, :cond_6

    .line 3443
    monitor-exit p0

    return-void

    .line 3445
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 3446
    .local v1, "className":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_7

    .line 3447
    monitor-exit p0

    return-void

    .line 3450
    :cond_7
    :try_start_8
    const-string v0, "com.alipay.pushsdk.push.NotificationService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.alipay.mobile.common.logging.process.LogServiceInPushProcess"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.alipay.pushsdk.push.AppInfoRecvIntentService"

    .line 3451
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v0, :cond_8

    .line 3452
    monitor-exit p0

    return-void

    .line 3455
    :cond_8
    :try_start_9
    const-string v0, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first start service is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " delay 1s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3457
    const-wide/16 v4, 0x3e8

    const/4 v0, 0x0

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3461
    :try_start_b
    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3462
    monitor-exit p0

    return-void

    .line 3458
    :catchall_0
    move-exception v4

    .line 3459
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_c
    const-string v5, "LauncherApplication"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3461
    .end local v4    # "e":Ljava/lang/Throwable;
    :try_start_d
    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mWaitForLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3415
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "spf":Landroid/content/SharedPreferences;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local p1    # "service":Landroid/content/Intent;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBootListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "obserer"    # Ljava/util/Observer;

    .line 2417
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->addObserver(Ljava/util/Observer;)V

    .line 2418
    return-void
.end method

.method public addChromeResources(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "res"    # Ljava/lang/String;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .line 2860
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->addChromeResources(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    .line 2861
    return-void
.end method

.method public addListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 2409
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->addObserver(Ljava/util/Observer;)V

    .line 2410
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 18

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-wide v4, v0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCurrentProcessStartupTime:J

    iput-wide v4, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCurrentProcessStartupTime:J

    .line 361
    iput-object v2, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBaseContext:Landroid/content/Context;

    .line 363
    sput-object v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->sInstance:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mMainHandler:Landroid/os/Handler;

    .line 366
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSharedPreferenceWrapper:Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    .line 368
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->setContext(Landroid/app/Application;)V

    .line 374
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    .line 375
    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 376
    sput-boolean v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_ALIPAY:Z

    .line 378
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startup : processName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LauncherApplication"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v5, Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    iget-object v7, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v5, v7, v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 383
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->checkStrategy(Landroid/content/Context;)V

    .line 385
    sget-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_PROFILE:Z

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->initSO(Landroid/content/Context;)V

    .line 391
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->replaceJitCompileMethod()V

    .line 394
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->replaceProfileThis()V

    .line 397
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->replaceProcessProfilingInfo()V

    .line 400
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->replaceJitAddSamples()V

    .line 403
    const/16 v0, 0x1a0a

    invoke-static {v5, v0}, Lcom/alipay/profiledealer/ProfileDealer;->setReplaceAddSampleCount(ZS)V

    .line 405
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->stopDumpProfileDelayed(Landroid/content/Context;)V

    .line 409
    :cond_2
    sget-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->RESTORE_PROFILE:Z

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->restorePrimaryProf(Landroid/content/Context;)V

    .line 413
    :cond_3
    sget-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->TRY_COMPILE:Z

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->profileCompile(Landroid/content/Context;)Z

    .line 417
    :cond_4
    sget-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_LITE_PROFILE:Z

    if-eqz v0, :cond_5

    .line 418
    invoke-static {}, Lcom/alipay/profiledealer/ProfileUtil;->startTinyAppDelayed()V

    .line 422
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->reset()V

    .line 423
    const-string v7, "pre_launch"

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->start(Ljava/lang/String;)V

    .line 424
    const-string v8, "setup_logging"

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isIsolatedProcess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupCrashSdk4IsolatedProcess()V

    .line 428
    return-void

    .line 458
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->defaultSp:Landroid/content/SharedPreferences;

    .line 462
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->init(Landroid/content/Context;)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupLogging()V

    .line 468
    sget-boolean v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 469
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v9}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;->shouldSuicide(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 470
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    .line 471
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "killSelfProcessOnly: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    if-eqz v4, :cond_8

    .line 473
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 475
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 477
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;->killSelfNoRestart(Landroid/content/Context;)V

    .line 479
    return-void

    .line 482
    :cond_9
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    .line 488
    :cond_a
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 491
    :cond_b
    const/16 v0, -0x14

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    .line 497
    :cond_c
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_d

    .line 498
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isVMCapable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupBerserker()V

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isBerserkerProcess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 502
    return-void

    .line 507
    :cond_d
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 508
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->defaultSp:Landroid/content/SharedPreferences;

    const-string v9, "enable_quinox_jerk_monitor"

    invoke-interface {v0, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 509
    if-eqz v0, :cond_e

    .line 510
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/e;->a()Lcom/alipay/mobile/quinox/framemonitor/e;

    move-result-object v0

    iget-object v9, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Landroid/content/Context;)V

    .line 514
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 515
    const-string v8, "pre_watch"

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    .line 564
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isSSSProcess()Z

    move-result v0

    if-nez v0, :cond_f

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupInstrumentation()Z

    .line 571
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupJit()V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "PathClassLoader: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/compat/a;->a(Ljava/lang/ClassLoader;)V

    .line 579
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->init()V

    .line 581
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getLastProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->setLastRunningProductVersion(Ljava/lang/String;)V

    .line 582
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getLastCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->setLastCodePath(Ljava/lang/String;)V

    .line 585
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    const-string v3, "framework_preferences"

    const-string v9, "ensure_native_lib"

    const-string v10, "event"

    const-string v11, "com.alipay.mobile.common.logging.util.perf.EventTrigger"

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    .line 697
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->registerOtherProcessExceptionHandler()V

    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->initDebug()V

    goto/16 :goto_6

    .line 586
    :cond_11
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->reset()V

    .line 587
    const-string v0, "time_startup_pre"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->start(Ljava/lang/String;)V

    .line 588
    const-string v15, "pre_process_startup"

    invoke-static {v0, v15}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/alipay/mobile/quinox/ExceptionHandler;->getInstance()Lcom/alipay/mobile/quinox/ExceptionHandler;

    move-result-object v0

    iget-object v15, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v15}, Lcom/alipay/mobile/quinox/ExceptionHandler;->setUp(Landroid/content/Context;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 593
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/dexpatch/compat/a;->a(Landroid/content/Context;)Lcom/alipay/dexpatch/compat/a;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/alipay/dexpatch/compat/a;->g()Ljava/lang/String;

    move-result-object v15

    .line 596
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const-string v17, "keybiztrace"

    const-string v12, "FRAME_DEXPATCH"

    const-string v13, "BIZ_FRAME"

    if-nez v16, :cond_12

    .line 598
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 599
    const-string v5, "stackFrame"

    invoke-interface {v14, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v5, "1000"

    invoke-static {v13, v12, v5, v14}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "report FRAME_DEXPATCH 1000"

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/dexpatch/compat/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 603
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 605
    :cond_12
    invoke-virtual {v0}, Lcom/alipay/dexpatch/compat/a;->d()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 607
    const-string v5, "1001"

    invoke-static {v13, v12, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v5, "report FRAME_DEXPATCH 1001"

    invoke-static {v6, v5}, Lcom/alipay/dexpatch/compat/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 610
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 612
    :cond_13
    invoke-virtual {v0}, Lcom/alipay/dexpatch/compat/a;->f()V

    .line 615
    :cond_14
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->init(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 618
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 620
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 630
    :cond_15
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "6.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "5.1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 632
    :cond_16
    :try_start_1
    const-string v0, "android.widget.DQInfoCustom"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 635
    :catchall_1
    move-exception v0

    .line 636
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 633
    :catch_0
    move-exception v0

    .line 637
    :goto_2
    nop

    .line 643
    :cond_17
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->initDebug()V

    .line 649
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_19

    .line 650
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 651
    invoke-static {v7, v9}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V

    .line 653
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processStartupTime:J

    .line 655
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 658
    const/4 v5, 0x3

    :try_start_2
    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v4

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v0, v8

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v0, v8

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v5, v8, v4

    const-string v5, "clientLaunch"

    const/4 v12, 0x1

    aput-object v5, v8, v12

    const/4 v5, 0x0

    const/4 v12, 0x2

    aput-object v5, v8, v12

    invoke-static {v11, v10, v0, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    goto :goto_4

    .line 659
    :catchall_2
    move-exception v0

    .line 660
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 664
    :cond_18
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    sput-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 665
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-wide v12, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCurrentProcessStartupTime:J

    iput-wide v12, v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mProcessAttachTime:J

    .line 666
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setupNativeCrashEnv(Landroid/content/Context;)V

    .line 667
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->analyzeNativeCrash(Landroid/content/Context;)V

    .line 670
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;->bypassCrashes(Landroid/content/Context;)V

    .line 673
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-gt v0, v5, :cond_1a

    .line 675
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/quinox/linearalloc/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/linearalloc/a;-><init>()V

    invoke-static {v0}, Lcom/linearallocpatch/c;->a(Lcom/linearallocpatch/b;)V

    .line 676
    new-instance v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$2;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$2;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-static {v0}, Lcom/linearallocpatch/c;->a(Lcom/linearallocpatch/a;)V

    .line 682
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/linearallocpatch/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 683
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/linearallocpatch/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 686
    goto :goto_5

    .line 684
    :catchall_3
    move-exception v0

    .line 685
    const-string v5, "LinearAllocPatch error"

    invoke-static {v6, v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    :cond_1a
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->fixLag(Landroid/content/Context;)V

    .line 694
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v5, v3, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 695
    const-string v5, "Framework_mContextLockOpt"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    .line 696
    nop

    .line 701
    :goto_6
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 703
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;->bypassCrashes(Landroid/content/Context;)V

    .line 706
    const/4 v5, 0x3

    :try_start_4
    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v4

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v0, v8

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v0, v8

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v5, v8, v4

    const-string v5, "clientLaunch"

    const/4 v12, 0x1

    aput-object v5, v8, v12

    const/4 v5, 0x0

    const/4 v12, 0x2

    aput-object v5, v8, v12

    invoke-static {v11, v10, v0, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v4

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v0, v8

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v0, v8

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v5, v8, v4

    const-string v5, "clientLaunchFinish"

    const/4 v12, 0x1

    aput-object v5, v8, v12

    const/4 v5, 0x0

    const/4 v12, 0x2

    aput-object v5, v8, v12

    invoke-static {v11, v10, v0, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 710
    goto :goto_7

    .line 708
    :catchall_4
    move-exception v0

    .line 709
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    :cond_1b
    :goto_7
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 715
    :cond_1c
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->scanNativeCrashes(Landroid/content/Context;Ljava/lang/String;)V

    .line 720
    :cond_1d
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v5, "com.lbe.parallel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.qihoo.magic"

    .line 723
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.dobe.sandbox"

    .line 724
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.excelliance.dualaid"

    .line 725
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.ppt.double_assistant"

    .line 726
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.doubleopen"

    .line 727
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.lody.virtual.client"

    .line 728
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.bfire.da.nui"

    .line 729
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.plda.dualapp"

    .line 730
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.qgwapp.shadowside"

    .line 731
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.qihoo.magicmutiple"

    .line 732
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "io.hello"

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "io.va.exposed"

    .line 734
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.qyqd/virtual"

    .line 735
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "com.deniu.multi"

    .line 736
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "/c.l.a/plugin/"

    .line 737
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "dkmodel"

    .line 738
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "virtual"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 739
    :cond_1e
    const-string v5, "isSandbox"

    const-string v8, "1"

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "running in sandbox, cacheDirPath:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 744
    :cond_1f
    goto :goto_8

    .line 742
    :catchall_5
    move-exception v0

    .line 743
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v5

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "UpgradeHelper: upgrade="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-boolean v8, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-eqz v8, :cond_20

    sget-object v8, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v8, v5, :cond_20

    .line 751
    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/hotpath/c;->a(Landroid/content/Context;Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v5

    .line 752
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->setUpgrade(Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;)V

    .line 757
    :cond_20
    iget-object v8, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 758
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v8

    const-string v10, "framework_safeguard_preferences"

    invoke-virtual {v8, v2, v10, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 759
    const-string v10, "key_check_md5_for_bundles"

    invoke-interface {v8, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    .line 760
    if-eqz v8, :cond_21

    .line 761
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginOpts(Ljava/util/Set;)V

    .line 766
    :cond_21
    iget-object v8, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v8

    const-string v10, "hookdvm"

    if-nez v8, :cond_27

    .line 767
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "mFullCheckBundles = "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/alipay/mobile/quinox/bundle/j;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 771
    sget-object v11, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$20;->$SwitchMap$com$alipay$mobile$quinox$startup$UpgradeHelper$UpgradeEnum:[I

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->ordinal()I

    move-result v5

    aget v5, v11, v5

    const/4 v11, 0x1

    if-eq v5, v11, :cond_24

    const/4 v11, 0x2

    if-eq v5, v11, :cond_24

    const/4 v11, 0x3

    if-eq v5, v11, :cond_23

    const/4 v0, 0x4

    if-eq v5, v0, :cond_22

    goto :goto_9

    .line 787
    :cond_22
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 789
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 790
    const-string v3, "quinox_permission_guard_everytime"

    const/4 v5, 0x1

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 791
    if-eqz v0, :cond_26

    .line 792
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->abolishExecutableAsync(Landroid/content/Context;)V

    goto :goto_9

    .line 784
    :cond_23
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->abolishExecutableAsync(Landroid/content/Context;)V

    .line 785
    goto :goto_9

    .line 774
    :cond_24
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v5

    iget-object v11, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v5, v11, v3, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 775
    const/4 v5, 0x1

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 776
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginLibs(Ljava/util/Set;)V

    .line 778
    :cond_25
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->abolishExecutableAsync(Landroid/content/Context;)V

    .line 779
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 780
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->removeConservativeStartup()V

    .line 800
    :cond_26
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mNativeLibsTimeOnAttachBaseContext:J

    .line 802
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/j;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/j;-><init>()V

    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;)V

    .line 803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mNativeLibsTimeOnAttachBaseContext:J

    sub-long/2addr v11, v13

    iput-wide v11, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mNativeLibsTimeOnAttachBaseContext:J

    .line 804
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 805
    invoke-static {v7, v10}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_27
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    const-string v3, "mytest"

    const-string v5, "perf"

    if-eqz v0, :cond_29

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 809
    invoke-direct {v1, v5}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z

    move-result v0

    .line 810
    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->setLibPerfLoaded(Z)V

    .line 811
    if-eqz v0, :cond_28

    .line 812
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->init()V

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->hookDvmLite()Z

    .line 815
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "hooktime: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v11, v8

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_29
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    const-string v8, "setup_cube"

    if-eqz v0, :cond_2e

    .line 819
    invoke-direct {v1, v5}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z

    move-result v0

    .line 820
    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->setLibPerfLoaded(Z)V

    .line 821
    if-eqz v0, :cond_2b

    .line 822
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->init()V

    .line 823
    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->hookDvmMain()Z

    goto :goto_a

    .line 826
    :cond_2a
    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 828
    :goto_a
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStopJitState(I)V

    .line 831
    :cond_2b
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->safeguardEnter()V

    .line 833
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 834
    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isVMCapable()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 837
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    .line 838
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-boolean v3, v0, Lcom/alipay/mobile/quinox/LauncherApplication;->isInstallMultiDex:Z

    goto/16 :goto_d

    .line 840
    :cond_2c
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/multidex/MultiDex;->sMainProcess:Z

    .line 841
    new-instance v3, Lcom/alipay/mobile/quinox/b;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v3, v5}, Lcom/alipay/mobile/quinox/b;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    .line 844
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/b;->c()Z

    move-result v3

    iput-boolean v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    .line 845
    iget-object v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-boolean v3, v5, Lcom/alipay/mobile/quinox/LauncherApplication;->isInstallMultiDex:Z

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isInstallMultiDex = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-boolean v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    if-nez v3, :cond_2d

    .line 850
    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/b;->d()V

    .line 851
    sput-boolean v4, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    .line 852
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;

    invoke-direct {v4, v1, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V

    const-string v0, "doInstallMultiDex"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 865
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 868
    :cond_2d
    goto/16 :goto_d

    .line 871
    :cond_2e
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isVMCapable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 872
    const-string v0, "no quinoxmultidex"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 875
    :cond_2f
    sput-boolean v4, Landroidx/multidex/MultiDex;->sMainProcess:Z

    .line 876
    new-instance v0, Lcom/alipay/mobile/quinox/b;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v0, v4}, Lcom/alipay/mobile/quinox/b;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    .line 877
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->g()Z

    move-result v0

    .line 878
    invoke-direct {v1, v5}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z

    move-result v4

    .line 879
    invoke-static {v4}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->setLibPerfLoaded(Z)V

    .line 880
    if-eqz v4, :cond_30

    .line 881
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->init()V

    .line 883
    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "isFirst: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 885
    if-eqz v0, :cond_32

    .line 886
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHook()Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v4, :cond_32

    .line 887
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 888
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_32

    .line 890
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 891
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.processName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "othertest"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 894
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    const-string v3, "push"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/String;)V

    .line 895
    goto :goto_c

    .line 897
    :cond_31
    goto :goto_b

    .line 901
    :cond_32
    :goto_c
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/ClassLoader;)V

    goto :goto_d

    .line 903
    :cond_33
    if-eqz v0, :cond_34

    .line 904
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 906
    :cond_34
    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/ClassLoader;)V

    .line 907
    if-eqz v0, :cond_35

    .line 908
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 916
    :cond_35
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->init()V

    .line 918
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v3, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil;->preloadMisc(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PathClassLoader, after addExtraNativeLib: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 927
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 928
    const-string v0, "post_attach"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupPermissionGate()V

    .line 931
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v2, "post_attach"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 932
    const-string v0, "attach2create"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 936
    iget-object v0, v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->isNeedPreloadActivity(Landroid/content/Context;)Z

    move-result v0

    .line 937
    sput-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_PRELOAD:Z

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/AppState;->setPreloadActivityLaunch(Z)V

    .line 939
    :cond_37
    return-void
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 3396
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->interceptWhenPreload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    const-string v0, "LauncherApplication"

    const-string v1, "can\'t bind service of other process when preload and process is background"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3398
    const/4 v0, 0x0

    return v0

    .line 3400
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3401
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->wairForLaunch(Landroid/content/Intent;)V

    .line 3403
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/LauncherApplication;->superBindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public bootFinish()Z
    .locals 1

    .line 2426
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootFinish:Z

    return v0
.end method

.method public cleanPatches()V
    .locals 1

    .line 3374
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    if-eqz v0, :cond_0

    .line 3376
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/hotpath/b;->b()V

    return-void

    .line 3379
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->cleanPatchAtLaunch:Z

    .line 3381
    return-void
.end method

.method public clearCachedBundleResources()V
    .locals 1

    .line 2976
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    if-nez v0, :cond_0

    .line 2977
    return-void

    .line 2980
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->clearCachedBundleResources()V

    .line 2981
    return-void
.end method

.method public endPreloadActivity()V
    .locals 6

    .line 1940
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadingActivity:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/AppState;->setPreloadingActivity(Z)V

    .line 1942
    const-string v0, "com.alipay.mobile.framework.pipeline.BlockablePipelineInvoker"

    const-string v3, "setBlockPipeline"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1943
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    .line 1942
    invoke-static {v0, v3, v4, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$14;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$14;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :cond_0
    return-void

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1960
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public getAgentActivity()Ljava/lang/String;
    .locals 1

    .line 3223
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentActivityLayout()Ljava/lang/String;
    .locals 1

    .line 3230
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mAgentActivityLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 3055
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 3056
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 3058
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBundleContext()Lcom/alipay/mobile/quinox/BundleContext;
    .locals 1

    .line 3216
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    return-object v0
.end method

.method public bridge synthetic getBundleContext()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getBundleContext()Lcom/alipay/mobile/quinox/BundleContext;

    move-result-object v0

    return-object v0
.end method

.method public getBundleManager()Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .locals 1

    .line 3212
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    return-object v0
.end method

.method public bridge synthetic getBundleManager()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getBundleManager()Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v0

    return-object v0
.end method

.method public getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3208
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getBundleManager()Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBundlesManager()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 7

    .line 3621
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3622
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3623
    .local v0, "now":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCacheDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCacheDirUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3624
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCacheDir:Ljava/io/File;

    .line 3625
    iput-wide v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCacheDirUpdateTime:J

    .line 3627
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCacheDir:Ljava/io/File;

    return-object v2

    .line 3629
    .end local v0    # "now":J
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 3650
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 3651
    .local v1, "cr":Landroid/content/ContentResolver;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/ContentResolvers;->fixTargetSdkInParallel(Landroid/content/ContentResolver;)V

    .line 3652
    return-object v1
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 7

    .line 3637
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3639
    .local v0, "now":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalCacheDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalCacheDirUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3640
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalCacheDir:Ljava/io/File;

    .line 3641
    iput-wide v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalCacheDirUpdateTime:J

    .line 3643
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalCacheDir:Ljava/io/File;

    return-object v2

    .line 3645
    .end local v0    # "now":J
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .line 3595
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3596
    const/4 v0, 0x0

    .line 3597
    .local v0, "mapKey":Ljava/lang/String;
    move-object v0, p1

    if-nez p1, :cond_0

    .line 3598
    const-string v0, "type_null_string"

    goto :goto_0

    .line 3599
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3600
    const-string v0, "type_empty_string"

    .line 3602
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalFilesDir:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3603
    .local v1, "targetDir":Ljava/io/File;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3604
    .local v2, "now":J
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalFilesDirUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 3605
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 3606
    move-object v1, v4

    if-eqz v4, :cond_3

    .line 3607
    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalFilesDir:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    :cond_3
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mExternalFilesDirUpdateTime:J

    .line 3611
    :cond_4
    return-object v1

    .line 3613
    .end local v0    # "mapKey":Ljava/lang/String;
    .end local v1    # "targetDir":Ljava/io/File;
    .end local v2    # "now":J
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 7

    .line 3579
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3581
    .local v0, "now":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFilesDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFilesDirUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3582
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperFilesDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFilesDir:Ljava/io/File;

    .line 3583
    iput-wide v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFilesDirUpdateTime:J

    .line 3585
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFilesDir:Ljava/io/File;

    return-object v2

    .line 3587
    .end local v0    # "now":J
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHostClassLoader()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    .locals 1

    .line 3242
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHostClassLoader:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    return-object v0
.end method

.method public bridge synthetic getHostClassLoader()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getHostClassLoader()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOldResources()Landroid/content/res/Resources;
    .locals 1

    .line 3143
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getProcessInfo()Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    .locals 1

    .line 3656
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    return-object v0
.end method

.method public bridge synthetic getProcessInfo()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getProcessInfo()Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 3065
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 3070
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_5

    .line 3071
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootFinish:Z

    if-eqz v1, :cond_4

    .line 3072
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call ApplicationContext.getResources() during setupResource()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_5

    .line 3077
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mGettingWebViewPkgMark:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3078
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    return-object v0

    .line 3080
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupResources(Z)V

    .line 3082
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_5

    .line 3083
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    return-object v0

    .line 3087
    :cond_4
    return-object v0

    .line 3105
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getResourcesManager()Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    .locals 1

    .line 3234
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    return-object v0
.end method

.method public bridge synthetic getResourcesManager()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getResourcesManager()Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 3561
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->recordIfNeed(Ljava/lang/String;I)V

    .line 3563
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mContextLockOpt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3565
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferencesBottom(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 3566
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 3567
    return-object v1

    .line 3571
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperSharedPerferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 3253
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 4

    .line 3114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3116
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3117
    :catchall_0
    move-exception v0

    .line 3118
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3122
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mThemeResource:Landroid/content/res/Resources;

    instance-of v1, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-nez v1, :cond_4

    .line 3123
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mThemeResource:Landroid/content/res/Resources;

    .line 3124
    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 3125
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSuperTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 3126
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    move-object v0, v1

    if-eqz v1, :cond_3

    .line 3127
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3129
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mThemeRes:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3132
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    return v0
.end method

.method public isHacked()Z
    .locals 1

    .line 3147
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHacked:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method public markGettingWebPkg(Z)V
    .locals 2
    .param p1, "doing"    # Z

    .line 2969
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mGettingWebViewPkgMark:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2970
    return-void
.end method

.method public needProcessHostResources()Z
    .locals 4

    .line 2898
    const/4 v0, 0x0

    .line 2899
    .local v0, "preloadCookie":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 2902
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    .line 2903
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2904
    const-string v3, "quinox_preload_cookie_lolipop_mode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 2900
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2901
    const-string v3, "quinox_preload_cookie_lolipop"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2906
    :cond_2
    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3168
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->updateBundleResources()V

    .line 3169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3171
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onConfigurationChanged"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 3172
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3175
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LauncherApplication"

    const-string v3, "onConfigurationChanged()"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    if-eqz v0, :cond_1

    .line 3178
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->setConfigurationChanged(Z)V

    .line 3180
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 12

    .line 1002
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v1, "attach2create"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1003
    const-string v0, "pre_launch"

    const-string v1, "setup_monitor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    if-eqz v2, :cond_1

    .line 1010
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1011
    const-string v5, "framework_start_sync"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1012
    if-eqz v2, :cond_0

    .line 1013
    sput-boolean v3, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    goto :goto_0

    .line 1015
    :cond_0
    sput-boolean v4, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    .line 1017
    goto :goto_0

    .line 1018
    :cond_1
    sput-boolean v4, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    .line 1020
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "LauncherApplication.NEED_SYNC: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mytest"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "LauncherApplication.NEED_SYNC="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LauncherApplication"

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1025
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onProcessCreate()V

    .line 1028
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isIsolatedProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    const-string v0, "uc multi process"

    const-string v1, "is current process isolated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1033
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isVMCapable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1035
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupBerserker()V

    .line 1036
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isBerserkerProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1037
    return-void

    .line 1041
    :cond_4
    iput-boolean v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootFinish:Z

    .line 1042
    sput-boolean v4, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->isFrameworkFinished:Z

    .line 1046
    sget-boolean v2, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1047
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupMonitor()V

    .line 1049
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1050
    const-string v1, "fgbg_meta_so"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isBerserkerProcess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1054
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupFgBgWatcher()V

    .line 1062
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isSSSProcess()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1063
    const-string v0, "detect :sss process, skip future functions in onCreate"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return-void

    .line 1067
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->prepareStartupReason()V

    .line 1094
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->initFormMetaData()V

    .line 1096
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_PRELOAD:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 1098
    invoke-static {v2}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 1099
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v9}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":layout/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getAgentActivityLayout()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v7, v7}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1100
    if-lez v2, :cond_9

    .line 1101
    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v8, v2}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->init(Landroid/content/Context;I)V

    .line 1106
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1108
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadStlSosInOtherProcess(Landroid/content/Context;)V

    goto :goto_1

    .line 1111
    :cond_a
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSTLSosInQuinoxProcess(Landroid/content/Context;)V

    .line 1114
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1115
    const-string v1, "pre_init_bundle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->initCrashHistoryInfo(Landroid/content/Context;)V

    .line 1129
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-eqz v2, :cond_b

    .line 1130
    new-instance v2, Lcom/alipay/mobile/quinox/hotpath/a;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v2, v8}, Lcom/alipay/mobile/quinox/hotpath/a;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mDexPatch:Lcom/alipay/mobile/quinox/hotpath/a;

    .line 1132
    :cond_b
    new-instance v2, Lcom/alipay/mobile/quinox/hotpath/b;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-boolean v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    invoke-direct {v2, v8, v9}, Lcom/alipay/mobile/quinox/hotpath/b;-><init>(Landroid/app/Application;Z)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    .line 1134
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 1136
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    iget-object v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPackageName:Ljava/lang/String;

    aput-object v8, v2, v3

    .line 1135
    const-string v8, "Process Startup: processName=%s, packageName=%s"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    const-string v8, "monitor"

    invoke-static {v8, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    const-string v9, "pre_process_startup"

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1138
    const-string v2, "time_startup_pre"

    const-string v9, "pre_record"

    invoke-static {v2, v9}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->processCreate()V

    .line 1143
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1145
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1147
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 1149
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadConfigs;->isAutoStartDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1150
    const-string v0, "com.alipay.mobile.clean.CleanMasterResetService"

    .line 1151
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v1

    .line 1152
    if-eqz v1, :cond_c

    const-string v2, "ComponentName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1155
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1156
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1157
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    goto :goto_2

    .line 1158
    :catchall_0
    move-exception v0

    .line 1159
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    :cond_c
    goto :goto_2

    .line 1164
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "self-auto-start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadManager;->tryPreloadMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 1168
    :cond_e
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LauncherApplicationWrapper.onCreate() return. The process name is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_f
    return-void

    .line 1175
    :cond_10
    invoke-static {}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getInstance()Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    .line 1176
    iget-object v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->initChromeSourceDirs24(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 1179
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v2

    iget-object v9, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v10, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 1182
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1183
    :cond_11
    const-string v2, "setupHotPatch when processName = mPackageName"

    invoke-static {v8, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1186
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    iget-object v10, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v10

    iget-boolean v11, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->cleanPatchAtLaunch:Z

    invoke-virtual {v2, v10, v11}, Lcom/alipay/mobile/quinox/hotpath/b;->a(ZZ)V

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "setupHotPatch: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_12
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1192
    const-string v1, "init_bundle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupPackages()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    .line 1197
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1198
    const-string v1, "post_create"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "preInstall="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "preInstall: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-nez v2, :cond_14

    .line 1203
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v2, :cond_13

    .line 1204
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->s()V

    .line 1207
    :cond_13
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->n()V

    .line 1209
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->t()V

    .line 1212
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->d()V

    .line 1215
    :cond_14
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupClassLoader()V

    .line 1218
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isInstallMultiDex:Z

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-nez v2, :cond_15

    .line 1219
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->k()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/hotpath/b;->a([Ljava/lang/String;)V

    .line 1223
    :cond_15
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupLocale()V

    .line 1231
    nop

    .line 1233
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "quinox_preload_cookie_main"

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_16

    .line 1234
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    goto :goto_3

    :cond_16
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1237
    goto :goto_4

    .line 1235
    :catchall_1
    move-exception v2

    const/4 v2, 0x0

    .line 1259
    :goto_4
    if-nez v2, :cond_17

    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-eqz v5, :cond_18

    .line 1260
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->shouldPreLoadCookieManager()Z

    move-result v5

    if-eqz v5, :cond_18

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_18

    .line 1264
    :cond_17
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "preload CookieManager, preloadCookieManagerSwitch:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " preInstall:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1268
    goto :goto_5

    .line 1266
    :catchall_2
    move-exception v2

    .line 1267
    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1272
    :cond_18
    :goto_5
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preHandlePreloadProcedure()Z

    move-result v2

    .line 1274
    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_8

    .line 1278
    :cond_19
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->initBizBlackList(Landroid/content/Context;)V

    .line 1281
    sput-boolean v4, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    .line 1283
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    .line 1284
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->pauseInternalPreparePending()V

    .line 1286
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->disableBlackListComponentState(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 1289
    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-eqz v5, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-direct {v7, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :goto_6
    iput-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadFuture:Ljava/util/concurrent/FutureTask;

    .line 1308
    if-eqz v7, :cond_1b

    .line 1309
    new-instance v5, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadFuture:Ljava/util/concurrent/FutureTask;

    const-string v8, "LauncherApplication.Init.Preload"

    invoke-direct {v5, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1312
    :cond_1b
    new-instance v5, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;

    invoke-direct {v5, p0, v2}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/util/Map;)V

    .line 1343
    :try_start_3
    new-instance v2, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;

    invoke-direct {v2, p0, v5}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Lcom/alipay/mobile/quinox/utils/Callback;)V

    .line 1349
    const-string v7, "com.alipay.mobile.framework.LauncherApplicationAgent"

    const-string v8, "addWaitInitObserver"

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Ljava/util/Observer;

    aput-object v10, v9, v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v7, v8, v9, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1353
    goto :goto_7

    .line 1351
    :catchall_3
    move-exception v2

    .line 1352
    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1354
    :goto_7
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->setFirstActivityCreatedCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V

    .line 1355
    invoke-static {v5}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->addFirstActivityCreatedCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V

    goto :goto_9

    .line 1276
    :cond_1c
    :goto_8
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->prepare(Z)V

    .line 1359
    :goto_9
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setUpStrictMode(Z)V

    .line 1360
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    if-eqz v2, :cond_1d

    .line 1361
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupLeakCanary()V

    .line 1365
    :cond_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1e

    .line 1366
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1368
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1369
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->startRecordActivityDisplay()V

    .line 1382
    :cond_1e
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-nez v2, :cond_1f

    .line 1383
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getHostResources()Landroid/content/res/Resources;

    .line 1386
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startup : LauncherApplicationWrapper.onCreate() end. mIsDebug="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mIsDebug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 1388
    const-string v1, "create2create"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public onHostResourcesCreated(Landroid/content/res/Resources;Z)V
    .locals 6
    .param p1, "hostResources"    # Landroid/content/res/Resources;
    .param p2, "preloadCookie"    # Z

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start preload CookieManager when onHostResourcesCreated, preInstall:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " preloadCookie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->shouldPreLoadCookieManager()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 2923
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 2925
    .local v0, "originalAssets":Ljava/util/LinkedHashSet;
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    .line 2926
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onHostResourcesCreatedFirstTime:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2927
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->needDowngradeStart(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2928
    const-string v2, "do not create cookiemanager"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2930
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2933
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 2934
    .local v3, "newAssets":Ljava/util/LinkedHashSet;
    move-object v3, v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2935
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/quinox/resources/BundleResources;

    .line 2937
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/resources/BundleResources;->isUseOriginAssets()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2939
    const-string v2, "find newAssets is empty when CookieManager.getInstance() firstTime, retry WebViewCompat.invokeAddWebViewResBySystem()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    invoke-static {}, Lcom/alipay/mobile/quinox/compat/b;->b()V

    .line 2941
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 2942
    move-object v3, v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2945
    .end local v3    # "newAssets":Ljava/util/LinkedHashSet;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/compat/b;->b()V

    .line 2947
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 2948
    .restart local v3    # "newAssets":Ljava/util/LinkedHashSet;
    move-object v3, v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2951
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "quinox_set_chrome_src_by_cookie"

    const/4 v5, 0x1

    .line 2952
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2953
    if-eqz v2, :cond_4

    .line 2954
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2955
    invoke-static {}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getInstance()Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->setChromeSourceDirs(Ljava/util/LinkedHashSet;)V

    .line 2959
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "preload CookieManager success, firstTime:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onHostResourcesCreatedFirstTime:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newAssets:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2962
    .end local v0    # "originalAssets":Ljava/util/LinkedHashSet;
    .end local v3    # "newAssets":Ljava/util/LinkedHashSet;
    goto :goto_2

    .line 2960
    :catchall_0
    move-exception v0

    .line 2961
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preload CookieManager failed! firstTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onHostResourcesCreatedFirstTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2965
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onHostResourcesCreatedFirstTime:Z

    .line 2966
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 3184
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3186
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 3187
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3190
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 3188
    :catch_0
    move-exception v0

    .line 3189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    const-string v2, "onLowMemory()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 4

    .line 3156
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3158
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onTerminate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 3159
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3162
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 3160
    :catch_0
    move-exception v0

    .line 3161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    const-string v2, "onTerminate()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onTermsOfUseAgreed()V
    .locals 0

    .line 3519
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setupMonitor()V

    .line 3520
    return-void
.end method

.method public postInit()V
    .locals 3

    .line 3660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application postinit: mPostInitDone= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPostInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mytest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPostInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3662
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3715
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3719
    :cond_0
    return-void
.end method

.method public recover()V
    .locals 4

    .line 3200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "recover"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3202
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    :cond_0
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1965
    if-eqz p1, :cond_0

    .line 1966
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->newWrapper(Landroid/app/Application$ActivityLifecycleCallbacks;)Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;

    move-result-object v0

    return-object v0

    .line 1968
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeBootListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 2421
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mBootObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->deleteObserver(Ljava/util/Observer;)V

    .line 2422
    return-void
.end method

.method public removeListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 2413
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->deleteObserver(Ljava/util/Observer;)V

    .line 2414
    return-void
.end method

.method public retryHookDvm()V
    .locals 2

    .line 1558
    const-string v0, "mytest"

    const-string v1, "retryHookDvm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mCanRetryHookDvm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->hookDvmMain()Z

    .line 1562
    :cond_0
    return-void
.end method

.method public setFirstClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 2327
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFirstClass:Ljava/lang/String;

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFirstClass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    return-void
.end method

.method public setHacked(Z)V
    .locals 0
    .param p1, "hacked"    # Z

    .line 3151
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHacked:Z

    .line 3152
    return-void
.end method

.method public setLocaleToApplicationResources(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2987
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSavedLocale:Ljava/util/Locale;

    .line 2989
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 2990
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 2991
    return-void
.end method

.method public setLocaleToResources(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 2997
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSavedLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3001
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3002
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3004
    .local v1, "metric":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_1

    .line 3005
    return-void

    .line 3008
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSavedLocale:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3011
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3015
    return-void

    .line 3013
    :catch_0
    move-exception v2

    .line 3014
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LauncherApplication"

    const-string v4, "setLocaleToResources"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3016
    .end local v2    # "e":Ljava/lang/Exception;
    return-void

    .line 2998
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "metric":Landroid/util/DisplayMetrics;
    :cond_2
    :goto_0
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 3137
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->setSuperThemeId(I)V

    .line 3139
    iput p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mThemeRes:I

    .line 3140
    return-void
.end method

.method public setupInstrumentation()Z
    .locals 6

    const-string v0, "mInstrumentation"

    .line 968
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    const-string v2, "currentActivityThread"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 970
    .local v2, "activityThread":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    .line 972
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "instrumentation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    instance-of v3, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    if-eqz v3, :cond_0

    .line 975
    const/4 v0, 0x0

    return v0

    .line 978
    :cond_0
    new-instance v3, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {v3, v4, v1}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Landroid/app/Instrumentation;)V

    iput-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    .line 979
    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    const/4 v0, 0x1

    return v0

    .line 981
    .end local v1    # "instrumentation":Landroid/app/Instrumentation;
    .end local v2    # "activityThread":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to  setupInstrumentation() "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setupResources(Z)V
    .locals 4
    .param p1, "isBooting"    # Z

    .line 2872
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2873
    return-void

    .line 2877
    :cond_0
    if-nez p1, :cond_1

    .line 2878
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->clearCachedBundleResources()V

    .line 2881
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getHostResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    .line 2882
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 2884
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    const-string v1, "LauncherApplication"

    if-nez v0, :cond_2

    .line 2885
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null == mResources after setupResources("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ").getHostResources()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2888
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 2890
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->replaceResource(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2893
    return-void

    .line 2891
    :catchall_0
    move-exception v0

    .line 2892
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2895
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;

    .line 3385
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->interceptWhenPreload(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3388
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->wairForLaunch(Landroid/content/Intent;)V

    .line 3391
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->superStartService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 3386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t start service of other process when preload and process is background"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopHookDvm(Z)V
    .locals 4
    .param p1, "forceGc"    # Z

    .line 1706
    const-string v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopHookDvm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceGc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", suspendGc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", verifyClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mVerifyClassReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->stopHookDvmLite()V

    .line 1712
    return-void

    .line 1715
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->safeguardExit()V

    .line 1717
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1718
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 1720
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->removeConservativeStartup()V

    .line 1721
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1722
    .local v1, "sdkInt":I
    iget v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mSuspendGcResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1723
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 1724
    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeGcLollipop(I)V

    goto :goto_0

    .line 1726
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeGc()V

    .line 1729
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 1730
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    .end local v1    # "sdkInt":I
    :cond_3
    goto :goto_1

    .line 1732
    :catchall_0
    move-exception v1

    .line 1733
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "LauncherApplication"

    const-string v3, "stopHookDvm error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1735
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHookDvmProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1736
    const-string v1, "LauncherApplication"

    const-string v2, "hookdvm remove"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1973
    if-eqz p1, :cond_0

    .line 1974
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->findAndRemoveWrapper(Landroid/app/Application$ActivityLifecycleCallbacks;)Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 1975
    .local v1, "wrapper":Landroid/app/Application$ActivityLifecycleCallbacks;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1976
    return-object v1

    .line 1979
    .end local v1    # "wrapper":Landroid/app/Application$ActivityLifecycleCallbacks;
    :cond_0
    return-object p1
.end method
