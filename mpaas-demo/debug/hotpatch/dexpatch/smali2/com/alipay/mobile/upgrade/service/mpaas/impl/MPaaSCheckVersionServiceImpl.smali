.class public Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;
.super Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;
.source "MPaaSCheckVersionServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPaaSCheckVersionServiceImpl"


# instance fields
.field private final KEY_CONFIG_INTERVAL_202:Ljava/lang/String;

.field private final KEY_MPAAS_UPGRADE:Ljava/lang/String;

.field private ONE_DAY_TIME:J

.field private final SPNAME_MPAAS_UPGRADE:Ljava/lang/String;

.field private mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

.field private mInterval202:J

.field private mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService;-><init>()V

    .line 43
    const-string v0, "mpaas_upgrade"

    iput-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->SPNAME_MPAAS_UPGRADE:Ljava/lang/String;

    .line 44
    const-string v0, "last_showdialog_time"

    iput-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->KEY_MPAAS_UPGRADE:Ljava/lang/String;

    .line 46
    const-string v0, "AppUpdate_Interval"

    iput-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->KEY_CONFIG_INTERVAL_202:Ljava/lang/String;

    .line 51
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->ONE_DAY_TIME:J

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mInterval202:J

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->updateSilentUpgradeInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)J
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->getIntervalTime(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)J

    move-result-wide p0

    return-wide p0
.end method

.method private dealHasNewVersion(Landroid/app/Activity;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkUpgradePackageState(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)I

    move-result v0

    .line 119
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    new-instance v2, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;-><init>(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 179
    return-void
.end method

.method private getIntervalTime(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)J
    .locals 4

    .line 182
    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2

    .line 183
    iget-wide v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mInterval202:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 184
    return-wide v0

    .line 187
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 189
    const-string v0, "KEY_CONFIG_INTERVAL_202"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 192
    iget-wide v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->ONE_DAY_TIME:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v0, p1

    return-wide v0

    .line 196
    :cond_1
    goto :goto_0

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MPaaSCheckVersionServiceImpl"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_2
    :goto_0
    const-wide/16 v0, 0x3

    iget-wide v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->ONE_DAY_TIME:J

    mul-long v2, v2, v0

    return-wide v2
.end method

.method private hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 3

    .line 258
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    .line 259
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xce

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 260
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNewVersion() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPaaSCheckVersionServiceImpl"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return p1
.end method

.method public static setForceExitCallBack(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;)V
    .locals 0

    .line 285
    sput-object p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    .line 286
    return-void
.end method

.method private updateSilentUpgradeInfo()V
    .locals 2

    .line 268
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 269
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateUpgradeInfoCacheForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public apkFilePath(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Ljava/lang/String;
    .locals 1

    .line 248
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkNewVersion(Landroid/app/Activity;)V
    .locals 2

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 64
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;-><init>(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public installApk(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->installApk(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 277
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .line 282
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mInterval202:J

    .line 204
    return-void
.end method

.method public setMPaaSCheckCallBack(Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    .line 210
    return-void
.end method

.method public update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 1

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 225
    return-void
.end method

.method public update(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 7

    .line 229
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 231
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v1, "upgrade_dialog_from_where"

    const-string v2, "upgrade_from_about_check"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    nop

    .line 234
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xce

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x1

    .line 239
    :goto_1
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    const-string v2, "update_version"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->downloadURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->fullMd5:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 242
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateCacheJustForRetry(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 244
    return-void
.end method
