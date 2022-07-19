.class public Lcom/alipay/mobile/quinox/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;
    }
.end annotation


# static fields
.field public static NEED_PRELOAD:Z = false

.field public static NEED_SYNC:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field public static sInstance:Lcom/alipay/mobile/quinox/LauncherApplication; = null

.field private static final wrapperClassName:Ljava/lang/String; = "com.alipay.mobile.quinox.application.LauncherApplicationWrapper"


# instance fields
.field private applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

.field private dexPatchManager:Ljava/lang/Object;

.field public isInstallMultiDex:Z

.field public mCurrentProcessStartupTime:J

.field public mOnCreateEndTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_PRELOAD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 233
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCurrentProcessStartupTime:J

    .line 256
    iput-wide v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOnCreateEndTime:J

    return-void
.end method

.method private checkAndPrepareDexPatch()V
    .locals 14

    const-string v0, "load host DexPatch cost time:"

    const-string v1, "ensureInit DexPatchManager cost time:"

    const-string v2, "init DexPatchExceptionHandler cost time:"

    const-string v3, "check DexPatchManager.hasPatchFile cost time:"

    const-string v4, "check process cost time:"

    const-string v5, "LauncherApplication"

    .line 73
    const-wide/16 v6, 0x0

    .local v6, "time_start":J
    const/4 v8, 0x0

    move-object v9, v8

    .line 76
    .local v9, "processInfo":Lcom/alipay/dexpatch/compat/d;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-wide v6, v10

    .line 78
    const-string v10, "check process"

    invoke-static {v5, v10}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v10, Lcom/alipay/dexpatch/compat/d;

    invoke-direct {v10, p0}, Lcom/alipay/dexpatch/compat/d;-><init>(Landroid/content/Context;)V

    .line 80
    move-object v9, v10

    invoke-virtual {v10}, Lcom/alipay/dexpatch/compat/d;->a()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Lcom/alipay/dexpatch/compat/d;->b()Z

    move-result v10

    if-nez v10, :cond_0

    .line 81
    const-string v0, "not patching process, just create a instance"

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->createDexPatchManager()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 90
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    nop

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->createDexPatchManager()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    return-void

    .line 103
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-wide v6, v10

    .line 105
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v10, "hasPatchFile"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 106
    .local v8, "method_hasPatchFile":Ljava/lang/reflect/Method;
    iget-object v10, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 107
    .local v4, "hasPatchFile":Ljava/lang/Boolean;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "check DexPatchManager.hasPatchFile: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v10, :cond_2

    goto/16 :goto_1

    .line 116
    .end local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .end local v8    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    nop

    .line 123
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-wide v6, v3

    .line 125
    invoke-virtual {v9}, Lcom/alipay/dexpatch/compat/d;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    invoke-static {p0}, Lcom/alipay/dexpatch/compat/a;->a(Landroid/content/Context;)Lcom/alipay/dexpatch/compat/a;

    .line 127
    invoke-static {}, Lcom/alipay/dexpatch/compat/a;->a()Lcom/alipay/dexpatch/compat/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/compat/a;->c()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 130
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/dexpatch/compat/a;->a()Lcom/alipay/dexpatch/compat/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/compat/a;->e()V

    .line 131
    const-string v3, "init DexPatchExceptionHandler"

    invoke-static {v5, v3}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 138
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    nop

    .line 144
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ensureInit"

    new-array v4, v11, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v8

    .line 147
    .local v3, "method_init":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "ensureInit DexPatchManager"

    invoke-static {v5, v2}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    nop

    .end local v3    # "method_init":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    nop

    .line 160
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v6, v1

    .line 162
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "loadModulePatch"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v11

    const-class v10, Ljava/lang/ClassLoader;

    const/4 v12, 0x1

    aput-object v10, v8, v12

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v3

    .line 163
    .local v2, "method_loadModulePatch":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v4, v11

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    aput-object v8, v4, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "load host DexPatch"

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    nop

    .end local v2    # "method_loadModulePatch":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    nop

    .end local v1    # "tr":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 149
    :catchall_2
    move-exception v0

    .line 151
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 133
    :catchall_4
    move-exception v0

    .line 135
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 116
    .restart local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .restart local v8    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    .end local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .end local v8    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :catchall_6
    move-exception v0

    .line 113
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 85
    :catchall_8
    move-exception v0

    .line 87
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_a
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private createDexPatchManager()Z
    .locals 14

    const-string v0, "createDexPatchManager cost time:"

    const-string v1, "LauncherApplication"

    .line 173
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 174
    return v3

    .line 176
    :cond_0
    const-wide/16 v4, 0x0

    .line 178
    .local v4, "time_start":J
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v4, v6

    .line 180
    const/4 v6, 0x0

    .line 182
    .local v6, "isDebug":Z
    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4000

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    move-object v10, v7

    .line 183
    .local v10, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v9, v8

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move v6, v9

    .line 187
    .end local v10    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v9

    move-object v10, v9

    .line 186
    .local v10, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v10}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v10    # "tr":Ljava/lang/Throwable;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "check debug: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v9, "create DexPatchManager"

    invoke-static {v1, v9}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v9, "com.alipay.dexpatch.DexPatchManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 192
    .local v10, "clazz_DexPatchManager":Ljava/lang/Class;
    move-object v10, v9

    const-string v11, "getInstance"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v2

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 193
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 195
    .local v7, "temp_dexPatchManager":Ljava/lang/Object;
    const-string v8, "setDPContext"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.DexPatchContext"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 196
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.ContextImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v8, "setDPLogger"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.util.DPLogger$DPLoggerImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 199
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.LoggerImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v8, "setDPMonitor"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.util.DPMonitor$DPMonitorImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 202
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.MonitorImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {v7}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->setDexPatchManager(Ljava/lang/Object;)V

    .line 205
    iput-object v7, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->dexPatchManager:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v3

    .line 207
    .end local v6    # "isDebug":Z
    .end local v7    # "temp_dexPatchManager":Ljava/lang/Object;
    .end local v10    # "clazz_DexPatchManager":Ljava/lang/Class;
    :catchall_1
    move-exception v3

    .line 209
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v1, v3}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    nop

    .end local v3    # "tr":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    nop

    .line 213
    return v2

    .line 211
    :catchall_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private declared-synchronized ensureWrapper()V
    .locals 6

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 218
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    const-string v0, "com.alipay.mobile.quinox.application.LauncherApplicationWrapper"

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 222
    .local v1, "delegateClass":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/alipay/mobile/quinox/LauncherApplication;

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 223
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "delegateClass":Ljava/lang/Class;
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "create applicationWrapper failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/quinox/LauncherApplication;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1

    .line 239
    sget-object v0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method


# virtual methods
.method public addBootListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->addBootListener(Ljava/util/Observer;)V

    .line 317
    :cond_0
    return-void
.end method

.method public addChromeResources(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/String;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->addChromeResources(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    .line 336
    :cond_0
    return-void
.end method

.method public addListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->addListener(Ljava/util/Observer;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCurrentProcessStartupTime:J

    .line 54
    sput-object p0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 55
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->checkAndPrepareDexPatch()V

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->ensureWrapper()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    .line 418
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public bootFinish()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->bootFinish()Z

    move-result v0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cleanPatches()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->cleanPatches()V

    .line 541
    :cond_0
    return-void
.end method

.method public clearCachedBundleResources()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->clearCachedBundleResources()V

    .line 358
    :cond_0
    return-void
.end method

.method public getAgentActivity()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getAgentActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgentActivityLayout()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getAgentActivityLayout()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBundleContext()Ljava/lang/Object;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getBundleContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleManager()Ljava/lang/Object;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundlesManager()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getBundlesManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 572
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 519
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 580
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 554
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 556
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHostClassLoader()Ljava/lang/Object;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldResources()Landroid/content/res/Resources;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getProcessInfo()Ljava/lang/Object;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getProcessInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 610
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesManager()Ljava/lang/Object;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getResourcesManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 511
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSuperAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 621
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getSuperCacheDir()Ljava/io/File;
    .locals 1

    .line 645
    invoke-super {p0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSuperContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 653
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getSuperExternalCacheDir()Ljava/io/File;
    .locals 1

    .line 649
    invoke-super {p0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSuperExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 641
    invoke-super {p0, p1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSuperFilesDir()Ljava/io/File;
    .locals 1

    .line 637
    invoke-super {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSuperResources()Landroid/content/res/Resources;
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSuperSharedPerferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 633
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 625
    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getTarget()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->isDebug()Z

    move-result v0

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHacked()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->isHacked()Z

    move-result v0

    return v0

    .line 432
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->isMainProcess()Z

    move-result v0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needProcessHostResources()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->needProcessHostResources()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 451
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 260
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->ensureWrapper()V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->onCreate()V

    .line 266
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOnCreateEndTime:J

    .line 267
    return-void
.end method

.method public onHostResourcesCreated(Landroid/content/res/Resources;Z)V
    .locals 1
    .param p1, "hostResources"    # Landroid/content/res/Resources;
    .param p2, "preloadCookie"    # Z

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->onHostResourcesCreated(Landroid/content/res/Resources;Z)V

    .line 352
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 459
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->onLowMemory()V

    .line 463
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->onTerminate()V

    .line 446
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 447
    return-void
.end method

.method public postInit()V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->postInit()V

    .line 668
    :cond_0
    return-void
.end method

.method public recover()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->recover()V

    .line 469
    :cond_0
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object p1

    .line 596
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 597
    return-void
.end method

.method public removeBootListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->removeBootListener(Ljava/util/Observer;)V

    .line 323
    :cond_0
    return-void
.end method

.method public removeListener(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->removeListener(Ljava/util/Observer;)V

    .line 311
    :cond_0
    return-void
.end method

.method public retryHookDvm()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->retryHookDvm()V

    .line 287
    :cond_0
    return-void
.end method

.method public setFirstClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setFirstClass(Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public setHacked(Z)V
    .locals 1
    .param p1, "hacked"    # Z

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setHacked(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public setLocaleToApplicationResources(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setLocaleToApplicationResources(Ljava/util/Locale;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setLocaleToResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setSuperThemeId(I)V
    .locals 0
    .param p1, "resid"    # I

    .line 629
    invoke-super {p0, p1}, Landroid/app/Application;->setTheme(I)V

    .line 630
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setTheme(I)V

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->setTheme(I)V

    .line 402
    return-void
.end method

.method public setupInstrumentation()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setupInstrumentation()Z

    move-result v0

    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setupResources(Z)V
    .locals 1
    .param p1, "isBooting"    # Z

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->setupResources(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopHookDvm(Z)V
    .locals 1
    .param p1, "forceGc"    # Z

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->stopHookDvm(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public superBindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 661
    invoke-super {p0, p1, p2, p3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public superStartService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 657
    invoke-super {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->applicationWrapper:Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 601
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object p1

    .line 603
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 604
    return-void
.end method
