.class public Lcom/alipay/mobile/quinox/utils/STLLibUtil;
.super Ljava/lang/Object;
.source "STLLibUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "STLLibUtil"

.field private static final mQuinixSosAgainLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sEnableGnustl:Z

.field public static sEnableStlport:Z

.field private static sGNUSTLLoadSuccess:Z

.field private static final sOtherSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sQuinixSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sSTLPortLoadSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    .line 34
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sQuinixSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->mQuinixSosAgainLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sOtherSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sGNUSTLLoadSuccess:Z

    .line 41
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sSTLPortLoadSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportCpuList()[Ljava/lang/String;
    .locals 4

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    const-string v0, "arm64-v8a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_1
    const-string v0, "armeabi-v7a"

    const-string v1, "armeabi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getSupportCpuList(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "running64"    # Z
    .param p1, "addons"    # [Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    .local v0, "cpuSet":Ljava/util/Set;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    .line 155
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->getSupported64BitABIS()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 158
    :cond_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_2
    :goto_0
    if-eqz p1, :cond_8

    .line 166
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_8

    aget-object v4, p1, v1

    .line 167
    .local v2, "addon":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "addon":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_4
    if-eqz p1, :cond_6

    .line 174
    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v4, p1, v1

    .line 175
    .restart local v2    # "addon":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 178
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "addon":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    :cond_6
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 183
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_7
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 192
    .local v1, "rArray":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    return-object v1
.end method

.method public static loadSTLSosInQuinoxProcess(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sQuinixSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "stlport_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 51
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sSTLPortLoadSuccess:Z

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "STLLibUtil"

    const-string v2, "sSTLPortLoadSuccess"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "gnustl_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 57
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sGNUSTLLoadSuccess:Z

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "STLLibUtil"

    const-string v2, "sGNUSTLLoadSuccess"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadSTLSosInQuinoxProcessAgain(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sGNUSTLLoadSuccess:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->mQuinixSosAgainLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sSTLPortLoadSuccess:Z

    if-nez v1, :cond_1

    .line 73
    const-string v1, "stlport_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 74
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sSTLPortLoadSuccess:Z

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "STLLibUtil"

    const-string v2, "sSTLPortLoadAgainSuccess"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sGNUSTLLoadSuccess:Z

    if-nez v1, :cond_2

    .line 79
    const-string v1, "gnustl_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 80
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sGNUSTLLoadSuccess:Z

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "STLLibUtil"

    const-string v2, "sGNUSTLLoadAgainSuccess"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static loadSo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .line 91
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "STLLibUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "plugins_lib"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    .line 96
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "nativeLibDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lib"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .end local v3    # "nativeLibDir":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    nop

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 99
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 100
    .local v3, "e2":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return v2
.end method

.method public static loadStlInMainProcessAsync(Landroid/content/Context;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processInfo"    # Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/utils/STLLibUtil$1;-><init>(Landroid/content/Context;)V

    const-string v2, "load-so"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 215
    return-void
.end method

.method public static loadStlSosInOtherProcess(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-object v0, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sOtherSosLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableStlport:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "stlport_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 118
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->sEnableGnustl:Z

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "gnustl_shared"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 121
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
