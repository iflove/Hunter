.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;
.super Ljava/lang/Object;
.source "H5InstallAppAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# static fields
.field private static final H5App:Ljava/lang/String; = "H5App"

.field private static final TAG:Ljava/lang/String; = "H5InstallAppAdvice"

.field public static final debug:Ljava/lang/String; = "debug"

.field private static final mEngineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final nbsource:Ljava/lang/String; = "nbsource"

.field private static final tinyApp:Ljava/lang/String; = "tinyApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSwitchRNPackageToTinyApp()Z
    .locals 4

    .line 206
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 207
    move-object v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "NEED_APP_TYPE_SWITCH_TO_TINY_APP_DEBUG"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "configStr":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 211
    .end local v1    # "configStr":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static enableUseDevMode(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "param"    # Landroid/os/Bundle;

    .line 263
    const-string/jumbo v0, "nbsource"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 8
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 171
    .local v3, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v3, v1

    const-string v4, "H5InstallAppAdvice"

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 173
    move-object v0, v1

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get null appInfo for nbsv "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "highestVersion":Ljava/lang/String;
    invoke-interface {v3, p0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 180
    .end local v2    # "highestVersion":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "get appInfo: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 183
    .local v2, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 184
    const-string v1, "H5App"

    if-eqz v0, :cond_3

    .line 186
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    const-string/jumbo v6, "tinyApp"

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->canSwitchRNPackageToTinyApp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    goto :goto_0

    .line 188
    :cond_1
    iget v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_2

    .line 189
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    goto :goto_0

    .line 190
    :cond_2
    iget v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 191
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 198
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "get ApplicationDesc for "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v2
.end method

.method static restoreApplicationDescription(Ljava/lang/String;)V
    .locals 7
    .param p0, "targetAppId"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, v2

    .line 154
    .local v3, "originEngineType":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "H5InstallAppAdvice"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreApplicationDescription "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 157
    .local v2, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 158
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 161
    invoke-interface {v1, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->deleteDescriptionByAppId([Ljava/lang/String;)Z

    .line 162
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    new-array v4, v4, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v2, v4, v6

    .line 163
    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 165
    .end local v2    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v3    # "originEngineType":Ljava/lang/String;
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

.method public static updateApplicationDescription(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "param"    # Landroid/os/Bundle;

    .line 126
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 128
    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const/4 v2, 0x0

    .line 129
    .local v2, "originDesc":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "H5InstallAppAdvice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateApplicationDescription "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    const-string/jumbo v1, "nbsv"

    .line 138
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    .line 141
    .local v1, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 142
    invoke-interface {v3, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->deleteDescriptionByAppId([Ljava/lang/String;)Z

    .line 143
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    new-array v4, v4, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v1, v4, v6

    .line 144
    invoke-interface {v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 145
    .end local v1    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v2    # "originDesc":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 10
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    const-string v0, ""

    const-string v1, "H5InstallAppAdvice"

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.installApp(String, String, Bundle, FragmentActivity)"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 77
    return-object v3

    .line 81
    :cond_0
    if-eqz p3, :cond_4

    :try_start_0
    array-length v2, p3

    const/4 v4, 0x3

    if-lt v2, v4, :cond_4

    .line 82
    move-object v2, v0

    .line 83
    .local v0, "targetAppId":Ljava/lang/String;
    .local v2, "sourceAppId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 84
    .local v4, "param":Landroid/os/Bundle;
    const/4 v5, 0x0

    aget-object v6, p3, v5

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 85
    aget-object v6, p3, v5

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 88
    :cond_1
    const/4 v6, 0x1

    aget-object v7, p3, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 89
    aget-object v7, p3, v6

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    .line 91
    :cond_2
    const/4 v7, 0x2

    aget-object v8, p3, v7

    instance-of v8, v8, Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 92
    aget-object v7, p3, v7

    check-cast v7, Landroid/os/Bundle;

    move-object v4, v7

    .line 95
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sourceAppId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " targetAppId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " param:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v7

    .line 100
    if-eqz v7, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 101
    const-string/jumbo v7, "nbsv"

    .line 102
    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v7

    .line 105
    .local v7, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    new-array v9, v6, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v7, v9, v5

    .line 106
    invoke-interface {v8, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 110
    invoke-interface {v5, v2, v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    new-instance v5, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 116
    .end local v0    # "targetAppId":Ljava/lang/String;
    .end local v2    # "sourceAppId":Ljava/lang/String;
    .end local v4    # "param":Landroid/os/Bundle;
    .end local v7    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    nop

    .line 119
    :goto_0
    return-object v3
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 232
    return-void
.end method
