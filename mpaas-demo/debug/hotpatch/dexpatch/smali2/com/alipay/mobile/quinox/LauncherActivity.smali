.class public Lcom/alipay/mobile/quinox/LauncherActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherActivity"

.field private static mFirstOnCreate:Z

.field public static sLastCreateTime:J


# instance fields
.field private bootfinishDone:Z

.field private inited:Z

.field private mAgentTarget:Ljava/lang/Object;

.field private volatile mBootEntry:Z

.field private volatile mBootFinish:Z

.field private final mBootObserver:Ljava/util/Observer;

.field private mContentViewSet:Z

.field private volatile mEntry:Z

.field mGetResourcesMethod:Ljava/lang/reflect/Method;

.field private mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private mOnUserInteractionMethod:Ljava/lang/reflect/Method;

.field private mPermissionGate:Ljava/lang/Object;

.field private mPreloadInflater:Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

.field private mShouldWaitForUserConfirmMethod:Ljava/lang/reflect/Method;

.field private mStartupWindowShowed:Z

.field private mStopCpuBoostCalled:Z

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeRes:I

.field private mThemeResource:Landroid/content/res/Resources;

.field private mUIHandler:Landroid/os/Handler;

.field private needDoPostInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/LauncherActivity;->mFirstOnCreate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mGetResourcesMethod:Ljava/lang/reflect/Method;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->needDoPostInit:Z

    .line 83
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->inited:Z

    .line 88
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mUIHandler:Landroid/os/Handler;

    .line 90
    new-instance v2, Lcom/alipay/mobile/quinox/LauncherActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$1;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootObserver:Ljava/util/Observer;

    .line 102
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mContentViewSet:Z

    .line 103
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    .line 104
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStopCpuBoostCalled:Z

    .line 105
    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mPreloadInflater:Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    .line 1038
    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mOnUserInteractionMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/quinox/LauncherActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/LauncherActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/quinox/LauncherActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/LauncherActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->needDoPostInit:Z

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->removeStartUpFlag()V

    return-void
.end method

.method private doPostInit()V
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-eqz v0, :cond_0

    .line 705
    return-void

    .line 707
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    .line 709
    new-instance v0, Lcom/alipay/mobile/quinox/LauncherActivity$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$6;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 760
    return-void
.end method

.method private getLayoutId(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getOriginalResources()Landroid/content/res/Resources;
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    if-nez v0, :cond_0

    .line 793
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 796
    :cond_0
    const/4 v0, 0x0

    .line 798
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    if-eqz v1, :cond_1

    .line 799
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 802
    :cond_1
    const-string v1, "LauncherActivity"

    if-nez v0, :cond_2

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 805
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 808
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 806
    :catchall_0
    move-exception v2

    .line 807
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 812
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 815
    goto :goto_1

    .line 813
    :catchall_1
    move-exception v2

    .line 814
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private initIfNot()V
    .locals 6

    .line 157
    const-string v0, "LauncherActivity"

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->inited:Z

    if-nez v1, :cond_0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 160
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAgentActivity()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 162
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    const/4 v3, 0x1

    :try_start_1
    const-string v4, "getResources"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mGetResourcesMethod:Ljava/lang/reflect/Method;

    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "mGetResourcesMethod error"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    iput-boolean v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->inited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    .end local v1    # "agent":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 172
    :catchall_1
    move-exception v1

    .line 173
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "initIfNot error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private invalidStartup()Z
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->isTaskRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    return v2

    .line 204
    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 205
    return v1

    .line 208
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->isProfileLaunch(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    :cond_2
    return v1

    .line 211
    :cond_3
    return v2
.end method

.method private isProfileLaunch(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 215
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 216
    return v0

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 220
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 221
    return v0

    .line 224
    :cond_1
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 225
    .local v2, "keysets":Ljava/util/Set;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 226
    return v0

    .line 229
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    const-string v1, "profile"

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    const-string v0, "LauncherActivity"

    const-string v1, "isProfileLaunch is true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v4

    .line 233
    :cond_3
    return v0
.end method

.method private processSchemeReg()V
    .locals 4

    .line 677
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 678
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "LauncherActivity"

    if-nez v0, :cond_0

    .line 679
    const-string v0, "processSchemeReg intent is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    const-string v3, "isFromSchemeRouter"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 683
    if-eqz v0, :cond_1

    .line 685
    :try_start_0
    const-string v0, "processSchemeReg launcherSchemeUri!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "launcherSchemeUri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 687
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    nop

    .end local v0    # "uri":Landroid/net/Uri;
    return-void

    .line 688
    :catchall_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private removeFragments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 260
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method private removeStartUpFlag()V
    .locals 7

    const-string v0, "LauncherActivity"

    .line 1119
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1120
    .local v1, "spf":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1121
    .local v2, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_startup"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    .local v3, "key_first_startup":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "performance_startup"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1125
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "process_start_tag"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1126
    .local v5, "startTagFile":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1127
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .end local v5    # "startTagFile":Ljava/io/File;
    :cond_0
    return-void

    .line 1129
    :catchall_0
    move-exception v4

    .line 1130
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1134
    .end local v1    # "spf":Landroid/content/SharedPreferences;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "key_first_startup":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Throwable;
    return-void

    .line 1132
    :catchall_1
    move-exception v1

    .line 1133
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private setContentViewIfNot()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mContentViewSet:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAgentActivityLayout()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    .local v1, "layout":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->setContentView(I)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mContentViewSet:Z

    .line 244
    .end local v1    # "layout":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "newBase"    # Landroid/content/Context;

    .line 180
    const-string v0, "mytest"

    const-string v1, "LauncherActivity.attachBaseContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    .local v1, "startupSafeguard":Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 185
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 186
    sput-boolean v2, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mLauncherActivated:Z

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    const-string v2, "attachBaseContext"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherActivity"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method bootfinish()V
    .locals 14

    const-string v0, "preload_prepareView"

    const-string v1, "preload_initResources"

    const-string v2, "LauncherActivity"

    const-string v3, "time_startup"

    .line 112
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 117
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v7

    const-string v8, "main_boot_finish"

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 118
    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v7, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/LauncherApplication;->getTarget()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v4

    .line 121
    .local v8, "applicationAgent":Ljava/lang/Object;
    move-object v8, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "getMicroApplicationContext"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v4

    .line 122
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 124
    .local v7, "microContext":Ljava/lang/Object;
    iget-object v10, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 125
    const-string v11, "attachMicroApplicationContext"

    new-array v12, v6, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Object;

    aput-object v13, v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 126
    .local v4, "attachMethod":Ljava/lang/reflect/Method;
    move-object v4, v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    iget-object v10, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v7, v11, v5

    invoke-virtual {v4, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .end local v4    # "attachMethod":Ljava/lang/reflect/Method;
    .end local v7    # "microContext":Ljava/lang/Object;
    .end local v8    # "applicationAgent":Ljava/lang/Object;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 128
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v9, v4

    move-object v4, v7

    :goto_0
    move-object v8, v4

    .line 129
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2, v8}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v7, v8

    .line 134
    .local v7, "clazz":Ljava/lang/Class;
    move-object v7, v4

    const-string v8, "bootFinish"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/app/Activity;

    aput-object v11, v10, v5

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v8, v9

    .line 135
    .local v8, "method":Ljava/lang/reflect/Method;
    move-object v8, v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p0, v9, v5

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iput-boolean v6, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootEntry:Z

    .line 138
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 139
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "preLoad"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v9, Landroid/app/Activity;

    aput-object v9, v4, v5

    invoke-virtual {v7, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    move-object v4, v1

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 145
    const-string v0, "enter_main_thread"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "clazz":Ljava/lang/Class;
    return-void

    .line 146
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mytest"

    const-string v3, "mBootObserver.error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "LauncherActivity"

    .line 876
    const/4 v1, 0x0

    .line 878
    .local v1, "bRet":Z
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 879
    .local v4, "clazz":Ljava/lang/Class;
    const-string v5, "dispatchTouchEvent"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/MotionEvent;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v5, v3

    .line 880
    .local v5, "method":Ljava/lang/reflect/Method;
    move-object v5, v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 881
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 882
    .local v3, "result":Ljava/lang/Boolean;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 883
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 887
    .end local v3    # "result":Ljava/lang/Boolean;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 885
    :catchall_0
    move-exception v2

    .line 886
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 889
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_1

    .line 891
    :try_start_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .line 894
    goto :goto_1

    .line 892
    :catchall_1
    move-exception v2

    .line 893
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return v1
.end method

.method public finish()V
    .locals 7

    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v1, "LauncherActivity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeListener(Ljava/util/Observer;)V

    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootObserver:Ljava/util/Observer;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeBootListener(Ljava/util/Observer;)V

    .line 951
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootFinish:Z

    if-nez v0, :cond_0

    .line 952
    const-string v0, "finish() but not BootFinish"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    move-object v4, v2

    .line 954
    .local v4, "startupSafeguard":Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    move-object v4, v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 955
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    goto :goto_0

    .line 958
    .end local v4    # "startupSafeguard":Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    :cond_0
    move-object v4, v2

    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 962
    .local v4, "clazz":Ljava/lang/Class;
    const-string v5, "finish"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 963
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 964
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "clazz":Ljava/lang/Class;
    return-void

    .line 965
    :catchall_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 6

    .line 823
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootEntry:Z

    if-nez v0, :cond_0

    .line 824
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 827
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 828
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "getAssets"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 829
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .local v1, "assets":Landroid/content/res/AssetManager;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 832
    return-object v1

    .line 836
    .end local v1    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 6

    .line 1098
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1100
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1101
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "getClassLoader"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 1102
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .local v1, "result":Ljava/lang/ClassLoader;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1105
    return-object v1

    .line 1109
    .end local v1    # "result":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 6

    .line 771
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootEntry:Z

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getOriginalResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 775
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 776
    .local v0, "clazz":Ljava/lang/Class;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mGetResourcesMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    move-object v3, v2

    .line 777
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 778
    const-string v1, "getResources"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 779
    move-object v3, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 783
    return-object v2

    .line 787
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getOriginalResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 248
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mPreloadInflater:Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    if-eqz v0, :cond_0

    .line 250
    return-object v0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 4

    .line 853
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootEntry:Z

    if-nez v0, :cond_0

    .line 855
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 856
    :catchall_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 861
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 862
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeResource:Landroid/content/res/Resources;

    .line 863
    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    .line 864
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 865
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    move-object v0, v1

    if-eqz v1, :cond_2

    .line 866
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeRes:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 871
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1026
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1030
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onActivityResult"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/content/Intent;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1031
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1032
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p3, v3, v9

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 1033
    :catchall_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "bInterrupt":Z
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 925
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v2

    .line 926
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "onBackPressed"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v4, v2

    .line 927
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v4, v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 928
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 929
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 930
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 934
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 932
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 933
    .local v2, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 937
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 939
    :try_start_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 942
    return-void

    .line 940
    :catchall_1
    move-exception v1

    move-object v1, v2

    .line 941
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->finish()V

    .line 944
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    const-string v2, "LauncherActivity"

    .line 274
    const-string v3, "mytest"

    const-string v0, "LauncherActivity.onCreate"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->processSchemeReg()V

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/alipay/mobile/quinox/LauncherActivity;->sLastCreateTime:J

    .line 278
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_PRELOAD:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherActivity;->mFirstOnCreate:Z

    if-eqz v0, :cond_1

    .line 279
    sput-boolean v4, Lcom/alipay/mobile/quinox/LauncherActivity;->mFirstOnCreate:Z

    .line 280
    iget-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lcom/eg/android/AlipayGphone/AlipayLogin;

    if-ne v0, v5, :cond_0

    .line 282
    iget-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mPreloadInflater:Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mPreloadInflater:Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    .line 287
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->retryHookDvm()V

    .line 290
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadingActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->endPreloadActivity()V

    .line 294
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/quinox/LauncherActivity;->removeFragments(Landroid/os/Bundle;)V

    .line 295
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.alipay.mobile.quinox.LauncherActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/quinox/LauncherActivity;->setRequestedOrientation(I)V

    .line 303
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->launchOnGoing()V

    .line 305
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v6, "create2create"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 306
    const-string v6, "pre_launch"

    const-string v7, "finish"

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->setUIStarted(Z)V

    .line 310
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setMainUILaunched()V

    .line 311
    const/4 v8, 0x0

    .line 313
    .local v8, "invalidStartup":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->invalidStartup()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v0

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 315
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v8, :cond_4

    .line 318
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    .line 319
    .local v0, "startupSafeguard":Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    move-object v0, v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 320
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->finish()V

    .line 322
    return-void

    .line 326
    .end local v0    # "startupSafeguard":Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    :cond_4
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "process_start_tag"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    nop

    .end local v0    # "file":Ljava/io/File;
    goto :goto_1

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 332
    .local v9, "launchTime":J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    const-string v11, "performance_startup"

    invoke-interface {v0, v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string v11, "pre_record"

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 335
    const-string v0, "time_startup_pre"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->end(Ljava/lang/String;)V

    .line 336
    const-string v0, "time_startup"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->start(Ljava/lang/String;)V

    .line 337
    const-string v11, "main_boot_finish"

    invoke-static {v0, v11}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplitSpecfic(Ljava/lang/String;)V

    .line 340
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->end(Ljava/lang/String;)V

    .line 343
    :try_start_2
    iput-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    .line 344
    iput-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootEntry:Z

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->initIfNot()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    :try_start_3
    iget-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const-string v6, "onCreate"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v7, v4

    new-array v11, v5, [Ljava/lang/Object;

    aput-object p1, v11, v4

    invoke-static {v0, v6, v7, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 352
    goto :goto_2

    .line 350
    :catchall_2
    move-exception v0

    .line 351
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const-string v0, "launcher layout step 1"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->setContentViewIfNot()V

    .line 356
    const-string v0, "launcher layout step 2"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setLauncherActivityPreInitTime(J)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->preInit()V

    .line 361
    iput-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->needDoPostInit:Z

    .line 363
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->getState()I

    move-result v0

    if-lez v0, :cond_6

    .line 364
    const-class v0, Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_5

    iget-object v0, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 365
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iput-boolean v5, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    .line 367
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->show()V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    goto :goto_3

    .line 370
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->hideIfNot()V

    .line 373
    :cond_6
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_startup"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "key_first_startup":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->defaultSp:Landroid/content/SharedPreferences;

    invoke-interface {v6, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 377
    .local v6, "isFirstStartup":Z
    iget-object v7, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v11, "performance_startup_alive"

    if-eqz v7, :cond_a

    .line 379
    :try_start_5
    iput-boolean v5, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootFinish:Z

    .line 380
    const-string v7, "LauncherActivity.onCreate().doPostInit()"

    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-boolean v7, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    if-eqz v7, :cond_9

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 384
    iget-object v7, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-wide v14, v7, Lcom/alipay/mobile/quinox/LauncherApplication;->mOnCreateEndTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0xbb8

    cmp-long v7, v12, v14

    if-gez v7, :cond_7

    .line 385
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 386
    invoke-interface {v7, v11, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsCold(Z)V

    .line 388
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsFirst(Z)V

    .line 389
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v7

    iget-wide v11, v7, Lcom/alipay/mobile/quinox/LauncherApplication;->mCurrentProcessStartupTime:J

    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setTimeStamp(J)V

    .line 390
    iget-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    if-nez v4, :cond_8

    .line 391
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/alipay/mobile/quinox/LauncherActivity$2;

    invoke-direct {v7, v1}, Lcom/alipay/mobile/quinox/LauncherActivity$2;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v4, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    iput-boolean v5, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->needDoPostInit:Z

    goto/16 :goto_4

    .line 400
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 401
    invoke-interface {v7, v11, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsCold(Z)V

    .line 403
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsFirst(Z)V

    .line 404
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setTimeStamp(J)V

    .line 405
    iget-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    if-nez v4, :cond_8

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    .line 409
    :cond_8
    goto :goto_4

    .line 410
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 411
    invoke-interface {v7, v11, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsCold(Z)V

    .line 413
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsFirst(Z)V

    .line 414
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setTimeStamp(J)V

    .line 415
    iget-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    if-nez v4, :cond_b

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    goto :goto_4

    .line 421
    :cond_a
    iput-boolean v4, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootFinish:Z

    .line 423
    iget-object v7, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->addListener(Ljava/util/Observer;)V

    .line 424
    iget-object v7, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v12, v1, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootObserver:Ljava/util/Observer;

    invoke-virtual {v7, v12}, Lcom/alipay/mobile/quinox/LauncherApplication;->addBootListener(Ljava/util/Observer;)V

    .line 425
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 426
    invoke-interface {v7, v11, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsCold(Z)V

    .line 428
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsFirst(Z)V

    .line 429
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v5

    iget-wide v11, v5, Lcom/alipay/mobile/quinox/LauncherApplication;->mCurrentProcessStartupTime:J

    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setTimeStamp(J)V

    .line 432
    :cond_b
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getLaunchSourceClass()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    .line 433
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getLaunchSourceUri()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    .line 434
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setLaunchSourceClass(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 436
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setLaunchSourceUri(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 443
    .end local v0    # "version":Ljava/lang/String;
    .end local v3    # "key_first_startup":Ljava/lang/String;
    .end local v6    # "isFirstStartup":Z
    :cond_c
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->finish()V

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    const-string v0, "LauncherActivity"

    .line 998
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    if-eqz v2, :cond_0

    .line 999
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeListener(Ljava/util/Observer;)V

    .line 1000
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootObserver:Ljava/util/Observer;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeBootListener(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v2

    .line 1003
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1006
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 1010
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1011
    .local v2, "clazz":Ljava/lang/Class;
    const-string v5, "onDestroy"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1012
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1013
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1016
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 1014
    :catchall_1
    move-exception v1

    .line 1015
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1018
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    if-eqz v0, :cond_1

    .line 1019
    iput-boolean v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    .line 1020
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->hideIfNot()V

    .line 1022
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "bRet":Z
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 904
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "onKeyDown"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v4, v2

    .line 905
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v4, v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 906
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p2, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 907
    .local v2, "result":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 908
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 912
    .end local v2    # "result":Ljava/lang/Boolean;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 910
    :catchall_0
    move-exception v1

    .line 911
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherActivity"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_1

    .line 915
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 917
    :cond_1
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 452
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 456
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onNewIntent"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 457
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onPause()V
    .locals 7

    .line 528
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 532
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 533
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "onPause"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 534
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 536
    :catchall_0
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherActivity"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->stopHookDvm(Z)V

    .line 540
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1140
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1143
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onRequestPermissionsResult"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, [Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-class v6, [I

    const/4 v10, 0x3

    aput-object v6, v5, v10

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1144
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1145
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p2, v3, v9

    aput-object p3, v3, v10

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 1146
    :catchall_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1149
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onRestart()V
    .locals 6

    .line 513
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onRestart()V

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 518
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onRestart"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 519
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 521
    :catchall_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 660
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 664
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onRestoreInstanceState"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 665
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 667
    :catchall_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onResume()V
    .locals 9

    const-string v0, "LauncherActivity"

    .line 467
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    move-object v3, v2

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v3

    .line 469
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    :try_start_1
    const-string v4, "mCalled"

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v4, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_0

    .line 475
    :catchall_1
    move-exception v4

    .line 476
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 483
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 484
    .local v2, "clazz":Ljava/lang/Class;
    const-string v5, "onResume"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 485
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 489
    nop

    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 487
    :catchall_2
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 646
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 650
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "onSaveInstanceState"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 651
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 656
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onStart()V
    .locals 7

    const-string v0, "LauncherActivity"

    .line 495
    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    move-object v2, v1

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 503
    .local v2, "clazz":Ljava/lang/Class;
    const-string v4, "onStart"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 504
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 505
    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 506
    :catchall_1
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onStop()V
    .locals 7

    .line 544
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 548
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 549
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "onStop"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 550
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 551
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherActivity"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->stopHookDvm(Z)V

    .line 558
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/e;->a()Lcom/alipay/mobile/quinox/framemonitor/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->b(Landroid/content/Context;)V

    .line 559
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .line 1042
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserInteraction()V

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mOnUserInteractionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1047
    .local v0, "clazz":Ljava/lang/Class;
    const-string v2, "onUserInteraction"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mOnUserInteractionMethod:Ljava/lang/reflect/Method;

    .line 1048
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1050
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mOnUserInteractionMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1054
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 7

    const-string v0, "LauncherActivity"

    .line 1058
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserLeaveHint()V

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1062
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "onUserLeaveHint"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1063
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1064
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v1

    .line 1066
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1069
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/quinox/LauncherActivity$7;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$7;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1093
    return-void

    .line 1091
    :catchall_1
    move-exception v1

    .line 1092
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1094
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8

    .line 563
    const-string v0, "mytest"

    const-string v1, "LauncherActivity.onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mShouldWaitForUserConfirmMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    const-string v2, "LauncherActivity"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 567
    :try_start_0
    const-string v0, "com.mpaas.privacypermission.PermissionGate"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 568
    const-string v5, "getInstance"

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mPermissionGate:Ljava/lang/Object;

    .line 569
    const-string v5, "shouldWaitForUserConfirm"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mShouldWaitForUserConfirmMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    .line 571
    const-string v5, "getIsWaitingUserConform fail"

    invoke-static {v2, v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mShouldWaitForUserConfirmMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mPermissionGate:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 577
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 578
    if-eqz v0, :cond_1

    .line 579
    const-string v0, "wait for user confirm"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 580
    return-void

    .line 584
    :cond_1
    goto :goto_1

    .line 582
    :catchall_1
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "fail call "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mShouldWaitForUserConfirmMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 590
    const-string v1, "onWindowFocusChanged"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 591
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 592
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 595
    goto :goto_2

    .line 593
    :catchall_2
    move-exception v0

    .line 594
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    :goto_2
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    if-eqz v0, :cond_3

    .line 598
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z

    if-nez v0, :cond_3

    .line 599
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/quinox/LauncherActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$3;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 616
    iput-boolean v3, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStartupWindowShowed:Z

    .line 617
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/alipay/mobile/quinox/LauncherActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$4;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    :cond_4
    iget-boolean p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStopCpuBoostCalled:Z

    if-nez p1, :cond_5

    .line 626
    iput-boolean v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mStopCpuBoostCalled:Z

    .line 628
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    .line 629
    if-eqz p1, :cond_5

    .line 630
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->stopDelayTimeMs()I

    move-result v0

    .line 631
    new-instance v1, Lcom/alipay/mobile/quinox/LauncherActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity$5;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;I)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    :cond_5
    return-void
.end method

.method protected postInit()V
    .locals 8

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 987
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "postInit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 988
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 989
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 990
    :catchall_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected preInit()V
    .locals 8

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 973
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "preInit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 974
    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 975
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 976
    :catchall_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 979
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .line 1154
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    return-void

    .line 1155
    :catchall_0
    move-exception v0

    .line 1156
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1158
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 844
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 848
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iput p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeRes:I

    .line 849
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mBootFinish:Z

    .line 765
    const-string v0, "LauncherActivity"

    const-string v1, "LauncherActivity.update().doPostInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    .line 767
    return-void
.end method
