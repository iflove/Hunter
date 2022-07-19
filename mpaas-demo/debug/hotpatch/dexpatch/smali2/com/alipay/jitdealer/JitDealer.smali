.class public Lcom/alipay/jitdealer/JitDealer;
.super Ljava/lang/Object;
.source "JitDealer.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/jitdealer/JitDealer;->a:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/jitdealer/JitDealer;->b:Z

    .line 18
    sput-boolean v0, Lcom/alipay/jitdealer/JitDealer;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/alipay/jitdealer/JitDealer;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-boolean v1, Lcom/alipay/jitdealer/JitDealer;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 34
    monitor-exit v0

    return-void

    .line 36
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/alipay/jitdealer/JitDealer;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    const-string v1, "jitdealer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/jitdealer/JitDealer;->b:Z

    .line 40
    const-string v1, "JitDealer"

    const-string v2, "load jitdealer.so success!"

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_3
    const-string v2, "JitDealer"

    const-string v3, "load jitdealer.so got error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    monitor-exit v0

    return-void

    .line 32
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()Z
    .locals 4

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "JitDealer"

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isX86CPU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "checkSupport isX86, false!"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v1

    .line 55
    :cond_1
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isYunOS()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isAOC()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    const-string v0, "checkSupport isYunOS but not AOC, false!"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v1

    .line 59
    :cond_2
    const-string v0, "checkSupport true!"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_3
    :goto_0
    const-string v0, "checkSupport apiLevel not support, false!"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v1
.end method

.method public static declared-synchronized disableJitCompileMethod()V
    .locals 2

    const-class v0, Lcom/alipay/jitdealer/JitDealer;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->a()V

    .line 87
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/jitdealer/JitDealer;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 91
    monitor-exit v0

    return-void

    .line 93
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/jitdealer/JitDealer;->c:Z

    .line 94
    sget-boolean v1, Lcom/alipay/jitdealer/JitDealer;->b:Z

    if-eqz v1, :cond_2

    .line 95
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->native_disableJitCompileMethod()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_2
    monitor-exit v0

    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native native_disableJitCompileMethod()V
.end method

.method private static native native_setUseJitCompilation(IZ)Z
.end method

.method private static native native_toggleJitRef(IZ)Z
.end method

.method public static declared-synchronized setUseJitCompilation(Z)Z
    .locals 3

    const-class v0, Lcom/alipay/jitdealer/JitDealer;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->a()V

    .line 76
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 77
    monitor-exit v0

    return v2

    .line 79
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/jitdealer/JitDealer;->b:Z

    if-eqz v1, :cond_1

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, p0}, Lcom/alipay/jitdealer/JitDealer;->native_setUseJitCompilation(IZ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 82
    :cond_1
    monitor-exit v0

    return v2

    .line 74
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized toggleJitRef(Z)Z
    .locals 3

    const-class v0, Lcom/alipay/jitdealer/JitDealer;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->a()V

    .line 65
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 66
    monitor-exit v0

    return v2

    .line 68
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/jitdealer/JitDealer;->b:Z

    if-eqz v1, :cond_1

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, p0}, Lcom/alipay/jitdealer/JitDealer;->native_toggleJitRef(IZ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 71
    :cond_1
    monitor-exit v0

    return v2

    .line 63
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
