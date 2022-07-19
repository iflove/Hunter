.class public abstract Lcom/alipay/android/launcher/TaskDispatchService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "TaskDispatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;,
        Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyScanApp(I)V
.end method

.method public abstract notifyStartApp(Ljava/lang/String;I)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 12
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 17
    return-void
.end method

.method public abstract registerScanAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;)V
.end method

.method public abstract registerStartAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;)V
.end method

.method public abstract unregisterScanAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;)V
.end method

.method public abstract unregisterStartAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;)V
.end method
