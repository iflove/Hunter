.class public final Lcom/alipay/mobile/quinox/hotpath/b;
.super Ljava/lang/Object;
.source "HotPatch.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/Throwable;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/app/Application;

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 6
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "isDebugable"    # Z

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    .line 99
    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    .line 105
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.bundle.SetupBundle"

    const-string v1, "setupBundle"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    const-string v2, "setupHotPatch (AndFix) error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/hotpath/b;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/hotpath/b;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "patchName"    # Ljava/lang/String;

    const-string v0, "DynamicRelease"

    .line 437
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const-string v3, "hasPatch"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v5, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v3, v1

    .line 439
    .local v3, "hasPatch":Z
    move v3, v2

    if-eqz v2, :cond_0

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Call PatchManager.hasPatch("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    return v3

    .line 443
    .end local v3    # "hasPatch":Z
    :catchall_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/hotpath/b;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/hotpath/b;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 7

    .line 195
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    const-string v1, "monitorAndfixSuccess"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->c:Ljava/lang/Throwable;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method private d()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "hotpach.cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_0
    const-string v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    const-string v2, "restoreHotpatchState"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    aput-object v5, v3, v6

    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "DynamicRelease"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 325
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/hotpath/b$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/hotpath/b$1;-><init>(Lcom/alipay/mobile/quinox/hotpath/b;)V

    const-string v2, "startHookBundlePreLoad"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/hotpath/d;->b()V

    .line 354
    return-void
.end method

.method public final a(ZZ)V
    .locals 16
    .param p1, "isMainProcess"    # Z
    .param p2, "cleanPatches"    # Z

    move-object/from16 v1, p0

    const-string v0, "android-phone-mobilesdk-quinox"

    const-string v2, "DynamicRelease"

    .line 119
    iget-object v3, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 121
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/alipay/mobile/quinox/hotpath/b;->c:Ljava/lang/Throwable;

    .line 124
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "com.alipay.euler.andfix.AlipayAndfixManager"

    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v8, v4

    .line 127
    .local v8, "clazzAlipayAndfixManager":Ljava/lang/Class;
    move-object v8, v7

    const-string v9, "createInstance"

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v6

    new-array v11, v5, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    aput-object v12, v11, v6

    invoke-static {v7, v4, v9, v10, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 130
    .local v4, "aam":Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageVersionName()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "version":Ljava/lang/String;
    const-string v9, "init"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v6

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v7, v12, v6

    iget-boolean v13, v1, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    .line 134
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v5

    .line 132
    invoke-static {v8, v4, v9, v11, v12}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v1, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/hotpath/b;->b()V

    .line 140
    .end local v4    # "aam":Ljava/lang/Object;
    :cond_0
    iget-object v9, v1, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 143
    .local v9, "clazz":Ljava/lang/Class;
    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/hotpath/b;->a(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v6

    .line 144
    .local v12, "hasPatch":Z
    move v12, v11

    const-string v13, "lastPatchLoadTime"

    if-eqz v11, :cond_1

    .line 145
    :try_start_1
    sput-object v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 147
    const-string v11, "lastPatchLoaded"

    sget-object v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v11, v14}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-wide v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    const-string v11, "loadPatch"

    new-array v14, v10, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v6

    const-class v15, Ljava/lang/ClassLoader;

    aput-object v15, v14, v5

    invoke-virtual {v9, v11, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iput-object v11, v1, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    .line 151
    invoke-virtual {v11, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    iget-object v11, v1, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    iget-object v14, v1, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v6

    aput-object v3, v10, v5

    invoke-virtual {v11, v14, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-eqz v12, :cond_2

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 155
    sget-wide v10, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    iget-object v10, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v11, v1, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v10, v11}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v10

    invoke-virtual {v10, v0, v3}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 165
    const-string v0, "setupHotPatch (AndFix) success."

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "clazzAlipayAndfixManager":Ljava/lang/Class;
    .end local v9    # "clazz":Ljava/lang/Class;
    .end local v12    # "hasPatch":Z
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "setupHotPatch (AndFix) error."

    invoke-static {v2, v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iput-object v0, v1, Lcom/alipay/mobile/quinox/hotpath/b;->c:Ljava/lang/Throwable;

    .line 172
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v7

    .line 173
    .local v7, "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v0, v7, :cond_5

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v0, v7, :cond_3

    goto :goto_1

    .line 187
    :cond_3
    if-eqz p1, :cond_4

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/hotpath/b;->d()V

    .line 191
    :cond_4
    return-void

    .line 175
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-virtual {v0, v2, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :try_start_2
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    const-string v8, "clearHotpatchState"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    aput-object v10, v5, v6

    invoke-static {v0, v8, v9, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    return-void

    .line 183
    :catchall_1
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 11

    .line 222
    const-string v0, "DynamicRelease"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const-string v2, "getPreLoadPatchNames"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 223
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 224
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    nop

    .line 226
    if-eqz p1, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 227
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v8, p1, v6

    .line 228
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    const/4 v7, 0x1

    .line 227
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 233
    :cond_1
    const/4 v7, 0x0

    :cond_2
    if-nez v7, :cond_3

    .line 234
    iget-object v5, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    goto :goto_0

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 240
    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    .line 241
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 242
    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 243
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android-phone-mobilesdk-quinox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 244
    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/hotpath/b;->a(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const-string v7, "lastPatchLoadTime"

    if-eqz v6, :cond_5

    .line 246
    :try_start_1
    sput-object v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 248
    const-string v8, "lastPatchLoaded"

    sget-object v9, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v3

    aput-object v1, v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    if-eqz v6, :cond_6

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 254
    sget-wide v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6
    goto :goto_2

    .line 260
    :cond_7
    const-string v1, "startHookHostPreLoad (AndFix) success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    goto :goto_3

    .line 261
    :catchall_0
    move-exception v1

    .line 262
    const-string v2, "startHookHostPreLoad (AndFix) error."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/hotpath/d;->a([Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public final b()V
    .locals 7

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DynamicRelease"

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    const-string v3, "cleanPatches"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 411
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    .line 410
    invoke-static {v0, v3, v5, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Call PatchManager.cleanPatches(false). by "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 417
    :cond_0
    const-string v0, "mPatchManager==null. Hasn\'t called setupHotPatch() yet ?"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/hotpath/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    goto :goto_2

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {v1, v1}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->cleanPatches(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 432
    :cond_1
    return-void

    .line 430
    :catchall_2
    move-exception v0

    .line 431
    .restart local v0    # "tr":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 11

    .line 273
    const-string v0, "DynamicRelease"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const-string v3, "getPatchNames"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 277
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 278
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    nop

    .line 280
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 281
    array-length v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v9, p1, v7

    .line 282
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 283
    const/4 v8, 0x1

    .line 281
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 287
    :cond_1
    const/4 v8, 0x0

    :cond_2
    if-nez v8, :cond_3

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_3
    goto :goto_0

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 295
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android-phone-mobilesdk-quinox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/alipay/mobile/quinox/hotpath/b;->d:Ljava/util/Set;

    .line 296
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 297
    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/hotpath/b;->a(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    const-string v7, "lastPatchLoadTime"

    if-eqz v6, :cond_5

    .line 299
    :try_start_1
    sput-object v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 301
    const-string v8, "lastPatchLoaded"

    sget-object v9, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v4

    aput-object v2, v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    if-eqz v6, :cond_6

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 307
    sget-wide v5, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_6
    goto :goto_2

    .line 313
    :cond_7
    const-string v1, "startHookHost (AndFix) success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    goto :goto_3

    .line 314
    :catchall_0
    move-exception v1

    .line 315
    iput-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->c:Ljava/lang/Throwable;

    .line 316
    const-string v2, "startHookHost (AndFix) error."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/hotpath/d;->b([Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/hotpath/b;->c()V

    .line 322
    return-void
.end method

.method public final onBundleLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 365
    const-string v0, "DynamicRelease"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getProcessInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->loadModulePatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_1
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    .line 369
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    .line 374
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/hotpath/b;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    const-string v2, "lastPatchLoadTime"

    if-eqz v1, :cond_2

    .line 376
    :try_start_2
    sput-object p1, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 378
    const-string v3, "lastPatchLoaded"

    sget-object v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/quinox/hotpath/b;->b:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b;->a:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    if-eqz v1, :cond_3

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 384
    sget-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBundleLoad (AndFix) success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    :cond_4
    goto :goto_1

    .line 388
    :catchall_1
    move-exception v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBundleLoad (AndFix) error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/b;->e:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/hotpath/b;->f:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 393
    return-void
.end method

.method public final onBundleUnload(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 398
    return-void
.end method
