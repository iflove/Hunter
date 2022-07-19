.class public Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;
.super Ljava/lang/Object;
.source "H5KeepAliveUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;,
        Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEEP_ALIVE_MS:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "H5KeepAliveUtil"

.field public static hasStartActivity:Z

.field private static sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->hasStartActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configOpen(Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 243
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 244
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "h5_NotKeepAliveList"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 246
    .local v4, "value":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v5, v1

    .line 248
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "ap_framework_sceneId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v1, "sceneId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneId "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setEnableKeepAlive"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5KeepAliveUtil"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    return v0

    .line 259
    .end local v1    # "sceneId":Ljava/lang/String;
    .end local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return v3

    .line 261
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public static enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "appId"    # Ljava/lang/String;

    .line 233
    const-string v0, "enableKeepAlive"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 236
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->configOpen(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->openAllKeepAlive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static enableMainProcKeepAlive(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 56
    const-string v0, "h5_mainProcKeepAlive"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    return v1

    .line 61
    :cond_0
    const-string v0, "isRemoteDebug"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return v1

    .line 65
    :cond_1
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    return v1

    .line 69
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "appType":Ljava/lang/String;
    const-string/jumbo v2, "nebulaH5TinyApp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    return v1

    .line 76
    :cond_3
    const-string v2, "enableKeepAlive"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 77
    if-nez v2, :cond_4

    .line 78
    return v1

    .line 82
    :cond_4
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    iget-wide v4, v4, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->keepAliveMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 83
    const-string v2, "H5KeepAliveUtil"

    const-string/jumbo v3, "too frequent not use keep alive activity"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v1

    .line 88
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getTopTaskBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 89
    .local v4, "componentName":Landroid/content/ComponentName;
    move-object v4, v2

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    .line 90
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v3, "className":Ljava/lang/String;
    move-object v3, v2

    const-string v6, "H5MainProcTinyActivity"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "H5MainProcTinyTransActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, 0x1

    .line 92
    :goto_1
    if-nez v2, :cond_8

    return v5

    :cond_8
    return v1

    .line 94
    .end local v3    # "className":Ljava/lang/String;
    :cond_9
    return v5
.end method

.method public static getChInfo(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "application"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 202
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 203
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRawChInfo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 207
    .local v2, "chInfoRaw":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    return-object v0

    .line 210
    :cond_1
    const-string v0, "__"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    .line 211
    .local v3, "index":I
    move v3, v0

    if-lez v0, :cond_2

    .line 212
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_2
    return-object v2
.end method

.method public static getRawChInfo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "application"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 221
    const-string v0, "chInfo"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "chInfoRaw":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "h5_getChInfoFromSceneParam"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 225
    .local v2, "needGetFromSceneParam":Z
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 226
    const-string v3, "H5KeepAliveUtil"

    const-string v4, "getChInfo from scene param"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getSceneParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_2
    return-object v1
.end method

.method public static getRunningActivity()Landroid/app/Activity;
    .locals 2

    .line 131
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->runningActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRunningActivity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->runningActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->runningActivity:Landroid/app/Activity;

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTopTaskBaseActivity()Landroid/content/ComponentName;
    .locals 2

    .line 45
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleRestartInMain(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "param"    # Landroid/os/Bundle;

    .line 117
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->appId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->runningActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v3, v2

    .line 119
    .local v3, "activity":Landroid/app/Activity;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleRestartInMain "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "H5KeepAliveUtil"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->updateFromActivityInMain()Z

    move-result v0

    .line 122
    .local v0, "fromForeground":Z
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 123
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    move-object v2, v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3, v0, p1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToFront(Landroid/app/Activity;ZLandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v0    # "fromForeground":Z
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .end local v3    # "activity":Landroid/app/Activity;
    :cond_2
    return v1
.end method

.method public static needRelaunchInNebula(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/alipay/mobile/framework/app/MicroApplication;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "lastChInfo"    # Ljava/lang/String;
    .param p3, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 169
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 170
    const-string v1, "h5_shouldUseNewRelanch"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const-string v1, "IS_LITE_MOVE_TASK"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    return v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getHomePage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "homePage":Ljava/lang/String;
    const-string/jumbo v2, "page"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "targetPage":Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getChInfo(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "chInfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needRelaunchInNebula targetPage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " homePage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " chInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lastChInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5KeepAliveUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 189
    return v0

    .line 192
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 195
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_4
    return v0

    .line 171
    .end local v1    # "homePage":Ljava/lang/String;
    .end local v2    # "targetPage":Ljava/lang/String;
    .end local v3    # "chInfo":Ljava/lang/String;
    :cond_5
    :goto_0
    return v0
.end method

.method private static openAllKeepAlive(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .line 268
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 269
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "h5_keepAliveBlackList"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 271
    .local v4, "appIdList":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 273
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " not keepAlive appId is in BlackList "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "H5KeepAliveUtil"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v3

    .line 271
    .end local v0    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    move-object v0, v1

    .line 279
    :cond_1
    const-string v5, "h5_appKeepAliveConfig"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v0, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 281
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 282
    const-string/jumbo v5, "shouldKeepAlive"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "shouldKeepAlive":Ljava/lang/String;
    const-string/jumbo v6, "yes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    const/4 v3, 0x1

    return v3

    .line 288
    .end local v5    # "shouldKeepAlive":Ljava/lang/String;
    :cond_2
    return v3

    .line 291
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "appIdList":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public static putRunningTinyActivity(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putRunningTinyActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    .line 143
    :cond_0
    return-void
.end method

.method public static removeMainProcKeepAliveApp()V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeMainProcKeepAliveApp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print!"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->appId:Ljava/lang/String;

    .line 156
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 157
    .local v2, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 161
    .end local v2    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_0
    return-void
.end method

.method public static removeRunningTinyActivity()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeRunningTinyActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    .line 150
    :cond_0
    return-void
.end method

.method public static updateFromActivityInMain()Z
    .locals 7

    .line 98
    const-string v0, "H5KeepAliveUtil"

    const/4 v1, 0x0

    .line 99
    .local v1, "fromForeground":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getTopTaskBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 100
    .local v4, "topComponent":Landroid/content/ComponentName;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 102
    :try_start_0
    const-string v2, "com.alipay.mobile.liteprocess.LiteProcessActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v3

    .line 103
    .local v5, "clazz":Ljava/lang/Class;
    const-string v6, "fromBaseActivity"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 104
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFromActivityInMain fromForeground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v5    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v2

    .line 110
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "updateFromActivityInMain error"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return v1
.end method

.method public static updateKeepAliveTime()V
    .locals 3

    .line 295
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->sCurrentKeepAliveInfo:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->keepAliveMillis:J

    .line 298
    :cond_0
    return-void
.end method
