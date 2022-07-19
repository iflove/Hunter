.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "DynamicReleaseApp.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "21000001"

.field public static final KEY_DYNAMIC_RELEASE_BARCODE:Ljava/lang/String; = "dynamicrelease_barcode"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "param"    # Landroid/os/Bundle;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;Landroid/os/Bundle;)V

    const-string v2, "dynamicrelease_barcode"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 44
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->a:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->a(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->a:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->a(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 60
    return-void
.end method
