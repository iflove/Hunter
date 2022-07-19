.class public Lcom/alipay/arthook/ArtHook;
.super Ljava/lang/Object;
.source "ArtHook.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/arthook/ArtHook;->a:Z

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/arthook/ArtHook;->b:Z

    .line 20
    sput-boolean v0, Lcom/alipay/arthook/ArtHook;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 5

    const-class v0, Lcom/alipay/arthook/ArtHook;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-boolean v1, Lcom/alipay/arthook/ArtHook;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 29
    monitor-exit v0

    return-void

    .line 31
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/alipay/arthook/ArtHook;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result v1

    .line 34
    .local v1, "runingBit":I
    const-string v2, "ArtHook"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load libarthook.so, currentRuningBit="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 36
    const-string v2, "arthook"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/arthook/ArtHook;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .end local v1    # "runingBit":I
    :cond_1
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "ArtHook"

    const-string v3, "load libarthook.so got error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .end local v1    # "tr":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 27
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()Z
    .locals 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "ArtHook"

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v0, v3, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_2
    :goto_0
    const-string/jumbo v0, "no support vm type"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v1

    .line 46
    :cond_3
    :goto_1
    const-string/jumbo v0, "no support sdk_int"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v1
.end method

.method private static native native_replaceProcessProfilingInfo(I)Z
.end method

.method public static declared-synchronized replaceProcessProfilingInfo()V
    .locals 2

    const-class v0, Lcom/alipay/arthook/ArtHook;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/alipay/arthook/ArtHook;->a()V

    .line 59
    invoke-static {}, Lcom/alipay/arthook/ArtHook;->b()Z

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
    sget-boolean v1, Lcom/alipay/arthook/ArtHook;->c:Z
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
    sput-boolean v1, Lcom/alipay/arthook/ArtHook;->c:Z

    .line 66
    sget-boolean v1, Lcom/alipay/arthook/ArtHook;->b:Z

    if-eqz v1, :cond_2

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/alipay/arthook/ArtHook;->native_replaceProcessProfilingInfo(I)Z
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
