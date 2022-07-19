.class public Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;)Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;ILcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->reportBehaviorLog(ILcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V

    return-void
.end method

.method private getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .locals 2

    .line 145
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 147
    return-object v0
.end method

.method private getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    .locals 2

    .line 136
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 138
    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 140
    return-object v0
.end method

.method private reportBehaviorLog(ILcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V
    .locals 12

    .line 157
    const/16 v0, 0xcc

    if-eq v0, p1, :cond_0

    const/16 v1, 0xca

    if-ne v1, p1, :cond_1

    .line 158
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string/jumbo v2, "upgrade_type"

    const-string/jumbo v3, "normal_upgrade"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p2, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->upgradeVersion:Ljava/lang/String;

    const-string/jumbo v3, "newversion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v3, "need_upgrade"

    const-string v4, "ALL-NEED-UPGRADE-160323"

    const-string v5, ""

    invoke-static {v2, v3, v4, v5, v1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    :cond_1
    if-ne v0, p1, :cond_2

    .line 166
    sget-object v6, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    iget-object v11, p2, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;->upgradeVersion:Ljava/lang/String;

    const-string v7, "ever_upgrade"

    const-string v8, "EVER-UPGRADE-160323"

    const-string v9, ""

    const-string/jumbo v10, "newversion"

    invoke-static/range {v6 .. v11}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6536\u5230\u5e7f\u64ad\u7684action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpgradeBroadcastReceiver"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "com.alipay.mobile.framework.ACTIVITY_DESTROY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    const-string p1, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->isInAlertWhiteList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string v0, "AlipayLogin \u9500\u6bc1 reInitDialog"

    invoke-interface {p2, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->reInitUpdateDialog()V

    .line 51
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;->getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/receiver/UpgradeBroadcastReceiver;Landroid/content/Intent;)V

    invoke-virtual {p1, v0, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 126
    return-void
.end method
