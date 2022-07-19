.class public Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;
.super Ljava/lang/Object;
.source "UpgradeDialogListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeDialogListener"


# instance fields
.field private mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

.field private updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;


# direct methods
.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 39
    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    const-class p2, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 42
    return-void
.end method

.method private getWifiMac()Ljava/lang/String;
    .locals 4

    .line 141
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    .line 142
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 143
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-object v0
.end method

.method private reportClickEvent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V
    .locals 7

    .line 117
    if-eqz p1, :cond_3

    .line 118
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    const/16 v1, 0xcb

    if-eq v1, v0, :cond_2

    const/16 v1, 0xce

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 124
    const-string v1, "MM-0104-1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 126
    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->getWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 128
    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string/jumbo v1, "newversion"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz p2, :cond_1

    .line 130
    const-string/jumbo p1, "now"

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_1

    .line 133
    :cond_1
    const-string p1, "later"

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->CLICKED:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    iget-object v6, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v2, "ForceUpgradeAfterLogin.install"

    const-string v3, "UC-QZSJ-160201-02"

    const-string v4, ""

    const-string/jumbo v5, "newversion"

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public later()V
    .locals 12

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "about_ignore_update_version"

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x93a80

    const-string/jumbo v11, "txt"

    .line 95
    invoke-virtual/range {v2 .. v11}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UpgradeDialogListener"

    const-string v3, "later() 202 \u5b58\u50a8\u5f02\u5e38"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    nop

    .line 107
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->updateNotify()V

    .line 108
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 47
    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->reportClickEvent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->startDownload()V

    .line 51
    :cond_0
    const/4 p1, -0x2

    if-ne p1, p2, :cond_1

    .line 52
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->reportClickEvent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->later()V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "UpgradeDialogListener"

    const-string/jumbo v0, "\u666e\u901a\u5f39\u6846 \u7528\u6237\u53d6\u6d88\uff0csetDoSilentDownload true"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 57
    return-void
.end method

.method public startDownload()V
    .locals 11

    .line 62
    const-string v0, "UpgradeDialogListener"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "update_version_key"

    iget-object v5, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v5, v5, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x93a80

    const-string/jumbo v10, "txt"

    .line 62
    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "startDownload \u5b58\u50a8\u5f02\u5e38"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string/jumbo v3, "update_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resultStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v0, 0xcb

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    const/16 v0, 0xce

    if-eq v2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v4, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 79
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_force_process:I

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateServices:Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v3, v3, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 83
    nop

    .line 88
    :goto_1
    return-void
.end method
