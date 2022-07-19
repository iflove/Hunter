.class public Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedService;
.super Landroid/app/Service;
.source "OreoServiceUnlimitedService.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/coco/IOreoServiceUnlimited;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->shouldUseIt(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 18
    :cond_0
    new-instance v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited$WrappedBinder;

    invoke-direct {v0, v1, p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited$WrappedBinder;-><init>(Landroid/os/Binder;Landroid/app/Service;)V

    return-object v0
.end method

.method public onStartServiceFromBind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 24
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedService;->onStartCommand(Landroid/content/Intent;II)I

    .line 25
    return-void
.end method
