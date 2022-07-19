.class public Lcom/alipay/mobile/quinox/preload/MainPldService;
.super Landroid/app/Service;
.source "MainPldService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static triggerPreload(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    const-string v0, "MainPldService"

    if-eqz p0, :cond_1

    .line 22
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/quinox/preload/MainPldService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/alipay/mobile/quinox/preload/MainPldService$1;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/preload/MainPldService$1;-><init>()V

    .line 34
    .local v2, "serviceConnection":Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    const-string v3, "bindService failed, try start service."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serviceConnection":Landroid/content/ServiceConnection;
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "triggerPreload failed!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 53
    const/4 v0, 0x2

    return v0
.end method
