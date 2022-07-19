.class public Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;
.super Ljava/lang/Object;
.source "UpgradeConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeConfig"

.field private static sInstance:Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;


# instance fields
.field private mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;
    .locals 2

    const-class v0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->sInstance:Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;-><init>()V

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->sInstance:Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->sInstance:Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCanAlertPages()[Ljava/lang/String;
    .locals 4

    .line 38
    nop

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;->getCanAlertPages()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    if-nez v0, :cond_1

    const-string/jumbo v2, "\u767d\u540d\u5355\u4e3a\u7a7a"

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    :goto_1
    const-string v3, "UpgradeConfig"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 52
    nop

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0
.end method

.method public getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;->getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeSyncBizName()Ljava/lang/String;
    .locals 1

    .line 65
    nop

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;->getUpgradeSyncBizName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "MS-DUPGRADE"

    .line 69
    :goto_0
    return-object v0
.end method

.method public setAppDataProvider(Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->mAppDataProvider:Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;

    .line 30
    return-void
.end method
