.class public Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;
.super Ljava/lang/Object;
.source "SilentUpgradeDialogListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SilentUpgradeDialogListener"


# instance fields
.field private mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

.field private updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;


# direct methods
.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    const-class p2, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 40
    return-void
.end method


# virtual methods
.method public later()V
    .locals 12

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "about_ignore_update_version"

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x93a80

    const-string/jumbo v11, "txt"

    .line 90
    invoke-virtual/range {v2 .. v11}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SilentUpgradeDialogListener"

    const-string/jumbo v3, "silent later() 202 \u5b58\u50a8\u5f02\u5e38"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    nop

    .line 102
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateNotify()V

    .line 103
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 44
    const-string/jumbo p1, "newversion"

    const-string v0, "SILENT-UPGRADE"

    const-string v1, "SilentUpgradeDialogListener"

    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string/jumbo v2, "silent user click install"

    invoke-interface {p2, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v1, "HomeSilentUpgrade.install"

    const-string v2, "160201-02"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->startInstall()V

    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, -0x2

    if-ne v2, p2, :cond_1

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string/jumbo v2, "silent user click next time"

    invoke-interface {p2, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v1, "HomeSilentUpgrade.cancel"

    const-string v2, "160201-03"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->later()V

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 56
    return-void
.end method

.method public startInstall()V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "update_version_key"

    const-wide/32 v7, 0x93a80

    const-string/jumbo v9, "txt"

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string/jumbo v2, "update_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    const/16 v2, 0xcb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xce

    if-eq v1, v2, :cond_0

    .line 80
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 74
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_force_process:I

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v3, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 77
    nop

    .line 83
    :goto_0
    return-void
.end method
