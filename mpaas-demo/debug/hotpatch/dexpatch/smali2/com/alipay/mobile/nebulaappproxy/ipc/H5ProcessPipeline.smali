.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;
.super Ljava/lang/Object;
.source "H5ProcessPipeline.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/process/H5EventHandler;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/process/H5EventHandler;)V
    .locals 0
    .param p1, "h5EventHandler"    # Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 28
    return-void
.end method

.method private a()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerTinyAppIPC...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ProcessPipeline"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nebulaApp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 32
    .local v3, "handlerThread":Landroid/os/HandlerThread;
    move-object v3, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 37
    .local v0, "bizLooper":Landroid/os/Looper;
    const-string v4, "H5ProcessPipeline"

    const-string/jumbo v5, "registerReqBizHandler"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-class v5, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 43
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v5

    if-nez v5, :cond_0

    .line 44
    const-string v1, "h5Service == null"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessService;

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;-><init>()V

    invoke-direct {v5, v0, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessService;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;-><init>()V

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessClient;

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessCallback;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessCallback;-><init>()V

    invoke-direct {v5, v0, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessClient;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 59
    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProcessH5Activity()[Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "h5Activity":[Ljava/lang/Class;
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProcessH5TransActivity()[Ljava/lang/Class;

    move-result-object v4

    .line 70
    .local v4, "h5TransActivity":[Ljava/lang/Class;
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 71
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 72
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    aget-object v8, v1, v6

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v7, v8, v9, v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    .line 77
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 78
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->a:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    aget-object v8, v4, v6

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v7, v8, v9, v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 81
    .end local v6    # "i":I
    :cond_4
    return-void
.end method
