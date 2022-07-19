.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/bundledownload/BundleDownloadApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "BundleDownloadApp.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/bundledownload/BundleDownloadApp;->a:Landroid/os/Bundle;

    .line 25
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 30
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 40
    return-void
.end method
