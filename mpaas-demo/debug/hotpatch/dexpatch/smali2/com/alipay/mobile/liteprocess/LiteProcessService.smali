.class public Lcom/alipay/mobile/liteprocess/LiteProcessService;
.super Lcom/alipay/mobile/liteprocess/ipc/IpcService;
.source "LiteProcessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService5;,
        Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService4;,
        Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService3;,
        Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService2;,
        Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService1;
    }
.end annotation


# static fields
.field static a:[Ljava/lang/Class;

.field private static b:Z


# instance fields
.field private final c:Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService2;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-class v3, Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService3;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService4;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Lcom/alipay/mobile/liteprocess/LiteProcessService$LiteProcessService5;

    aput-object v3, v0, v1

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessService;->a:[Ljava/lang/Class;

    .line 51
    sput-boolean v2, Lcom/alipay/mobile/liteprocess/LiteProcessService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;-><init>()V

    .line 53
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessService$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessService$1;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService;->c:Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;

    .line 138
    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessService;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessService;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a()V

    .line 188
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessService;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "obj":Ljava/lang/Object;
    const-string/jumbo v1, "mytest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "geth5service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .end local v0    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "mytest"

    const-string/jumbo v2, "register engine step error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lcom/alipay/mobile/liteprocess/LiteProcessService;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessService;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onBind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->b(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService;->c:Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 142
    invoke-super {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;->onCreate()V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessService$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessService$2;-><init>(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const/4 v0, 0x1

    const-string v1, "NEED_PRELOAD_NEBULAX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    .local v0, "needPreloadNebulaX":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onStartCommand needPreloadNebulaX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->d()V

    .line 168
    .end local v0    # "needPreloadNebulaX":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
