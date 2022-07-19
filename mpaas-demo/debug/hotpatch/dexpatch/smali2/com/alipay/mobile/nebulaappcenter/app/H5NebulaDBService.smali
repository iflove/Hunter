.class public Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
.super Ljava/lang/Object;
.source "H5NebulaDBService.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;
    }
.end annotation


# static fields
.field public static LIMIT_CODE:I

.field private static a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;


# instance fields
.field private b:D

.field private c:D

.field private d:I

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 323
    const/16 v0, 0x400

    sput v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->e:Ljava/lang/Boolean;

    .line 366
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 35
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cleanAllFailList()V
    .locals 1

    .line 309
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->e()V

    .line 310
    return-void
.end method

.method public cleanAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public cleanFailedRequestAppList(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Ljava/util/Map;)V

    .line 216
    return-void
.end method

.method public clearAllTable(Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;)V
    .locals 1

    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->g()V

    .line 264
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->b()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->g()V

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    .line 269
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;->getCleared()V

    .line 271
    :cond_1
    return-void
.end method

.method public clearPresetMemory()V
    .locals 0

    .line 296
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->a()V

    .line 297
    return-void
.end method

.method public clearUpdateTime(Ljava/lang/String;)V
    .locals 1

    .line 355
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public createOrUpdateAppPoolLimit(I)V
    .locals 1

    .line 233
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    .line 234
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(I)V

    .line 235
    return-void
.end method

.method public createOrUpdateConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
    .locals 2

    .line 359
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getApp_pool_limit()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    .line 360
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getNormalReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->c:D

    .line 361
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getLimitReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->b:D

    .line 363
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V

    .line 364
    return-void
.end method

.method public createOrUpdateExtra(Ljava/lang/String;)V
    .locals 1

    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public createOrUpdateLimitReqRate(D)V
    .locals 1

    .line 117
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->b:D

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->b(D)V

    .line 119
    return-void
.end method

.method public createOrUpdateNormalReqRate(D)V
    .locals 1

    .line 207
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->c:D

    .line 208
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(D)V

    .line 209
    return-void
.end method

.method public deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public deleteAppInstall(Ljava/lang/String;)V
    .locals 1

    .line 319
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->b(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 248
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllApp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestAppInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestAppVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestLocalReportAppVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAppInfoAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
    .locals 2

    .line 52
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public getAppInfoList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAppPoolLimit()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    if-gtz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->k()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    .line 242
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->d:I

    return v0
.end method

.method public getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConfigExtra()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedRequestAppList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object p1

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    return-object p1

    .line 137
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstalledApp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLastAllUpdateTime()Ljava/lang/String;
    .locals 1

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitReqRate()D
    .locals 5

    .line 109
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->b:D

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->b:D

    return-wide v0
.end method

.method public getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 142
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object p1

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    return-object p1

    .line 146
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNormalReqRate()D
    .locals 5

    .line 199
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->c:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->f()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->c:D

    .line 202
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->c:D

    return-wide v0
.end method

.method public getStrictReqRate()I
    .locals 1

    .line 123
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->l()I

    move-result v0

    return v0
.end method

.method public getUpdateAppTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasSetConfig()Z
    .locals 1

    .line 314
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->i()Z

    move-result v0

    return v0
.end method

.method public insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public isLimitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 161
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 286
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onSwitchAccount()V
    .locals 0

    .line 280
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->b()V

    .line 281
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->b()V

    .line 282
    return-void
.end method

.method public rpcIsLimit()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 338
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->l()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->e:Ljava/lang/Boolean;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 173
    const-string p2, "h5_resManifest"

    invoke-static {p2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 175
    const-string/jumbo v0, "parsePublicUrl"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NO"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 176
    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 177
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 179
    :cond_0
    return-void
.end method

.method public saveAppInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/util/List;)V

    .line 188
    return-void
.end method

.method public setDefaultConfig()V
    .locals 1

    .line 305
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->m()V

    .line 306
    return-void
.end method

.method public setFailedRequestAppList(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->b(Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public setRpcIsLimit(Z)V
    .locals 1

    .line 330
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->e:Ljava/lang/Boolean;

    .line 331
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->b(I)V

    .line 332
    return-void
.end method

.method public unMarkNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public updateAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 183
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "unavailable_reason"

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 275
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method
