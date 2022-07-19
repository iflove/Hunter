.class public Lcom/alipay/dexpatch/m/DexPatchBridge;
.super Ljava/lang/Object;
.source "DexPatchBridge.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPatches(ZZ)V
    .locals 8
    .param p0, "init"    # Z
    .param p1, "all"    # Z

    .line 67
    sget-object v0, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    const-string v1, "DexPatchBridge"

    if-nez v0, :cond_0

    .line 68
    const-string v0, "cleanPatches, but mDexPatchManager is null"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "cleanPatches"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 73
    .local v2, "method_cleanPatches":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Call DexPatchManager.cleanPatches(false, false). by "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .end local v2    # "method_cleanPatches":Ljava/lang/reflect/Method;
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static getBundleDexFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "bundleName"    # Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/alipay/dexpatch/m/DexPatchBridge;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getBundleDexFilePath for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexPatchBridge"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/dexpatch/m/DexPatchBridge;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getBundleByName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 37
    .local v3, "method_getBundleByName":Ljava/lang/reflect/Method;
    sget-object v5, Lcom/alipay/dexpatch/m/DexPatchBridge;->b:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v1

    .line 38
    .local v4, "bundle":Ljava/lang/Object;
    move-object v4, v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getLocation"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 44
    .end local v3    # "method_getBundleByName":Ljava/lang/reflect/Method;
    .end local v4    # "bundle":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 32
    :cond_2
    :goto_1
    return-object v1
.end method

.method public static loadModulePatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    const-string v0, "Call DexPatchManager.loadModulePatch cost time:"

    .line 49
    sget-object v1, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    const-string v2, "DexPatchBridge"

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 53
    :cond_0
    const-wide/16 v3, 0x0

    .line 55
    .local v3, "time_start":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v3, v5

    .line 56
    sget-object v1, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "loadModulePatch"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/ClassLoader;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    .line 57
    .local v5, "method_loadModulePatch":Ljava/lang/reflect/Method;
    sget-object v7, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    aput-object p1, v6, v10

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Call DexPatchManager.loadModulePatch("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "). by "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    nop

    .end local v5    # "method_loadModulePatch":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 50
    .end local v3    # "time_start":J
    :cond_1
    :goto_1
    const-string v0, "cleanPatches, but params invalid"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static setBundleManager(Ljava/lang/Object;)V
    .locals 0
    .param p0, "bundleManager"    # Ljava/lang/Object;

    .line 27
    sput-object p0, Lcom/alipay/dexpatch/m/DexPatchBridge;->b:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static setDexPatchManager(Ljava/lang/Object;)V
    .locals 0
    .param p0, "dexPatchManger"    # Ljava/lang/Object;

    .line 23
    sput-object p0, Lcom/alipay/dexpatch/m/DexPatchBridge;->a:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static setOuterFrameworkInited(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.dexpatch.compat.ContextImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 83
    .local v2, "clazz_ContextImpl":Ljava/lang/Class;
    const-string/jumbo v3, "setOuterFrameworkInited"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .end local v2    # "clazz_ContextImpl":Ljava/lang/Class;
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "DexPatchBridge"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
