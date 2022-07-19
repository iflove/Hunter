.class Lcom/alipay/mobile/liteprocess/ipc/IpcClient;
.super Ljava/lang/Object;
.source "IpcClient.java"


# static fields
.field private static f:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Class;

.field private c:Landroid/content/ServiceConnection;

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "serviceClass"    # Ljava/lang/Class;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->d:Z

    .line 27
    iput v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    .line 32
    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->c:Landroid/content/ServiceConnection;

    .line 33
    return-void
.end method

.method private a()Z
    .locals 4

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    .line 94
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 95
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    goto :goto_0

    .line 100
    .end local v1    # "manager":Landroid/app/ActivityManager;
    :cond_1
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "IpcClient start service begin!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "IpcClient start service end!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "iex":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "IpcClient start service failed!"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v1    # "iex":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    return-void

    .line 50
    .local v1, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public isBind()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->d:Z

    return v0
.end method

.method public rebind()V
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "LiteProcess"

    if-nez v0, :cond_1

    .line 64
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->f:Z

    if-nez v0, :cond_0

    .line 65
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->f:Z

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " server not alive and stop self"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->stopSelfByClient()V

    .line 70
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->unbind()V

    .line 74
    iget v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    sget v3, Lcom/alipay/mobile/liteprocess/Config;->MAX_RETRY_BIND_TIMES:I

    if-ge v0, v3, :cond_2

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " retry bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->bind()V

    return-void

    .line 79
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can not retry bind "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setBind(Z)V
    .locals 0
    .param p1, "bound"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->d:Z

    .line 85
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->d:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->d:Z

    .line 60
    :cond_0
    return-void
.end method
