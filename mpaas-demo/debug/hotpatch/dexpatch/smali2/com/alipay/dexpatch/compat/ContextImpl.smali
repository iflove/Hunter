.class public Lcom/alipay/dexpatch/compat/ContextImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Lcom/alipay/dexpatch/DexPatchContext;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:Z


# instance fields
.field private e:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->b:Z

    .line 48
    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->c:Z

    .line 49
    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez p2, :cond_0

    .line 261
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 272
    nop

    .line 273
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 274
    return-object v0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 267
    move-object p0, v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {p0, p1, p2}, Lcom/alipay/dexpatch/compat/ContextImpl;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1

    .line 270
    :cond_1
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a()V
    .locals 9

    .line 207
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 209
    .local v2, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.KillProcess"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    const-string/jumbo v3, "setNeedRestart"

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

    .line 211
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    nop

    .end local v2    # "context":Landroid/content/Context;
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    .local v0, "tr":Ljava/lang/Throwable;
    const/4 v1, 0x4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexP.ContextImpl"

    invoke-static {v1, v3, v2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static b()V
    .locals 12

    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchProcessor"

    const-string/jumbo v1, "monitorDexPatchSuccess"

    const-string v2, "DexP.ContextImpl"

    .line 219
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v6, v2, v1}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v9, v7

    .line 222
    .local v9, "context":Landroid/content/Context;
    move-object v9, v8

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 223
    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v5

    const-class v11, Ljava/lang/Throwable;

    aput-object v11, v10, v4

    invoke-virtual {v8, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 224
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v9, v8, v5

    aput-object v7, v8, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    nop

    .end local v9    # "context":Landroid/content/Context;
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v1

    move-object v9, v1

    .line 226
    .local v9, "tr":Ljava/lang/Throwable;
    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v9    # "tr":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v8, v9

    .line 231
    .local v8, "context":Landroid/content/Context;
    move-object v8, v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "monitorAndfixSuccess"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v9, v4

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 233
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v8, v1, v5

    aput-object v7, v1, v4

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    nop

    .end local v8    # "context":Landroid/content/Context;
    return-void

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .line 240
    sget-object v0, Lcom/alipay/dexpatch/compat/ContextImpl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/alipay/dexpatch/compat/ContextImpl;->a:Ljava/lang/String;

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 245
    .local v2, "class_ActivityThread":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "currentActivityThread"

    invoke-static {v1, v3, v0}, Lcom/alipay/dexpatch/compat/ContextImpl;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 246
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "activityThread":Ljava/lang/Object;
    const-string v4, "getProcessName"

    invoke-static {v2, v4, v0}, Lcom/alipay/dexpatch/compat/ContextImpl;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 248
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    sput-object v3, Lcom/alipay/dexpatch/compat/ContextImpl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 250
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v2    # "class_ActivityThread":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 251
    .local v1, "tr":Ljava/lang/Throwable;
    const/4 v2, 0x4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DexP.ContextImpl"

    invoke-static {v2, v4, v3}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static setOuterEnvInited()V
    .locals 2

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->b:Z

    .line 34
    sget-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    sput-boolean v1, Lcom/alipay/dexpatch/compat/ContextImpl;->c:Z

    .line 36
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->a()V

    .line 38
    :cond_0
    sget-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->d:Z

    if-eqz v0, :cond_1

    .line 39
    sput-boolean v1, Lcom/alipay/dexpatch/compat/ContextImpl;->d:Z

    .line 40
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->b()V

    .line 42
    :cond_1
    return-void
.end method

.method public static setOuterFrameworkInited()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/dexpatch/DexPatchManager;->trigPreparePatch()V

    .line 46
    return-void
.end method


# virtual methods
.method public beforeModulePatchLoad(Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 137
    sget-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->b:Z

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->d:Z

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->b()V

    .line 142
    return-void
.end method

.method public classesLoadByOriginClassLoader()[Ljava/lang/String;
    .locals 1

    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public customPatch(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexFiles"    # Ljava/util/List;
    .param p3, "oatDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object v3, p1

    check-cast v3, Ldalvik/system/PathClassLoader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alipay/dexpatch/SystemClassLoaderAdder;->installDexes(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;ZZ)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "markDPDexPatch"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    .local v2, "method_markDPDexPatch":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    nop

    .line 98
    .end local v2    # "method_markDPDexPatch":Ljava/lang/reflect/Method;
    return v3

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    .local v1, "tr":Ljava/lang/Throwable;
    const/4 v2, 0x4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DexP.ContextImpl"

    invoke-static {v2, v4, v3}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 96
    return v0

    .line 87
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return v0
.end method

.method public getClassLoaderType(Ljava/lang/String;)I
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 60
    const-string v0, "host"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 55
    return-object p1
.end method

.method public getOriginDexFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/dexpatch/compat/ContextImpl;->e:Ljava/lang/Class;

    const-string v1, "DexP.ContextImpl"

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    const-string v0, "com.alipay.dexpatch.compat.DexPatchBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/dexpatch/compat/ContextImpl;->e:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    move-object v0, v3

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/alipay/dexpatch/compat/ContextImpl;->e:Ljava/lang/Class;

    const-string v5, "getBundleDexFilePath"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 77
    .local v0, "method_getBundleDexFilePath":Ljava/lang/reflect/Method;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v9

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    .line 78
    .end local v0    # "method_getBundleDexFilePath":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v0

    .line 79
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-object v3
.end method

.method public isPureProcess()Z
    .locals 5

    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->c()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 149
    .local v3, "processName":Ljava/lang/String;
    move-object v3, v2

    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    return v0

    .line 153
    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v4, v1

    .line 154
    .local v4, "context":Landroid/content/Context;
    move-object v4, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 156
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 157
    .local v1, "tr":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method public loadByOriginClassLoader(ILjava/lang/String;)Z
    .locals 2
    .param p1, "clType"    # I
    .param p2, "className"    # Ljava/lang/String;

    .line 103
    const-string v0, "com.alipay.mobile.framework.quinoxless.QuinoxlessApplication"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    return v1

    .line 105
    :cond_0
    const-string v0, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    return v1

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPatchPrepared(Ljava/lang/String;)V
    .locals 3
    .param p1, "patchName"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPatchPrepared: patchName"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "DexP.ContextImpl"

    invoke-static {v1, v2, v0}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->b:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->d:Z

    .line 121
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->b()V

    .line 124
    return-void
.end method

.method public triggerKillProcess()V
    .locals 1

    .line 128
    sget-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->b:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/dexpatch/compat/ContextImpl;->c:Z

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/compat/ContextImpl;->a()V

    .line 133
    return-void
.end method

.method public triggerKillPureProcesses(Ljava/util/List;)V
    .locals 12
    .param p1, "patchRunningProcesses"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DexP.ContextImpl"

    .line 163
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 167
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 168
    .local v3, "pureProcessWhiteList":Ljava/util/Set;
    move-object v3, v1

    const-string v4, "com.eg.android.AlipayGphone:lite1"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v1, "com.eg.android.AlipayGphone:lite2"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "com.eg.android.AlipayGphone:lite3"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "com.eg.android.AlipayGphone:lite4"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "com.eg.android.AlipayGphone:lite5"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v1, "com.eg.android.AlipayGphone:tools"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "com.eg.android.AlipayGphone:push"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v1, "pureProcessKillList":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "patchRunningProcess":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "patchRunningProcess":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 185
    .local v4, "context":Landroid/content/Context;
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 186
    .local v2, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "list":Ljava/util/List;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 188
    .local v6, "mUid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 190
    .local v8, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, v9, :cond_3

    .line 193
    iget-object v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 197
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "triggerKillPureProcesses: killing processName="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v0, v10}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v8    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    goto :goto_1

    .line 202
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "mUid":I
    :cond_4
    return-void

    .line 200
    :catchall_0
    move-exception v2

    .line 201
    .local v2, "tr":Ljava/lang/Throwable;
    const/4 v4, 0x4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v2    # "tr":Ljava/lang/Throwable;
    return-void

    .line 164
    .end local v1    # "pureProcessKillList":Ljava/util/Set;
    .end local v3    # "pureProcessWhiteList":Ljava/util/Set;
    :cond_5
    :goto_2
    return-void
.end method
