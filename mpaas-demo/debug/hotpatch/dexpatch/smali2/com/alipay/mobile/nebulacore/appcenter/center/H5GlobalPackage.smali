.class public Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;
.super Ljava/lang/Object;
.source "H5GlobalPackage.java"


# static fields
.field public static final HEADER_ENTRY_NAME:Ljava/lang/String; = "header.json"

.field public static final TAG:Ljava/lang/String; = "H5GlobalPackage"

.field public static final TINY_RES_KEY:Ljava/lang/String; = "tinyRes"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->c:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "canDegrade"    # Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "append resource package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5GlobalPackage"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 176
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "appId"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "appType"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    .line 179
    .local v1, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setCanDegrade(Z)V

    .line 180
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 5
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "content"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 382
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->size()I

    move-result v0

    const-string/jumbo v1, "|"

    const-string v2, "_"

    if-lez v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Y_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 386
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getPkgInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 387
    .local v3, "tempInfo":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_N_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 394
    .end local v3    # "tempInfo":Ljava/lang/String;
    :goto_0
    return-object p0
.end method

.method private static a()V
    .locals 9

    .line 313
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 321
    .local v3, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 322
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v1

    move-object v4, v2

    .line 323
    .local v4, "appSet":Ljava/util/Set;
    move-object v4, v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 324
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 325
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 328
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    const-string v5, "H5GlobalPackage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is tinyAppCommRes not add in PackageList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    goto :goto_0

    .line 333
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "H5GlobalPackage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init global app "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v6, "appId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "appType"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    new-instance v7, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v2    # "appId":Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 341
    :cond_2
    monitor-exit v0

    return-void

    .line 344
    .end local v4    # "appSet":Ljava/util/Set;
    :cond_3
    const-string v1, "H5GlobalPackage"

    const-string v2, "init global app fail !! "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v3    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 11
    .param p0, "contentPackage"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 292
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 293
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "h5_mainUrlDegrade"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 296
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 297
    const-string/jumbo v0, "resMainDocInvalidTime"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 299
    .local v7, "outDatedSecond":J
    move-wide v7, v3

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 300
    const-wide/32 v7, 0x3f480

    .line 302
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 303
    .local v3, "updateAppTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "main doc resource check updateAppTime: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", config: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "H5GlobalPackage"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v7

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-gez v0, :cond_1

    .line 305
    const/4 v0, 0x1

    return v0

    .line 309
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "updateAppTime":J
    .end local v7    # "outDatedSecond":J
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static addHeader(Ljava/lang/String;[B)V
    .locals 13
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 77
    const-string v0, "h5_resManifest"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 79
    .local v0, "configObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "matchHeaders"

    const-string v2, "YES"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 87
    .local v1, "tmpData":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addHeader from header.json: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5GlobalPackage"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 90
    .local v4, "headerMapJsonSet":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 91
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v2, "headerUrlList":Ljava/util/Set;
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->c:Ljava/util/Map;

    invoke-interface {v5, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move-object v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 94
    .local v8, "url":Ljava/lang/String;
    invoke-static {v4, v8, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 95
    .local v6, "headerMapJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v9

    if-eqz v9, :cond_4

    .line 96
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v9, "headerMap":Ljava/util/Map;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 98
    .local v11, "headerKey":Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v7, "headerMapVal":Ljava/lang/String;
    move-object v7, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 100
    invoke-interface {v9, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v7    # "headerMapVal":Ljava/lang/String;
    .end local v11    # "headerKey":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 103
    :cond_3
    sget-object v10, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v6    # "headerMapJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "headerMap":Ljava/util/Map;
    :cond_4
    goto :goto_0

    .line 107
    .end local v2    # "headerUrlList":Ljava/util/Set;
    :cond_5
    return-void
.end method

.method public static addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "canDegrade"    # Z
    .param p3, "preLoad"    # Z

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackageSync(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 116
    return-void
.end method

.method public static addResourcePackageSync(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "canDegrade"    # Z
    .param p3, "preLoad"    # Z
    .param p4, "sync"    # Z

    .line 127
    const-string v0, "H5GlobalPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addResourcePackage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 132
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a()V

    .line 133
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    .line 137
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 139
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 140
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 142
    .local v1, "packageMap":Ljava/util/Map;
    const-string/jumbo v3, "tinyRes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    if-eqz v1, :cond_3

    .line 144
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 145
    .local v2, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v2, v3

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setPreload(Z)V

    .line 147
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    goto :goto_0

    .line 149
    :cond_2
    const-string v3, "H5GlobalPackage"

    const-string v4, "h5ContentPackage==null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    monitor-exit v0

    return-void

    .line 155
    .end local v2    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 157
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v2

    .line 158
    .local v2, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    .line 161
    .end local v1    # "packageMap":Ljava/util/Map;
    .end local v2    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_4
    goto :goto_1

    .line 162
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .restart local v1    # "packageMap":Ljava/util/Map;
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v3

    .line 164
    .restart local v2    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v2, v3

    invoke-virtual {v3, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setPreload(Z)V

    .line 165
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    .line 170
    .end local v1    # "packageMap":Ljava/util/Map;
    .end local v2    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    :cond_7
    :goto_2
    return-void
.end method

.method public static clearAllResourcePackages()V
    .locals 6

    .line 204
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    const-string v0, "H5GlobalPackage"

    const-string v1, "clearAllResourcePackages"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 210
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 211
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 212
    .local v0, "commonAppIdSet":Ljava/util/Set;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "removeAppIdList":Ljava/util/List;
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "tinyRes"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 218
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->clearResourcePackages(Ljava/lang/String;)V

    .line 220
    .end local v1    # "appId":Ljava/lang/String;
    goto :goto_1

    .line 222
    .end local v0    # "commonAppIdSet":Ljava/util/Set;
    .end local v3    # "removeAppIdList":Ljava/util/List;
    :cond_3
    return-void
.end method

.method public static clearResourcePackages(Ljava/lang/String;)V
    .locals 4
    .param p0, "keyStr"    # Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearResourcePackages remove : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5GlobalPackage"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 193
    .local v1, "urlList":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_2
    return-void

    .line 185
    .end local v1    # "urlList":Ljava/util/Set;
    :cond_3
    :goto_1
    return-void
.end method

.method public static getContent(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isMainDoc"    # Z

    .line 248
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    monitor-enter v0

    .line 250
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 251
    .local v3, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v3, v5

    invoke-virtual {v5, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 252
    .local v4, "bytes":[B
    move-object v4, v5

    if-eqz v5, :cond_0

    .line 253
    const-string v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[res] load response from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    monitor-exit v0

    return-object v4

    .line 258
    .end local v3    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v4    # "bytes":[B
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 266
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 267
    .local v1, "mapEntry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 268
    .local v3, "packageMap":Ljava/util/Map;
    move-object v3, v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 269
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 270
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 271
    .local v5, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v5, v8

    invoke-virtual {v8, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v8

    .line 272
    .local v6, "bytes":[B
    move-object v6, v8

    if-eqz v8, :cond_4

    .line 273
    if-eqz p1, :cond_3

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const-string v0, "H5GlobalPackage"

    const-string v7, "isMainDocInvalid"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    move-object v7, v2

    .line 276
    .local v7, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v7, v0

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 277
    const-string v0, "H5_APP_EXCEP"

    const-string v8, "^step=maininvalid"

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 278
    return-object v2

    .line 280
    .end local v7    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    const-string v0, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "[res] load response from "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " package "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-object v6

    .line 285
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v6    # "bytes":[B
    :cond_4
    goto :goto_2

    .line 287
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;
    .end local v3    # "packageMap":Ljava/util/Map;
    :cond_5
    goto/16 :goto_1

    .line 288
    :cond_6
    return-object v2

    .line 263
    :cond_7
    :goto_3
    return-object v2

    .line 259
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getHeader(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getResContentByAppId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .locals 3
    .param p0, "mainAppId"    # Ljava/lang/String;
    .param p1, "resAppId"    # Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v1

    .line 236
    .local v2, "resMap":Ljava/util/Map;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 237
    return-object v1

    .line 240
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 241
    .local v1, "resContent":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->waitLockIfNeed()V

    .line 244
    :cond_2
    return-object v1

    .line 232
    .end local v1    # "resContent":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v2    # "resMap":Ljava/util/Map;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getResPkgInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 349
    const-string v0, ""

    .line 350
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    monitor-enter v1

    .line 351
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 353
    .local v4, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 354
    .end local v4    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    goto :goto_0

    .line 351
    :cond_0
    move-object v2, v3

    move-object v4, v2

    .line 356
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 358
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 359
    .local v1, "pkgMap":Ljava/util/Map;
    move-object v1, v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 360
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 361
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 362
    .local v3, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .end local v3    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 366
    :cond_2
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->b:Ljava/util/Map;

    const-string/jumbo v5, "tinyRes"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 367
    .local v2, "tinyResMap":Ljava/util/Map;
    move-object v2, v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 368
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    .local v3, "tinyEntry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 370
    .local v5, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .end local v3    # "tinyEntry":Ljava/util/Map$Entry;
    .end local v5    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    goto :goto_2

    .line 375
    .end local v1    # "pkgMap":Ljava/util/Map;
    .end local v2    # "tinyResMap":Ljava/util/Map;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 356
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static prepare()V
    .locals 4

    .line 67
    const-string v0, "H5GlobalPackage"

    const-string/jumbo v1, "prepare global package"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a()V

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->a:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
