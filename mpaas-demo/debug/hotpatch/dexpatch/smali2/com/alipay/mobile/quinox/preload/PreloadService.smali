.class public Lcom/alipay/mobile/quinox/preload/PreloadService;
.super Landroid/app/Service;
.source "PreloadService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static triggerPreload(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ServiceConnection;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preloadBy"    # Ljava/lang/String;
    .param p2, "bindFlag"    # I

    const-string v0, "PreloadService"

    .line 23
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/quinox/preload/PreloadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v1

    .line 26
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    new-instance v2, Lcom/alipay/mobile/quinox/preload/PreloadService$1;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/preload/PreloadService$1;-><init>()V

    .line 38
    .local v2, "serviceConnection":Landroid/content/ServiceConnection;
    invoke-virtual {p0, v3, v2, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    return-object v2

    .line 41
    :cond_0
    const-string v4, "bindService failed, try start service."

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    nop

    .end local v2    # "serviceConnection":Landroid/content/ServiceConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "triggerPreload failed!"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
