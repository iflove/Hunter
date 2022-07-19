.class public interface abstract Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
.super Ljava/lang/Object;
.source "MPaaSCheckVersionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MPaaSCheckCallBack"
.end annotation


# virtual methods
.method public abstract alreadyDownloaded(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V
.end method

.method public abstract dealDataInValid(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method

.method public abstract dealHasNoNewVersion(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end method

.method public abstract isUpdating()V
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method

.method public abstract onLimit(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;)V
.end method

.method public abstract showUpgradeDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V
.end method

.method public abstract startCheck()V
.end method
