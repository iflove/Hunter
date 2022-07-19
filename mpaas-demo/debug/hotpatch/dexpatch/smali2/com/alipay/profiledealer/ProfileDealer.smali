.class public Lcom/alipay/profiledealer/ProfileDealer;
.super Ljava/lang/Object;
.source "ProfileDealer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfileDealer"

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->a:Z

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    .line 17
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->c:Z

    .line 18
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->d:Z

    .line 19
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->e:Z

    .line 20
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileDealer;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 39
    monitor-exit v0

    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alipay/profiledealer/ProfileUtil;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/profiledealer/libprofiledealer.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "ProfileDealer"

    const-string v3, "load profiledealer.so got error!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    nop

    .end local v1    # "tr":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 37
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()Z
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized call_replaceProcessProfilingInfo()V
    .locals 2

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 125
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_1

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/profiledealer/ProfileDealer;->native_call_replace_ProcessProfilingInfo(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_1
    monitor-exit v0

    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native native_call_replace_ProcessProfilingInfo(I)Z
.end method

.method private static native native_replaceJitAddSamples()Z
.end method

.method private static native native_replaceJitCompileMethod()Z
.end method

.method private static native native_replaceProcessProfilingInfo(I)Z
.end method

.method private static native native_replaceProfileThis()Z
.end method

.method private static native native_setReplaceAddSampleCount(ZS)V
.end method

.method public static declared-synchronized replaceJitAddSamples()V
    .locals 2

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 73
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 77
    monitor-exit v0

    return-void

    .line 79
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->d:Z

    .line 80
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_2

    .line 81
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->native_replaceJitAddSamples()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :cond_2
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized replaceJitCompileMethod()V
    .locals 2

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 59
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 60
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 63
    monitor-exit v0

    return-void

    .line 65
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->c:Z

    .line 66
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_2

    .line 67
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->native_replaceJitCompileMethod()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_2
    monitor-exit v0

    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized replaceProcessProfilingInfo()V
    .locals 2

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 111
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 112
    monitor-exit v0

    return-void

    .line 114
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 115
    monitor-exit v0

    return-void

    .line 117
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->f:Z

    .line 118
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_2

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/profiledealer/ProfileDealer;->native_replaceProcessProfilingInfo(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_2
    monitor-exit v0

    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized replaceProfileThis()V
    .locals 2

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 97
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->e:Z

    .line 104
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_2

    .line 105
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->native_replaceProfileThis()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_2
    monitor-exit v0

    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setReplaceAddSampleCount(ZS)V
    .locals 2
    .param p0, "replace"    # Z
    .param p1, "targetCount"    # S

    const-class v0, Lcom/alipay/profiledealer/ProfileDealer;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->a()V

    .line 87
    invoke-static {}, Lcom/alipay/profiledealer/ProfileDealer;->b()Z

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
    sget-boolean v1, Lcom/alipay/profiledealer/ProfileDealer;->b:Z

    if-eqz v1, :cond_1

    .line 91
    invoke-static {p0, p1}, Lcom/alipay/profiledealer/ProfileDealer;->native_setReplaceAddSampleCount(ZS)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_1
    monitor-exit v0

    return-void

    .line 85
    .end local p0    # "replace":Z
    .end local p1    # "targetCount":S
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
