.class public Lcom/alipay/dexpatch/m/HotPatch;
.super Ljava/lang/Object;
.source "HotPatch.java"


# static fields
.field public static final DYNAMIC_RELEASE_SP_NAME:Ljava/lang/String; = "DynamicRelease"

.field public static final QUINOX_BUNDLE_NAME:Ljava/lang/String; = "android-phone-mobilesdk-quinox"


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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    .line 91
    iput-boolean p2, p0, Lcom/alipay/dexpatch/m/HotPatch;->f:Z

    .line 97
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.bundle.SetupBundle"

    const-string/jumbo v1, "setupBundle"

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

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    const-string/jumbo v2, "setupHotPatch (AndFix) error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "patchName"    # Ljava/lang/String;

    const-string v0, "DynamicRelease"

    .line 388
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

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

    .line 390
    .local v3, "hasPatch":Z
    move v3, v2

    if-eqz v2, :cond_0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Call PatchManager.hasPatch("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
    return v3

    .line 394
    .end local v3    # "hasPatch":Z
    :catchall_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method static synthetic access$000(Lcom/alipay/dexpatch/m/HotPatch;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/dexpatch/m/HotPatch;

    .line 29
    iget-object v0, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/dexpatch/m/HotPatch;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/dexpatch/m/HotPatch;

    .line 29
    iget-object v0, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static trigDynamicRelease(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkDelay"    # Z

    .line 402
    :try_start_0
    const-string v0, "com.alipay.mobile.quinox.splash.HotPatchUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 403
    .local v2, "hotPatchUtils":Ljava/lang/Class;
    const-string/jumbo v3, "trigDynamicRelease"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 404
    .local v3, "trigDynamicRelease":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 405
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    nop

    .end local v2    # "hotPatchUtils":Ljava/lang/Class;
    .end local v3    # "trigDynamicRelease":Ljava/lang/reflect/Method;
    return-void

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public cleanPatches()V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    const-string v1, "DynamicRelease"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    const-string v3, "cleanPatches"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 361
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    .line 360
    invoke-static {v0, v3, v5, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Call PatchManager.cleanPatches(false). by "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 367
    :cond_0
    const-string/jumbo v0, "mPatchManager==null. Hasn\'t called setupHotPatch() yet ?"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    new-instance v3, Lcom/alipay/dexpatch/m/ProcessInfo;

    iget-object v4, p0, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "processInfo":Lcom/alipay/dexpatch/m/ProcessInfo;
    invoke-virtual {v3}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-static {v2, v2}, Lcom/alipay/dexpatch/m/DexPatchBridge;->cleanPatches(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    .end local v0    # "processInfo":Lcom/alipay/dexpatch/m/ProcessInfo;
    :cond_1
    return-void

    .line 381
    :catchall_1
    move-exception v0

    .line 382
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public monitorSuccess()V
    .locals 7

    .line 189
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    const-string/jumbo v1, "monitorAndfixSuccess"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/alipay/dexpatch/m/HotPatch;->c:Ljava/lang/Throwable;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public setupHotPatch(ZZ)V
    .locals 16
    .param p1, "isMainProcess"    # Z
    .param p2, "cleanPatches"    # Z

    move-object/from16 v1, p0

    const-string v2, "DynamicRelease"

    const-string v0, "android-phone-mobilesdk-quinox"

    .line 111
    iget-object v3, v1, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 113
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/alipay/dexpatch/m/HotPatch;->c:Ljava/lang/Throwable;

    .line 116
    :try_start_0
    const-string v5, "com.alipay.euler.andfix.AlipayAndfixManager"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v4

    .line 119
    .local v6, "clazzAlipayAndfixManager":Ljava/lang/Class;
    move-object v6, v5

    const-string v7, "createInstance"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-array v10, v8, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    aput-object v12, v10, v11

    invoke-static {v5, v4, v7, v9, v10}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 122
    .local v4, "aam":Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageVersionName()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "version":Ljava/lang/String;
    const-string v7, "init"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v8

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v5, v12, v11

    iget-boolean v13, v1, Lcom/alipay/dexpatch/m/HotPatch;->f:Z

    .line 126
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    .line 124
    invoke-static {v6, v4, v7, v10, v12}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/dexpatch/m/HotPatch;->cleanPatches()V

    .line 132
    :cond_0
    iget-object v7, v1, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 135
    .local v7, "clazz":Ljava/lang/Class;
    invoke-direct {v1, v0}, Lcom/alipay/dexpatch/m/HotPatch;->a(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v11

    .line 136
    .local v12, "hasPatch":Z
    move v12, v10

    const-string v13, "lastPatchLoadTime"

    if-eqz v10, :cond_1

    .line 137
    :try_start_1
    sput-object v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 139
    const-string v10, "lastPatchLoaded"

    sget-object v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-wide v14, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    const-string v10, "loadPatch"

    new-array v14, v9, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v11

    const-class v15, Ljava/lang/ClassLoader;

    aput-object v15, v14, v8

    invoke-virtual {v7, v10, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v1, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    .line 143
    invoke-virtual {v10, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    iget-object v10, v1, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    iget-object v14, v1, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v11

    aput-object v3, v9, v8

    invoke-virtual {v10, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    if-eqz v12, :cond_2

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 147
    sget-wide v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    const-string/jumbo v0, "setupHotPatch (AndFix) success."

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v4    # "aam":Ljava/lang/Object;
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "clazzAlipayAndfixManager":Ljava/lang/Class;
    .end local v7    # "clazz":Ljava/lang/Class;
    .end local v12    # "hasPatch":Z
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "setupHotPatch (AndFix) error."

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iput-object v0, v1, Lcom/alipay/dexpatch/m/HotPatch;->c:Ljava/lang/Throwable;

    .line 185
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public startHookBundlePreLoad()V
    .locals 3

    .line 319
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/dexpatch/m/HotPatch$1;

    invoke-direct {v1, p0}, Lcom/alipay/dexpatch/m/HotPatch$1;-><init>(Lcom/alipay/dexpatch/m/HotPatch;)V

    const-string/jumbo v2, "startHookBundlePreLoad"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public startHookHost([Ljava/lang/String;)V
    .locals 10

    .line 267
    const-string v0, "DynamicRelease"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    const-string v3, "getPatchNames"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 271
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 272
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    nop

    .line 274
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 275
    array-length v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v9, p1, v7

    .line 276
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 277
    const/4 v8, 0x1

    .line 275
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 281
    :cond_1
    const/4 v8, 0x0

    :cond_2
    if-nez v8, :cond_3

    .line 282
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_3
    goto :goto_0

    .line 287
    :cond_4
    iget-object p1, p0, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android-phone-mobilesdk-quinox"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    .line 290
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 291
    invoke-direct {p0, v2}, Lcom/alipay/dexpatch/m/HotPatch;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const-string v6, "lastPatchLoadTime"

    if-eqz v5, :cond_5

    .line 293
    :try_start_1
    sput-object v2, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 295
    const-string v7, "lastPatchLoaded"

    sget-object v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_5
    iget-object v7, p0, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v4

    aput-object p1, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    if-eqz v5, :cond_6

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 301
    sget-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_6
    goto :goto_2

    .line 307
    :cond_7
    const-string/jumbo p1, "startHookHost (AndFix) success."

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    goto :goto_3

    .line 308
    :catchall_0
    move-exception p1

    .line 309
    iput-object p1, p0, Lcom/alipay/dexpatch/m/HotPatch;->c:Ljava/lang/Throwable;

    .line 310
    const-string/jumbo v1, "startHookHost (AndFix) error."

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :goto_3
    invoke-virtual {p0}, Lcom/alipay/dexpatch/m/HotPatch;->monitorSuccess()V

    .line 316
    return-void
.end method

.method public startHookHostPreLoad([Ljava/lang/String;)V
    .locals 10

    .line 216
    const-string v0, "DynamicRelease"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    const-string v2, "getPreLoadPatchNames"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 217
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 218
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    nop

    .line 220
    if-eqz p1, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 221
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v8, p1, v6

    .line 222
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 223
    const/4 v7, 0x1

    .line 221
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 227
    :cond_1
    const/4 v7, 0x0

    :cond_2
    if-nez v7, :cond_3

    .line 228
    iget-object v5, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    goto :goto_0

    .line 233
    :cond_4
    iget-object p1, p0, Lcom/alipay/dexpatch/m/HotPatch;->e:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 234
    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    .line 235
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 236
    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android-phone-mobilesdk-quinox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 238
    invoke-direct {p0, v4}, Lcom/alipay/dexpatch/m/HotPatch;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const-string v6, "lastPatchLoadTime"

    if-eqz v5, :cond_5

    .line 240
    :try_start_1
    sput-object v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 242
    const-string v7, "lastPatchLoaded"

    sget-object v8, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_5
    iget-object v7, p0, Lcom/alipay/dexpatch/m/HotPatch;->b:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v3

    aput-object p1, v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    if-eqz v5, :cond_6

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 248
    sget-wide v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6
    goto :goto_2

    .line 254
    :cond_7
    const-string/jumbo p1, "startHookHostPreLoad (AndFix) success."

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception p1

    .line 256
    const-string/jumbo v1, "startHookHostPreLoad (AndFix) error."

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    return-void
.end method
