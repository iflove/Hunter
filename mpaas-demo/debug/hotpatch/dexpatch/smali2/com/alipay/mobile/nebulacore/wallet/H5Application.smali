.class public Lcom/alipay/mobile/nebulacore/wallet/H5Application;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "H5Application.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Application"

.field private static a:I

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static sNebulaReady:Z


# instance fields
.field private c:Ljava/lang/String;

.field public currentRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private d:Landroid/os/Bundle;

.field private e:J

.field private f:Z

.field private g:Landroid/os/Bundle;

.field private h:Landroid/os/Bundle;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    .line 80
    sput v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a:I

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 235
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setUp()V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v1, "enableBugme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    .local v0, "openBugme":Z
    const-string v1, "h5_bug_me_debug_switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    .line 242
    .local v1, "bugmeSwitchOpen":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b()V

    .line 245
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/alipay/mobile/h5container/service/H5Service;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Service"    # Lcom/alipay/mobile/h5container/service/H5Service;

    .line 730
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 731
    .local v1, "sceneParams":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationAsyncStartPage:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 735
    :cond_0
    const-string v0, "package_prepare"

    const-string v2, "H5Application.asyncStartPage()"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "asyncStartPage "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5Application"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>(Landroid/os/Bundle;)V

    .line 739
    .local v0, "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    invoke-virtual {p2, p0, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "h5_app_start appId={"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} params={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    const-string v4, "start_app"

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 743
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableTinyAppDynamicConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    const/4 v1, 0x0

    .line 204
    .local v1, "taConfigProvider":Lcom/alipay/mobile/nebula/provider/TaConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5Application;Lcom/alipay/mobile/nebula/provider/TaConfigProvider;Ljava/lang/String;)V

    const-string v2, "URGENT"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 212
    :cond_1
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 230
    const-string v0, "packageLoadingShown"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 12

    .line 248
    const-string v0, "H5Application"

    const-string v1, "openBugMeByStartParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->f:Z

    .line 250
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v3, "domainWhiteList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 251
    .local v4, "domainWhiteListStr":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 252
    const-string v2, "\\|"

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "split":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v6, "domainWhiteList":Ljava/util/List;
    array-length v7, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v2, v8

    .line 255
    .local v3, "encodedDomain":Ljava/lang/String;
    move-object v3, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 258
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "domain":Ljava/lang/String;
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got domain whitelist: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v3    # "encodedDomain":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setDomainWhiteList([Ljava/lang/String;)V

    .line 265
    .end local v2    # "split":[Ljava/lang/String;
    .end local v6    # "domainWhiteList":Ljava/util/List;
    :cond_2
    invoke-static {v1, v5, v1, v5, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->debugSwitch(ZZZZZ)V

    .line 266
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableTinyAppDynamicConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    const/4 v1, 0x0

    .line 219
    .local v1, "taConfigProvider":Lcom/alipay/mobile/nebula/provider/TaConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5Application;Lcom/alipay/mobile/nebula/provider/TaConfigProvider;Ljava/lang/String;)V

    const-string v2, "URGENT"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 227
    :cond_1
    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "startMultAppParam"    # Landroid/os/Bundle;

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "multiApp":Z
    const-string v1, "startMultApp"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 460
    .local v3, "startMultiApp":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "YES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 463
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    const/4 v0, 0x1

    .line 467
    :cond_1
    if-eqz v0, :cond_3

    .line 468
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->j:Z

    if-eqz v1, :cond_3

    const-string v1, "h5_tiny_multiApp"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 469
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "\u5c0f\u7a0b\u5e8f\u4e0d\u652f\u6301MutliApp(\u53ea\u5728\u6d4b\u8bd5\u5305\u91cc\u5f39)"

    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 472
    :cond_2
    return v2

    .line 476
    :cond_3
    return v0
.end method

.method private c()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "nebulaAuthCodeKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    const/4 v2, 0x0

    .line 344
    .local v2, "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5BizProvider;->triggerBizCallback(Ljava/lang/String;)V

    .line 348
    .end local v2    # "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    :cond_0
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 608
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "url"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 609
    .local v4, "url":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "u"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "appId"

    const/4 v12, 0x0

    aput-object v6, v5, v12

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v6, v5, v13

    const-string v6, "startPage"

    invoke-static {v6, v3, v5}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startPage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "H5Application"

    invoke-static {v14, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 618
    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, "matchAppId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "matchAppId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 621
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v6

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    move-object v8, v5

    invoke-interface/range {v6 .. v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 623
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 624
    return-void

    .line 629
    .end local v5    # "matchAppId":Ljava/lang/String;
    :cond_1
    move-object v5, v3

    :cond_2
    invoke-static {v4, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    const-string v15, "stripLandingURL&Deeplink url "

    if-eqz v6, :cond_3

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bingo deeplink"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 632
    return-void

    .line 634
    :cond_3
    const-string v6, "startAppNormal"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 635
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "realUrl":Ljava/lang/String;
    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 638
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    move-object v6, v3

    .line 639
    .local v6, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v10, v5

    .end local v6    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .local v10, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v5, :cond_4

    .line 640
    invoke-interface {v10, v11, v2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v16

    .line 641
    .local v16, "result":Z
    const/4 v7, 0x1

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 642
    const-string v5, "publicId"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "bizScenario"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 641
    const-string v8, "startAppNormal"

    move-object v5, v4

    move-object v6, v11

    move-object/from16 v19, v10

    .end local v10    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .local v19, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object/from16 v10, v17

    move-object/from16 v17, v11

    .end local v11    # "realUrl":Ljava/lang/String;
    .local v17, "realUrl":Ljava/lang/String;
    move-object/from16 v11, v18

    invoke-static/range {v5 .. v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    if-eqz v16, :cond_5

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bingo deeplink in landing"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 646
    return-void

    .line 639
    .end local v16    # "result":Z
    .end local v17    # "realUrl":Ljava/lang/String;
    .end local v19    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v10    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v11    # "realUrl":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v10

    move-object/from16 v17, v11

    .line 652
    .end local v10    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v11    # "realUrl":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, v17

    move-object/from16 v10, v19

    goto :goto_0

    .line 636
    :cond_6
    move-object/from16 v17, v11

    move-object v10, v3

    move-object/from16 v5, v17

    goto :goto_0

    .line 634
    :cond_7
    move-object v10, v3

    .line 652
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v6

    .line 654
    .local v5, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v5, v6

    if-nez v6, :cond_8

    .line 655
    const-string v0, "failed to get h5 service!"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 657
    return-void

    .line 660
    :cond_8
    iget-boolean v6, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    const-string v7, "startApp"

    const-string v8, "fromType"

    if-eqz v6, :cond_9

    .line 661
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "nebulax.startApp "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :try_start_0
    const-string v6, "com.alipay.mobile.nebulax.integration.mpaas.main.H5ApplicationDelegate"

    const-string v7, "onStart"

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Lcom/alipay/mobile/framework/app/MicroApplication;

    aput-object v9, v8, v12

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v8, v13

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v12

    aput-object v2, v0, v13

    invoke-static {v6, v7, v8, v3, v0}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    return-void

    .line 668
    :catchall_0
    move-exception v0

    .line 669
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 674
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a:I

    add-int/lit8 v9, v6, 0x1

    sput v9, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v10

    .line 675
    .local v6, "asyncIndex":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->addPageParam(Ljava/lang/String;)V

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->commonParamParse(Landroid/os/Bundle;)V

    .line 680
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->j:Z

    if-eqz v0, :cond_a

    .line 683
    const-string v0, "ta_TinyParamStrategy"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "TinyParamStrategy"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 687
    .local v0, "context":Landroid/content/Context;
    new-instance v7, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v7, v3}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    move-object v8, v3

    .line 688
    .local v8, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    move-object v8, v7

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 690
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v7, v2, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 691
    const-string v7, "sessionId"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    move-result-object v9

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->h:Landroid/os/Bundle;

    invoke-virtual {v9, v7, v10}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->put(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 696
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    move-object v10, v3

    .line 697
    .local v10, "intent":Landroid/content/Intent;
    move-object v10, v9

    if-nez v9, :cond_b

    .line 698
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 699
    return-void

    .line 702
    :cond_b
    const-string v3, "asyncIndex"

    invoke-virtual {v10, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a(Landroid/os/Bundle;Lcom/alipay/mobile/h5container/service/H5Service;)V

    .line 706
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 707
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebulacore/util/H5IntentUtil;->putParam(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 710
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v3

    sget-object v9, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationStartActivity:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v3, v9, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 713
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3, v1, v10}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 714
    const-string v3, "closeAllActivityAnimation"

    invoke-static {v2, v3, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 715
    const-string v3, "startAnimation"

    const-string v9, ""

    invoke-static {v2, v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "noAnimation"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 716
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 717
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingStart()V

    return-void

    .line 719
    :cond_e
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "h5_newloadpage"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "no"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 721
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityNoAnimStart()V

    return-void

    .line 723
    :cond_f
    invoke-static {v8, v2}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V

    .line 727
    :cond_10
    return-void
.end method

.method private d()V
    .locals 3

    .line 351
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    .line 353
    return-void

    .line 355
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v1, 0x0

    .line 362
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopSelfProcess()V

    return-void

    .line 365
    :cond_1
    const-string v0, "H5Application"

    const-string v2, "onDestroy h5EventHandlerService == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    return-void

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    .line 374
    return-void
.end method

.method private static d(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "params"    # Landroid/os/Bundle;

    const-string v0, "startFromExternal"

    .line 746
    const-string v1, "inner"

    .line 747
    .local v1, "fromExternal":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "isStartFromExternal":Z
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 751
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    .line 752
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 753
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 754
    :cond_0
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 755
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    .line 759
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 760
    const-string v0, "outer"

    move-object v1, v0

    .end local v1    # "fromExternal":Ljava/lang/String;
    .local v0, "fromExternal":Ljava/lang/String;
    goto :goto_1

    .line 762
    .end local v0    # "fromExternal":Ljava/lang/String;
    .restart local v1    # "fromExternal":Ljava/lang/String;
    :cond_2
    const-string v0, "inner"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    .end local v1    # "fromExternal":Ljava/lang/String;
    .end local v2    # "isStartFromExternal":Z
    .restart local v0    # "fromExternal":Ljava/lang/String;
    move-object v1, v0

    goto :goto_1

    .line 764
    .end local v0    # "fromExternal":Ljava/lang/String;
    .restart local v1    # "fromExternal":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 765
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwable is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5Application"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    const-string v0, "app_startup_type"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_3
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 4

    .line 772
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_4

    .line 774
    const-string v1, "isOriginStartFromExternal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 776
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 778
    :cond_0
    const-string v1, "sceneparams_sharetoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 779
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_1
    const-string v1, "sourcePackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_2
    const-string v1, "webViewDegrade"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 787
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_3
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BizStartParamsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5BizStartParamsProvider;

    .line 791
    if-eqz v1, :cond_4

    .line 792
    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/nebula/provider/H5BizStartParamsProvider;->handleStartParmas(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 795
    :cond_4
    return-void
.end method


# virtual methods
.method public canRestart(Landroid/os/Bundle;)Z
    .locals 9

    .line 409
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "H5Application"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 410
    nop

    .line 412
    :try_start_0
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.main.H5ApplicationDelegate"

    const-string v5, "canRestartApp"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lcom/alipay/mobile/framework/app/MicroApplication;

    aput-object v8, v7, v4

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object p1, v6, v2

    invoke-static {v0, v5, v7, v1, v6}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 416
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, p1

    .line 421
    :cond_0
    goto :goto_0

    .line 419
    :catchall_0
    move-exception p1

    .line 420
    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "nebulax.canRestartApp "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " canRestart: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return v4

    .line 426
    :cond_1
    const-string v0, "h5_multiTaskMultiApp"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "no"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TaskUtils;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->currentRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_2

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v5, v0, :cond_2

    .line 430
    const-string p1, "can\'t restart because task changed"

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 432
    return v4

    .line 439
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b(Landroid/os/Bundle;)Z

    move-result v0

    .line 440
    if-nez v0, :cond_3

    .line 441
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->g:Landroid/os/Bundle;

    .line 443
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "canRestart "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " @"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", enableMultiApp "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-eqz v0, :cond_4

    .line 446
    const-string v1, "multiAppTag"

    const-string v3, "YES"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    return v4
.end method

.method protected destroyByActivityEmpty()V
    .locals 2

    .line 600
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "H5Application"

    const-string v1, "disable destroyByActivityEmpty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 603
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroyByActivityEmpty()V

    .line 605
    return-void
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaX(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 112
    .local v2, "sceneParams":Landroid/os/Bundle;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationOnCreate:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e(Landroid/os/Bundle;)V

    .line 116
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    const/4 v3, 0x2

    const-string v4, "H5Application"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "nebulax.onCreate "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.main.H5ApplicationDelegate"

    const-string v7, "onCreate"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Lcom/alipay/mobile/framework/app/MicroApplication;

    aput-object v9, v8, v5

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v8, v6

    new-array v9, v3, [Ljava/lang/Object;

    aput-object p0, v9, v5

    aput-object p1, v9, v6

    invoke-static {v0, v7, v8, v1, v9}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    sget-object v7, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 130
    const-string v7, "main"

    const-string v8, "uc_init"

    const-string v9, "package_prepare"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "H5Application.onCreate()"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent([Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    .line 134
    sget-boolean v7, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v7, :cond_2

    .line 135
    iget-wide v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    invoke-static {v7, v8, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_2

    .line 136
    :cond_2
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    if-nez v3, :cond_3

    .line 137
    iget-wide v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    const/4 v3, 0x3

    invoke-static {v7, v8, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_2

    .line 139
    :cond_3
    iget-wide v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    const/4 v3, 0x4

    invoke-static {v7, v8, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    .line 141
    :goto_2
    sput-boolean v6, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    .line 143
    if-eqz p1, :cond_4

    const-string v3, "sourceId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->setSourceId(Ljava/lang/String;)V

    .line 146
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "onCreate "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " @"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " param "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-nez p1, :cond_5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_3

    :cond_5
    move-object v3, p1

    :goto_3
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    .line 154
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    const-string v8, "appId"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v3, p0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRawChInfo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "chInfoMutable"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v7, "isTinyApp"

    invoke-static {v3, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->j:Z

    .line 158
    if-eqz v3, :cond_a

    .line 160
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5MapProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5MapProvider;

    .line 161
    .local v0, "h5MapProvider":Lcom/alipay/mobile/nebula/provider/H5MapProvider;
    move-object v0, v3

    if-eqz v3, :cond_6

    .line 162
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 162
    invoke-interface {v0, v3, v7}, Lcom/alipay/mobile/nebula/provider/H5MapProvider;->onH5ApplicationCreated(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    :cond_6
    const-class v3, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-object v7, v1

    .line 167
    .local v7, "apiMgr":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v7, v3

    if-eqz v3, :cond_7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isV8WorkerEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-interface {v7, v3}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isV8WorkerAvailableForApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    move v3, v6

    .line 168
    .local v3, "enableV8Worker":Z
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v8, "v8Worker"

    invoke-static {v6, v8, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 169
    .local v6, "forceV8Worker":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 170
    const-string v8, "h5_force_v8worker"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v6, v5

    .line 173
    :cond_8
    if-nez v3, :cond_9

    if-eqz v6, :cond_a

    .line 174
    :cond_9
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v8, "enablePolyfillWorker"

    const-string v9, "true"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v8, "isV8Worker"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-class v5, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    .line 177
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    move-object v1, v5

    if-eqz v5, :cond_a

    .line 178
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;->preloadWorker(Landroid/os/Bundle;)V

    .line 184
    .end local v0    # "h5MapProvider":Lcom/alipay/mobile/nebula/provider/H5MapProvider;
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    .end local v3    # "enableV8Worker":Z
    .end local v6    # "forceV8Worker":Z
    .end local v7    # "apiMgr":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->e:J

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->createAppTime:J

    .line 186
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 188
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "h5EventHandlerService "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_b
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a()V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->h:Landroid/os/Bundle;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->startMainLinkMonitor(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 272
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Application"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->cancelLinkMonitor(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->clear(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c()V

    .line 284
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushFile()V

    .line 286
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->f:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->release()V

    .line 291
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->clear(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->clearResourcePackages(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->clearAllResourcePackages()V

    .line 300
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->clear(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->clear()V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    const-string v2, "multiAppTag"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "YES"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->clearTabDataByAppId(Ljava/lang/String;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->clearProcessCache(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->isUploadLog:Z

    .line 317
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d()V

    .line 319
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "nebulax.destroyApp "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    const-string v2, "com.alipay.mobile.nebulax.integration.mpaas.main.H5ApplicationDelegate"

    const-string v4, "onDestroy"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Lcom/alipay/mobile/framework/app/MicroApplication;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-static {v2, v4, v5, v3, v0}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 327
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->j:Z

    if-eqz v0, :cond_5

    .line 333
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5MapProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5MapProvider;

    move-object v1, v3

    .line 334
    .local v1, "h5MapProvider":Lcom/alipay/mobile/nebula/provider/H5MapProvider;
    move-object v1, v0

    if-eqz v0, :cond_5

    .line 335
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 335
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebula/provider/H5MapProvider;->onH5ApplicationDestroyed(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    .end local v1    # "h5MapProvider":Lcom/alipay/mobile/nebula/provider/H5MapProvider;
    :cond_5
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 489
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 490
    return-void

    .line 493
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->handleRestartInMain(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    return-void

    .line 497
    :cond_1
    const-string v0, "u"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 498
    .local v3, "url":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const-string v0, "url"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    .line 498
    :cond_2
    move-object v9, v3

    .line 502
    .end local v3    # "url":Ljava/lang/String;
    .local v9, "url":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 504
    const-string v3, "appId"

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onRestart "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " param "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "H5Application"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v11

    .line 508
    .local v11, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v12

    .line 510
    .local v12, "resumeParams":Ljava/lang/String;
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->i:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "nebulax.restartApp "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :try_start_0
    const-string v0, "com.alipay.mobile.nebulax.integration.mpaas.main.H5ApplicationDelegate"

    const-string v4, "onRestart"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/alipay/mobile/framework/app/MicroApplication;

    const/4 v13, 0x0

    aput-object v7, v6, v13

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v13

    aput-object v8, v5, v3

    invoke-static {v0, v4, v6, v2, v5}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 523
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 524
    const-string v0, "startMultiApp"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c(Landroid/os/Bundle;)V

    .line 526
    return-void

    .line 529
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "YES"

    const-string v5, "nebulaStartflag"

    if-eqz v0, :cond_6

    if-eqz v11, :cond_6

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onRestart set resumeParams "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const-string v3, "h5_session_resume_param"

    invoke-interface {v0, v3, v12}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "H5_ReStart_Without_URL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 536
    const-string v0, "h5_optionConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    .line 537
    .local v3, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 538
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v6, v2

    .line 539
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "reStartAppIdList"

    invoke-static {v0, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v7, v2

    .line 540
    .local v7, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v7, v0

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 541
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 542
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 543
    .local v2, "copy":Landroid/os/Bundle;
    move-object v2, v0

    const-string v10, "startMultApp"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v13

    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v17

    const/16 v18, 0x0

    move-object v14, v15

    move-object/from16 v16, v2

    invoke-interface/range {v13 .. v18}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 546
    return-void

    .line 559
    .end local v2    # "copy":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    goto/16 :goto_2

    .line 561
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onRestart start page "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "cd"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    .line 564
    .local v6, "canDestroyParam":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "canDestroy"

    if-eqz v0, :cond_7

    .line 565
    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 567
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    invoke-static {v8, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 569
    const-string v6, "YES"

    move-object v0, v6

    goto :goto_1

    .line 572
    :cond_8
    move-object v0, v6

    .end local v6    # "canDestroyParam":Ljava/lang/String;
    .local v0, "canDestroyParam":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 573
    const-string v3, "OnRestart -> destroy same app"

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 578
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 579
    const-string v2, "h5_delete_CHECK_KEY"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "value":Ljava/lang/String;
    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 581
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 586
    .end local v2    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    .line 586
    const-string v3, "20000067"

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_2

    .line 589
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c(Landroid/os/Bundle;)V

    .line 590
    const-string v2, "OnRestart -> startPage"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .end local v0    # "canDestroyParam":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "h5_app_restart appId={"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} params={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method protected onStart()V
    .locals 6

    const-string v0, "H5Application"

    .line 378
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 379
    .local v3, "sceneParams":Landroid/os/Bundle;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationOnStart:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 384
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    move-object v4, v2

    .line 385
    .local v4, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 386
    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->duplicateLinkData(Landroid/os/Bundle;)V

    .line 390
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onStart "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " @"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sourceId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mSceneId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 393
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSourceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    move-object v1, v2

    .line 398
    .local v1, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c(Landroid/os/Bundle;)V

    .line 400
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Application"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public takeLastRestartParam()Landroid/os/Bundle;
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->g:Landroid/os/Bundle;

    .line 453
    .local v0, "tmp":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->g:Landroid/os/Bundle;

    .line 454
    return-object v0
.end method
