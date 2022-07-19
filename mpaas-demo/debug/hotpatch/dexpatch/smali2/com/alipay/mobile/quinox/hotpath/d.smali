.class public Lcom/alipay/mobile/quinox/hotpath/d;
.super Ljava/lang/Object;
.source "InstantRun.java"


# static fields
.field private static a:Lcom/alipay/mobile/quinox/hotpath/d;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/hotpath/d;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Z)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "debuggable"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    .line 50
    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/hotpath/d;->c:Z

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/hotpath/d;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/hotpath/d;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Z)Lcom/alipay/mobile/quinox/hotpath/d;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "debuggable"    # Z

    .line 34
    sget-object v0, Lcom/alipay/mobile/quinox/hotpath/d;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/alipay/mobile/quinox/hotpath/d;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/hotpath/d;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alipay/mobile/quinox/hotpath/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/hotpath/d;-><init>(Landroid/app/Application;Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/hotpath/d;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/hotpath/d;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8
    .param p1, "patchName"    # Ljava/lang/String;

    const-string v0, "IR.InstantRun.Quinox"

    .line 67
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 68
    .local v3, "clazzAInstantRunManager":Ljava/lang/Class;
    const-string v4, "getInstance"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    const-string v4, "hasPatch"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2, v4, v6, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v4, v1

    .line 70
    .local v4, "hasPatch":Z
    move v4, v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Call InstantRunManager.hasPatch("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") result:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    return v4

    .line 74
    .end local v3    # "clazzAInstantRunManager":Ljava/lang/Class;
    .end local v4    # "hasPatch":Z
    :catchall_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/hotpath/d;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/hotpath/d;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    .local v1, "clazzAInstantRunManager":Ljava/lang/Class;
    const-string v2, "getInstance"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    const-string v2, "cleanPatches"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    nop

    .end local v1    # "clazzAInstantRunManager":Ljava/lang/Class;
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.InstantRun.Quinox"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 10
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 81
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 82
    .local v2, "hasPatch":Z
    move v2, v0

    const-string v3, "lastPatchLoadTime"

    if-eqz v0, :cond_0

    .line 83
    sput-object p1, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 85
    sget-object v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    const-string v4, "lastPatchLoaded"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-wide v4, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    .line 90
    .local v4, "clazzAInstantRunManager":Ljava/lang/Class;
    const-string v5, "getInstance"

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    const-string v5, "loadPatch"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/ClassLoader;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v9

    invoke-static {v0, v5, v7, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    nop

    .end local v4    # "clazzAInstantRunManager":Ljava/lang/Class;
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "IR.InstantRun.Quinox"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 97
    sget-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 7

    .line 103
    const-string v0, "IR.InstantRun.Quinox"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    const-string v2, "getInstance"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    const-string v2, "getPreLoadPatchNames"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 106
    if-eqz v1, :cond_4

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    nop

    .line 109
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 110
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, p1, v3

    .line 111
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    const/4 v5, 0x1

    .line 110
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 116
    :cond_2
    if-nez v3, :cond_3

    .line 117
    iget-object v3, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    goto :goto_0

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android-phone-mobilesdk-quinox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 126
    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 128
    :cond_5
    goto :goto_2

    .line 131
    :cond_6
    const-string p1, "startHookHostPreLoad (InstantRun) success."

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    const-string v1, "startHookHostPreLoad (InstantRun) error."

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public final b()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/hotpath/d$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/hotpath/d$1;-><init>(Lcom/alipay/mobile/quinox/hotpath/d;)V

    const-string v2, "startHookBundlePreLoad.IR"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 8

    .line 142
    const-string v0, "IR.InstantRun.Quinox"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 145
    const-string v3, "getInstance"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    const-string v3, "getPatchNames"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 148
    if-eqz v2, :cond_4

    .line 149
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    nop

    .line 151
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    array-length v5, p1

    if-lez v5, :cond_2

    .line 152
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v7, p1, v4

    .line 153
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    const/4 v6, 0x1

    .line 152
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    .line 158
    :cond_2
    if-nez v4, :cond_3

    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    goto :goto_0

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/d;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android-phone-mobilesdk-quinox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/quinox/hotpath/d;->d:Ljava/util/Set;

    .line 167
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 168
    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 170
    :cond_5
    goto :goto_2

    .line 172
    :cond_6
    const-string p1, "startHookHost (InstantRun) success."

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception p1

    .line 174
    const-string v1, "startHookHost (InstantRun) error."

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method
