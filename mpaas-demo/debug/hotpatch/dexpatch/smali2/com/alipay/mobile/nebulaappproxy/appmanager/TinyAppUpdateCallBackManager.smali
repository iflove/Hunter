.class public Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "TinyAppUpdateCallBackManager.java"


# static fields
.field private static final ON_CHECK_FOR_UPDATE:Ljava/lang/String; = "checkForUpdate"

.field private static final ON_UPDATE_FAILED:Ljava/lang/String; = "updateFailed"

.field private static final ON_UPDATE_READY:Ljava/lang/String; = "updateReady"

.field private static final TAG:Ljava/lang/String; = "TinyAppUpdateCallBackManager"

.field public static volatile sRegisteredUpdateManager:Ljava/util/Map;
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
.field private mAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sRegisteredUpdateManager:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private getTinyAppCurrentAvailableVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "installedVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTinyAppCurrentAvailableVersion...e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TinyAppUpdateCallBackManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private getTinyAppHighestVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 152
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    const-string v3, "TinyAppUpdateCallBackManager"

    if-nez v0, :cond_0

    .line 154
    const-string v0, "getTinyAppHighestVersion...h5AppProvider is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "highestVersion":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 163
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTinyAppHighestVersion...e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private hasRegisterUpdateManager()Z
    .locals 2

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sRegisteredUpdateManager:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 48
    .local v1, "registered":Ljava/lang/Boolean;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 118
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    .line 120
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 10
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onResult...result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyAppUpdateCallBackManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->hasRegisterUpdateManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 61
    .local v4, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    const-string v5, "data"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v2, 0x0

    const-string v5, "checkForUpdate"

    const-string v6, "hasUpdate"

    if-eqz p1, :cond_2

    .line 64
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->getTinyAppCurrentAvailableVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "current":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->getTinyAppHighestVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v3, "highest":Ljava/lang/String;
    move-object v3, v8

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 68
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 70
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;Lcom/alibaba/fastjson/JSONObject;)V

    .line 97
    .local v2, "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->mAppId:Ljava/lang/String;

    invoke-static {v5, v3, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 98
    .end local v2    # "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    return-void

    .line 99
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 102
    .end local v3    # "highest":Ljava/lang/String;
    .end local v7    # "current":Ljava/lang/String;
    return-void

    .line 103
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResult...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
