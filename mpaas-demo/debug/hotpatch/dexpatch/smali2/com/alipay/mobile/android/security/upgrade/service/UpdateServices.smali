.class public abstract Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "UpdateServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V
.end method

.method public abstract alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V
.end method

.method public abstract alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V
.end method

.method public abstract checkUpdate(Ljava/lang/String;)V
.end method

.method public abstract isUpdating()Z
.end method

.method public abstract reInitUpdateDialog()V
.end method

.method public abstract update(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V
.end method

.method public abstract update(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)V
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
.end method

.method public abstract updateCacheJustForRetry(Ljava/lang/Object;)V
.end method

.method public abstract updateImmediately()V
.end method

.method public abstract updateRpcRes(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method

.method public abstract updateUpgradeInfoCacheForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method
