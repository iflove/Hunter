.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;
.super Ljava/lang/Object;
.source "H5TinyAppDebugMode.java"


# static fields
.field private static final APP_CENTER_TOKEN:Ljava/lang/String; = "appcenter"

.field public static final KEY_NB_TOKEN:Ljava/lang/String; = "nbtoken"

.field public static final KEY_WHITE_LIST:Ljava/lang/String; = "domainWhiteList"

.field private static final TAG:Ljava/lang/String; = "H5TinyAppDebugMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->showFailToast()V

    return-void
.end method

.method public static addRecentAppForDebugMode(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 11
    .param p0, "param"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->checkNbToken(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 43
    .local v2, "devAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5DevAppList not contain appId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TinyAppDebugMode"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 47
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    .line 48
    .local v1, "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    move-object v3, v0

    .end local v1    # "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    .local v3, "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    if-eqz v0, :cond_1

    .line 49
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    iget-object v6, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;->addRecentAppForDebugMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v2    # "devAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v3    # "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    :cond_1
    return-void
.end method

.method private static checkNbToken(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "param"    # Landroid/os/Bundle;

    .line 57
    const-string/jumbo v0, "nbtoken"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "nbToken":Ljava/lang/String;
    const-string v1, "appcenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 11
    .param p0, "param"    # Landroid/os/Bundle;
    .param p1, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 62
    iget-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 63
    .local v6, "devAppId":Ljava/lang/String;
    const-string/jumbo v0, "nbsn"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "nbsn":Ljava/lang/String;
    const-string/jumbo v0, "nbsv"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "nbsv":Ljava/lang/String;
    const-string/jumbo v0, "nbtoken"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "token":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 68
    .local v2, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object v10, v0

    .end local v2    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .local v10, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    iput-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 69
    iput-object v8, v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "devAppId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nbsn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nbsv : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5TinyAppDebugMode"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    const-string v2, "h5_read_use_dev_app_config"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, v6, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 76
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    move-object v0, v1

    .line 81
    .local v0, "authProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    move-object v0, v2

    if-eqz v2, :cond_1

    .line 82
    const/4 v3, 0x0

    new-instance v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;

    invoke-direct {v5, v6, v10, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    move-object v1, v6

    move-object v2, v7

    move-object v4, v9

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;->rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V

    .line 98
    :cond_1
    return-void
.end method

.method public static enableTinyAppDebugMode()Z
    .locals 3

    .line 29
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 30
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "smallprogram_debug_close_switch"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/4 v2, 0x0

    return v2

    .line 36
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static handleResponse(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V
    .locals 6
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "domainWhiteList"    # [Ljava/lang/String;

    .line 101
    const-string v0, ""

    .line 102
    .local v0, "whiteList":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 103
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 104
    .local v3, "domain":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .end local v3    # "domain":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_1

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 108
    .local v1, "startParams":Landroid/os/Bundle;
    move-object v1, v2

    if-eqz v2, :cond_2

    .line 109
    const-string v2, "domainWhiteList"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->hasAuth:Z

    .line 113
    const-string v2, "H5TinyAppDebugMode"

    const-string v3, "do syncApp"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 115
    return-void
.end method

.method private static showFailToast()V
    .locals 1

    .line 118
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$2;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
