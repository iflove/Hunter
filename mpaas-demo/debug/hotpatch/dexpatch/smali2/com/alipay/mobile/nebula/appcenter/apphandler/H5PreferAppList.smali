.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
.super Ljava/lang/Object;
.source "H5PreferAppList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PreferAppList"

.field public static final defaultTime:J = 0xa4cb80L

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList; = null

.field public static final nbprefer:Ljava/lang/String; = "nbprefer"

.field public static final nbsn:Ljava/lang/String; = "nbsn"

.field public static final nbsv:Ljava/lang/String; = "nbsv"

.field private static tinyProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preferList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getPreferAppListStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 52
    .local v2, "savedList":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->checkExpired()V

    .line 56
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    move-object v3, v1

    .line 58
    .local v3, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 60
    .local v1, "appSet":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "id":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v4    # "id":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v1    # "appSet":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkExpired()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    move-object v2, v1

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 76
    .local v2, "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    move-object v2, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getSaveTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->isExpired(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 80
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V

    .line 82
    return-void

    .line 70
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void
.end method

.method private deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void

    .line 197
    :cond_1
    :goto_0
    return-void
.end method

.method private deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 220
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 221
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    const-string v3, " version: "

    const-string v4, "H5PreferAppList"

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "installPath":Ljava/lang/String;
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "downloadPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteAllAppInfo, appId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " installPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " downloadPath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 227
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 230
    .end local v0    # "downloadPath":Ljava/lang/String;
    .end local v1    # "installPath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 231
    .local v1, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "deleteDBAppInfo, appId: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method public static enablePreferList()Z
    .locals 5

    .line 294
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 295
    move-object v0, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 296
    const-string v1, "h5_preferExpired"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    .line 297
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const-string/jumbo v1, "switch"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "isOpen":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    const/4 v2, 0x0

    return v2

    .line 302
    :cond_0
    return v2

    .line 305
    .end local v1    # "isOpen":Ljava/lang/String;
    :cond_1
    return v2

    .line 308
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return v2
.end method

.method public static enableUsePrefer(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "param"    # Landroid/os/Bundle;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "prefer":Z
    if-eqz p0, :cond_0

    const-string/jumbo v1, "nbprefer"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    .line 88
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getNbsn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .line 366
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    const/4 v1, 0x0

    .line 367
    .local v1, "preferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsn()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "preferNbsn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " preferNbsn : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5PreferAppList"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v0

    .line 372
    .end local v0    # "preferNbsn":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getPreferAppListStr()Ljava/lang/String;
    .locals 3

    .line 253
    const-string v0, "h5_prefer_app_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "preferListStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get preferList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PreferAppList"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-object v0
.end method

.method private jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "H5PreferAppList"

    .line 313
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 314
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 317
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v1, "map":Ljava/util/Map;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 319
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 321
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 324
    .local v5, "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    nop

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    goto :goto_0

    .line 328
    :cond_1
    goto :goto_1

    .line 326
    :catch_0
    move-exception v4

    .line 327
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse map : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-object v1

    .line 315
    .end local v1    # "map":Ljava/util/Map;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-object v2
.end method

.method private savePreferAppList()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "preferListStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set preferList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PreferAppList"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "h5_prefer_app_list"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static startCheckPermissionScheme(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 9
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    const-string v0, "H5PreferAppList"

    .line 334
    const-string v1, "alipays://platformapi/startapp?appId=20001101&token=preferconvert&scheme="

    .line 335
    .local v1, "goSchemeStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 336
    .local v4, "encodeSchemeBuilder":Ljava/lang/StringBuilder;
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "alipays://platformapi/startapp?appId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v2, "copyParams":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 339
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/os/Bundle;

    .line 341
    :cond_0
    const-string/jumbo v5, "nbsource"

    const-string v6, "debug"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getNbsn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "nbsn"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getPreferVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "nbsv"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 346
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 348
    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    nop

    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_0

    .line 355
    :cond_1
    goto :goto_1

    .line 353
    :catch_0
    move-exception v6

    .line 354
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encodeSchemeBuilder : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "encodeScheme":Ljava/lang/String;
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 359
    .local v3, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v3, v7

    if-eqz v7, :cond_2

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "scheme : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    .line 363
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "nbsn"    # Ljava/lang/String;

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "version":Ljava/lang/String;
    .end local p3    # "nbsn":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearPreferAppList()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    const-string v0, "h5_prefer_app_list"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public clearProcessCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-void
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v1

    .line 145
    .local v3, "containBool":Ljava/lang/Boolean;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    :cond_0
    :try_start_1
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v1

    .line 151
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 153
    :try_start_2
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 154
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 155
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->containPreferAppId(Ljava/lang/String;)Z

    move-result v0

    .line 157
    .local v0, "contain":Z
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    monitor-exit p0

    return v0

    .line 162
    .end local v0    # "contain":Z
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_1
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "H5PreferAppList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "containBool":Ljava/lang/Boolean;
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    nop

    .line 185
    :goto_0
    monitor-exit p0

    return v2

    .line 165
    :cond_3
    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 166
    monitor-exit p0

    return v2

    .line 168
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    move-object v3, v1

    .line 169
    .local v3, "contain":Z
    move v3, v0

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .local v1, "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    move-object v1, v0

    if-nez v0, :cond_5

    .line 172
    monitor-exit p0

    return v2

    .line 175
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getSaveTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->remove(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    monitor-exit p0

    return v2

    .line 180
    :cond_6
    monitor-exit p0

    return v3

    .line 182
    .end local v1    # "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :cond_7
    monitor-exit p0

    return v3

    .line 142
    .end local v3    # "contain":Z
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteAppInfoWithAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    const/4 v1, 0x0

    .line 212
    .local v1, "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 213
    return-void

    .line 215
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->remove(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public declared-synchronized getPreferVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 116
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 118
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 120
    :try_start_1
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 121
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 122
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getPreferVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 127
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "H5PreferAppList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    :cond_1
    nop

    .line 139
    :goto_0
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 130
    :cond_2
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 133
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 134
    .local v1, "h5PreferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    move-object v1, v0

    if-nez v0, :cond_4

    .line 135
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 137
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v0

    .line 114
    .end local v1    # "h5PreferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isExpired(J)Z
    .locals 9
    .param p1, "saveTime"    # J

    .line 265
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 266
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    const-string v3, "H5PreferAppList"

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "h5_preferExpired"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 268
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "time":I
    :try_start_0
    const-string/jumbo v4, "time"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 274
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v4

    .line 273
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    if-lez v0, :cond_0

    .line 276
    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    .local v4, "expiredTime":J
    goto :goto_1

    .line 278
    .end local v4    # "expiredTime":J
    :cond_0
    const-wide/32 v4, 0xa4cb80

    .line 280
    .end local v0    # "time":I
    .restart local v4    # "expiredTime":J
    goto :goto_1

    .line 281
    .end local v4    # "expiredTime":J
    :cond_1
    const-wide/32 v4, 0xa4cb80

    .line 283
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "expiredTime":J
    goto :goto_1

    .line 284
    .end local v4    # "expiredTime":J
    :cond_2
    const-wide/32 v4, 0xa4cb80

    .line 287
    .restart local v4    # "expiredTime":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v6, p1, v4

    cmp-long v8, v0, v6

    if-lez v8, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 288
    .local v0, "result":Z
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " currentTime "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " saveTime : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " expiredTime : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 101
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-nez v0, :cond_1

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V

    .line 110
    const-string v0, "H5PreferAppList"

    const-string v1, "also remove from H5DevAppList"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
