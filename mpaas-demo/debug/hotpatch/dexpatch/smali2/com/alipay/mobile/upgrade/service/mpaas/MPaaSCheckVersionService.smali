.class public abstract Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "MPaaSCheckVersionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apkFilePath(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Ljava/lang/String;
.end method

.method public abstract checkNewVersion(Landroid/app/Activity;)V
.end method

.method public abstract installApk(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method

.method public abstract installApk(Ljava/lang/String;)V
.end method

.method public abstract setIntervalTime(J)V
.end method

.method public abstract setMPaaSCheckCallBack(Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;)V
.end method

.method public abstract update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method

.method public abstract update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
.end method
