.class public Lcom/alipay/mobile/android/security/upgrade/valve/DeletePackageValve;
.super Ljava/lang/Object;
.source "DeletePackageValve.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 9
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->manageUpgradeApkFile()V

    .line 10
    return-void
.end method
