.class public Lcom/alipay/dexpatch/nat/DPNative;
.super Ljava/lang/Object;
.source "DPNative.java"


# static fields
.field private static volatile a:Z = false

.field private static volatile b:Z = false

.field private static volatile c:Z = false

.field private static volatile d:Z = false

.field private static volatile e:Z = false

.field private static volatile f:Z = false

.field private static volatile g:Z = false

.field private static volatile h:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 7

    const-class v0, Lcom/alipay/dexpatch/nat/DPNative;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->a:Z

    const-string v2, "dexpatch"

    .line 7
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isX86CPU()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_x86"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    const-string v4, "DexP.Native"

    const-string v5, "load libdexpatch.so 1 failed"

    .line 14
    invoke-static {v4, v3, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :try_start_4
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "plugins_lib"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 20
    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    const-string v2, "DexP.Native"

    const-string v3, "load libdexpatch.so 2 failed"

    .line 22
    invoke-static {v2, v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v0

    return-void

    .line 0
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native hookDvmResolveClass()I
.end method

.method private static native resumeArtJit(I)Z
.end method

.method private static native stopArtJit(I)Z
.end method

.method public static declared-synchronized tryHookDalvikResolveClass()Z
    .locals 4

    const-class v0, Lcom/alipay/dexpatch/nat/DPNative;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/nat/DPNative;->a()V

    .line 2
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->b:Z

    if-nez v1, :cond_0

    const-string v1, "DexP.Native"

    const-string/jumbo v2, "tryStopArtJit: so not loaded"

    .line 3
    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->c:Z

    if-eqz v1, :cond_1

    .line 6
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return v1

    :cond_1
    nop

    .line 8
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->c:Z

    .line 10
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isX86CPU()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return v1

    .line 14
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alipay/dexpatch/nat/DPNative;->hookDvmResolveClass()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v2, "DexP.Native"

    const-string v3, "hookDvmResolveClass failed"

    .line 16
    invoke-static {v2, v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 18
    :goto_1
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return v1

    .line 0
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized tryResumeArtJit()Z
    .locals 5

    const-class v0, Lcom/alipay/dexpatch/nat/DPNative;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/nat/DPNative;->a()V

    .line 2
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "DexP.Native"

    const-string/jumbo v3, "tryResumeArtJit: so not loaded"

    .line 3
    invoke-static {v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return v2

    .line 6
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_3

    const/16 v3, 0x1b

    if-gt v1, v3, :cond_3

    .line 10
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->g:Z

    if-eqz v1, :cond_1

    .line 11
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return v1

    .line 14
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/dexpatch/nat/DPNative;->resumeArtJit(I)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "DexP.Native"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryResumeArtJit: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/dexpatch/nat/DPNative;->h:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->h:Z

    if-eqz v1, :cond_2

    .line 18
    sput-boolean v2, Lcom/alipay/dexpatch/nat/DPNative;->f:Z

    .line 19
    sput-boolean v2, Lcom/alipay/dexpatch/nat/DPNative;->e:Z

    .line 21
    :cond_2
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_5
    const-string v3, "DexP.Native"

    const-string/jumbo v4, "tryResumeArtJit error"

    .line 23
    invoke-static {v3, v1, v4}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return v2

    :cond_3
    :try_start_6
    const-string v1, "DexP.Native"

    const-string/jumbo v2, "tryResumeArtJit: no need"

    .line 24
    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 0
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized tryStopArtJit()Z
    .locals 5

    const-class v0, Lcom/alipay/dexpatch/nat/DPNative;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/nat/DPNative;->a()V

    .line 2
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "DexP.Native"

    const-string/jumbo v3, "tryStopArtJit: so not loaded"

    .line 3
    invoke-static {v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return v2

    .line 6
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    if-lt v1, v3, :cond_3

    const/16 v3, 0x1b

    if-gt v1, v3, :cond_3

    .line 10
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->e:Z

    if-eqz v1, :cond_1

    .line 11
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return v1

    :cond_1
    nop

    .line 13
    :try_start_2
    sput-boolean v4, Lcom/alipay/dexpatch/nat/DPNative;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/dexpatch/nat/DPNative;->stopArtJit(I)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "DexP.Native"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryStopArtJit: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/dexpatch/nat/DPNative;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->f:Z

    if-eqz v1, :cond_2

    .line 19
    sput-boolean v2, Lcom/alipay/dexpatch/nat/DPNative;->h:Z

    .line 20
    sput-boolean v2, Lcom/alipay/dexpatch/nat/DPNative;->g:Z

    .line 22
    :cond_2
    sget-boolean v1, Lcom/alipay/dexpatch/nat/DPNative;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_6
    const-string v3, "DexP.Native"

    const-string/jumbo v4, "tryStopArtJit error"

    .line 24
    invoke-static {v3, v1, v4}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return v2

    :cond_3
    :try_start_7
    const-string v1, "DexP.Native"

    const-string/jumbo v2, "tryStopArtJit: no need"

    .line 25
    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v0

    return v4

    .line 0
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
