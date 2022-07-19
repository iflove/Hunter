.class public Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "NebulaServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/api/NebulaService;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "H5NebulaService"

.field private static p:Ljava/lang/Boolean;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

.field private e:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

.field private f:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

.field private g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

.field private h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

.field private k:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

.field private l:Z

.field private m:Ljava/lang/Boolean;

.field private n:Lcom/alibaba/fastjson/JSONArray;

.field private o:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->p:Ljava/lang/Boolean;

    .line 1365
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$10;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$10;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 148
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 150
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->i:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->m:Ljava/lang/Boolean;

    .line 160
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->n:Lcom/alibaba/fastjson/JSONArray;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Z

    .line 168
    const-string v0, "H5NebulaService"

    const-string v1, "init nebula service"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1357
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>(Landroid/os/Parcel;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 148
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 150
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->i:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->m:Ljava/lang/Boolean;

    .line 160
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->n:Lcom/alibaba/fastjson/JSONArray;

    .line 1358
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;
    .param p3, "fromCreatePage"    # Z

    const-string v0, "H5NebulaService"

    .line 807
    const-string v1, "package_prepare"

    const-string v2, "NebulaServiceImpl.commonSet()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 813
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "h5_dev_uc"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->h5_dev_uc:Z

    .line 818
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    move-object v2, v1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Urgent uc init:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Z

    if-nez v3, :cond_1

    .line 824
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a()V

    .line 828
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 830
    const-class v3, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    .line 831
    .local v2, "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    move-object v2, v3

    if-eqz v3, :cond_2

    .line 832
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->setDefaultPermissionConfig()V

    .line 836
    .end local v2    # "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 837
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v3

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "appId":Ljava/lang/String;
    const-string v4, "sessionId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 840
    invoke-static {v3, v2, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 843
    :cond_3
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, "sessionId":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->hasCheckParam(Landroid/os/Bundle;)Z

    move-result v5

    .line 848
    .local v5, "hasCheck":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hasCheck "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->clearTabDataByAppId(Ljava/lang/String;)V

    .line 851
    const/4 v6, 0x0

    sput-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 854
    .local v6, "startTime":J
    invoke-static {v2, v5, p3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->setupPage(Landroid/os/Bundle;ZZ)V

    .line 855
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startPage setupPage cost "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " session "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getListeners()Ljava/util/List;

    move-result-object v0

    .line 859
    .local v1, "listeners":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_4
    const-string v0, "offlineHost"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "local"

    goto :goto_1

    :cond_5
    const-string v0, "online"

    :goto_1
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->currentPsd:Ljava/lang/String;

    .line 865
    const-string v0, "ifCreatePage"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 867
    return-object v2
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 521
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 522
    return-object v0

    .line 524
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 527
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v2, v0

    .line 528
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_2

    .line 529
    return-object v0

    .line 531
    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 525
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 9

    .line 172
    const-string v0, "H5NebulaService"

    const-string v1, "initPlugins"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Z

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 175
    .local v1, "time":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 177
    .local v5, "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    move-object v5, v3

    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;-><init>()V

    invoke-interface {v3, v6}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 178
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 179
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 180
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 181
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 182
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 183
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 184
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 185
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/H5Config4AppXPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/H5Config4AppXPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 188
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/worker/H5WorkerPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/worker/H5WorkerPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v3

    .line 190
    const-string v3, "Skip worker plugin"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 194
    new-instance v3, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 195
    new-instance v3, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 196
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 197
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5LocalLogPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5LocalLogPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 198
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;-><init>()V

    invoke-interface {v5, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v3

    .line 201
    const-string v6, "service"

    invoke-virtual {v3, v6, v5}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v3

    .line 202
    .local v4, "extServicePlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 203
    invoke-interface {v5, v4}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 206
    .local v6, "delta":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "initPlugins delta "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "appId"    # Ljava/lang/String;

    .line 872
    const-string v0, "H5_AL_SESSION_START"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "diagnose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 874
    const-string v1, "appVersion"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 875
    const-string v1, "publicId"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 876
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 877
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 878
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 4
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;
    .param p3, "h5PageReadyListener"    # Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 345
    move-object v0, p2

    .line 346
    .local v0, "finalBundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    const-string v1, "h5_createPageAsync"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 347
    .local v1, "createPageRealAsync":Z
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    .line 368
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 369
    const-string v3, "URGENT_DISPLAY"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 371
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 373
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 130
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 745
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 746
    return v0

    .line 749
    :cond_0
    :try_start_0
    const-string v1, "h5_enableStockLogSwitch"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 750
    .local v2, "enableStockSwitch":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_3

    const-string v1, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    const-string v1, "NO"

    const-string v3, "isStockTradeLog"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 753
    const/4 v0, 0x0

    return v0

    .line 757
    .end local v2    # "enableStockSwitch":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 751
    .restart local v2    # "enableStockSwitch":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0

    .line 755
    .end local v2    # "enableStockSwitch":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 756
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "H5NebulaService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 511
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "68687029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b()V
    .locals 6

    .line 421
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 422
    .local v0, "topActivityRef":Ljava/lang/ref/WeakReference;
    const-string v1, ""

    .line 423
    .local v1, "topActivityName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    .line 425
    .local v3, "topActivity":Landroid/app/Activity;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 427
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 430
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "H5NebulaService"

    const-string v5, "getLocalClassName : "

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "topActivity":Landroid/app/Activity;
    :cond_0
    :goto_0
    const-string v2, "H5_UC_INIT_TRIGGER_BY_OUTER"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 433
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 435
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 130
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .line 799
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 800
    .local v2, "preRpcConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "shouldopen"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "shouldOpen":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->m:Ljava/lang/Boolean;

    .line 802
    const-string v3, "sourceIdWhiteList"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->n:Lcom/alibaba/fastjson/JSONArray;

    .line 803
    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    .line 767
    const-string v0, "app_startup_type"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "appStartUpType":Ljava/lang/String;
    const-string v1, "inner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 769
    .local v1, "startFromInner":Z
    const-string v2, "schemeInnerSource"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 770
    .local v4, "schemeInnerId":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 771
    return v5

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->m:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 775
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 776
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 777
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    const-string v6, "h5_preRPCRequest"

    invoke-interface {v3, v6, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "preRpcConfigStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b(Ljava/lang/String;)V

    .line 789
    .end local v2    # "preRpcConfigStr":Ljava/lang/String;
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->n:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->n:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    nop

    .line 789
    return v5
.end method

.method private c()V
    .locals 2

    .line 1045
    const-string v0, "H5NebulaService"

    const-string v1, "post init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1047
    if-nez v1, :cond_0

    .line 1048
    const-string v1, "looper == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1051
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1052
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    return-void
.end method

.method private d()V
    .locals 6

    .line 1061
    const-string v0, "H5NebulaService"

    const-string v1, "do init stuff"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v0, 0x5

    .line 1064
    .local v0, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    const/4 v0, 0x2

    .line 1069
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    .line 1070
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$7;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$7;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1143
    return-void
.end method

.method private e()V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->i:Landroid/content/BroadcastReceiver;

    .line 1176
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 1177
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 1178
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "h5bugMeStartUp"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v1, "H5NebulaService"

    const-string v3, "register h5bugMeStartUp"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1182
    .end local v0    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private static f()Z
    .locals 5

    .line 1223
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    const-string v1, "h5_dev_webDriver"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1224
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    move-object v1, v2

    .line 1225
    .local v1, "open":Z
    return v0

    .line 1227
    .end local v1    # "open":Z
    :cond_0
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1229
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1228
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v4, v2

    .line 1230
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 1232
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 1233
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 1234
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1235
    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1239
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_1
    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v0

    .line 1238
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5NebulaService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    :goto_0
    return v3
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1289
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreInitUC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    const-string v0, "H5NebulaService"

    const-string v1, "perf test mode, not need pre init uc. cancel uc init idle task "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    monitor-exit p0

    return-void

    .line 1294
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
    :cond_1
    :try_start_2
    const-string v0, "H5NebulaService"

    const-string v1, "fire idle task to init uc service"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    .line 1296
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1298
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-object v1, v2

    .line 1300
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->shouldPreloadContinue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$9;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->setPreloadContinueCallback(Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 1308
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    monitor-exit p0

    return-void

    .line 1312
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->f:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    if-eqz v0, :cond_4

    .line 1313
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const-string v2, "H5"

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;->addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1316
    :cond_4
    monitor-exit p0

    return-void

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 3

    .line 1319
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1321
    .local v1, "thread":Ljava/lang/Thread;
    move-object v1, v0

    const-string v2, "h5_tiny_initUc_idleTask"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1322
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1323
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1324
    return-void
.end method


# virtual methods
.method public addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 1191
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V

    .line 1192
    return-void
.end method

.method public addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z
    .locals 4
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 881
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 882
    return v0

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    monitor-enter v1

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 887
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    monitor-exit v1

    return v0

    .line 890
    :cond_1
    goto :goto_0

    .line 892
    :cond_2
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5Session;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 893
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 894
    monitor-exit v1

    .line 895
    const/4 v0, 0x1

    return v0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 11
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    .local v0, "timeMillis":J
    if-nez p2, :cond_0

    .line 242
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    move-object p2, v2

    .line 245
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 246
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 249
    :cond_1
    const-string v2, "H5NebulaService"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_3

    .line 255
    const-string v4, "not activity context!"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-object v3

    .line 259
    :cond_3
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v3

    .line 260
    .local v6, "appId":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 261
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v7, v3

    .line 262
    .local v7, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v7, v4

    if-eqz v4, :cond_4

    .line 263
    invoke-interface {v7, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppFromServerWhenAppIsEmpty(Ljava/lang/String;)V

    .line 268
    .end local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 270
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 271
    .local v7, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v8, v7, v4, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    move-object v3, v8

    .line 273
    .local v3, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    sget-boolean v8, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "h5_app_start createPage appId={"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "} params={"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v5

    .line 280
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "backgroundColor"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 279
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 284
    .local v8, "cost":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "createPage cost "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v3

    .line 250
    .end local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "cost":J
    :cond_6
    :goto_0
    const-string v4, "invalid h5 context!"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v3
.end method

.method public createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 5
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;
    .param p3, "h5PageReadyListener"    # Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 293
    if-nez p2, :cond_0

    .line 294
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    move-object p2, v0

    .line 297
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 301
    :cond_1
    const-string v0, "H5NebulaService"

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 306
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 307
    const-string v1, "not activity context!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 312
    :cond_3
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->isNeedCheckUc()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->isNeedCheckUc()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 313
    :goto_1
    if-eqz v1, :cond_6

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createPageAsync directCreate! isNeedCheckUc "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->isNeedCheckUc()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz p3, :cond_8

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    return-void

    .line 319
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    if-nez v1, :cond_7

    .line 320
    const-string v1, "createPageAsync !notNeedInitUc init ucPageReadyReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 322
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Bundle(Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5PageReadyListener(Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    .line 325
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 326
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "h5_action_uc_init_finish"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v1, v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 330
    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Urgent uc init:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    return-void

    .line 336
    :cond_7
    const-string v1, "createPageAsync !notNeedInitUc add xxx"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Bundle(Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5PageReadyListener(Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    .line 342
    :cond_8
    return-void

    .line 302
    :cond_9
    :goto_2
    const-string v1, "invalid h5 context!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public exitService()Z
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 1338
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->exitSession()Z

    .line 1339
    goto :goto_0

    .line 1340
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public fireUrgentUcInit()V
    .locals 1

    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V

    .line 652
    return-void
.end method

.method public declared-synchronized fireUrgentUcInit(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 1327
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v0, :cond_0

    .line 1328
    const-string v0, "H5NebulaService"

    const-string v1, "fire urgent task to init uc service"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1331
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
    :cond_0
    :try_start_1
    const-string v0, "H5NebulaService"

    const-string v1, "uc isReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    monitor-exit p0

    return-void

    .line 1326
    .end local p1    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 1

    .line 439
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    if-nez v0, :cond_0

    .line 1351
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Data;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    return-object v0
.end method

.method public getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->o:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    if-nez v0, :cond_2

    .line 219
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 220
    const-string v0, "h5_nebulaEnableExtension"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    .local v1, "configStr":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 223
    const/4 v2, 0x0

    const-string v3, "enable"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->p:Ljava/lang/Boolean;

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->p:Ljava/lang/Boolean;

    .line 228
    .end local v1    # "configStr":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;-><init>()V

    .line 230
    .local v0, "initializer":Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;->initExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->o:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    .line 233
    .end local v0    # "initializer":Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->o:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    return-object v0
.end method

.method public getH5PageByViewId(I)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 8
    .param p1, "viewId"    # I

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 445
    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 447
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v6

    if-eqz v6, :cond_1

    .line 448
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v6

    .line 449
    .local v4, "pageStack":Ljava/util/Stack;
    move-object v4, v6

    if-eqz v6, :cond_1

    .line 450
    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 451
    .local v5, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 452
    monitor-exit v0

    return-object v5

    .line 454
    .end local v5    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    goto :goto_1

    .line 457
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "pageStack":Ljava/util/Stack;
    :cond_1
    goto :goto_0

    .line 458
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 460
    :cond_3
    :goto_2
    return-object v1
.end method

.method public getH5TaskScheduleProvider()Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->f:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    return-object v0
.end method

.method public getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->j:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->j:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->j:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    return-object v0
.end method

.method public getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->k:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->k:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->k:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    return-object v0
.end method

.method public getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .line 1196
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    monitor-enter v1

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 902
    .local v4, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v4, v5

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    move-object v0, v4

    .line 905
    goto :goto_1

    .line 907
    .end local v4    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v5    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 911
    if-nez v0, :cond_2

    .line 912
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;-><init>()V

    .line 913
    move-object v0, v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Session;->setId(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z

    .line 915
    const-string v1, "h5SessionStart"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Session;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 919
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 921
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 922
    .local v2, "listeners":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 923
    .local v4, "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-interface {v0, v4}, Lcom/alipay/mobile/h5container/api/H5Session;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 924
    .end local v4    # "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    goto :goto_2

    .line 926
    .end local v2    # "listeners":Ljava/util/List;
    :cond_3
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local p1    # "sessionId":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 927
    .restart local v0    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local p1    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 928
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5NebulaService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 932
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0

    .line 908
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 955
    return-object v1

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    if-eqz v0, :cond_3

    .line 958
    monitor-enter v0

    .line 959
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    move-object v3, v1

    .line 961
    .local v2, "index":I
    :goto_0
    if-lez v2, :cond_2

    .line 962
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 963
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 964
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "sessionAppId":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 966
    monitor-exit v0

    return-object v3

    .line 969
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "sessionAppId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 970
    .end local v2    # "index":I
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 972
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 6
    .param p1, "workerId"    # Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 938
    monitor-enter v0

    .line 939
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 940
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 941
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v4

    .line 942
    .local v4, "id":Ljava/lang/String;
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 943
    monitor-exit v0

    return-object v3

    .line 946
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 947
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 949
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getSessions()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    return-object v0
.end method

.method public getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopH5Fragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 537
    .local v2, "topFragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    if-eqz v0, :cond_1

    instance-of v0, v2, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    return-object v0

    .line 538
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 9
    .param p1, "viewId"    # I

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 559
    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 561
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v7

    if-eqz v7, :cond_1

    .line 562
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v7

    .line 563
    .local v4, "pageStack":Ljava/util/Stack;
    move-object v4, v7

    if-eqz v7, :cond_1

    .line 564
    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 565
    .local v5, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 566
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    .line 567
    .local v6, "topFragment":Landroidx/fragment/app/Fragment;
    move-object v6, v8

    if-eqz v8, :cond_0

    instance-of v8, v6, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v8, :cond_0

    .line 568
    move-object v1, v6

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    monitor-exit v0

    return-object v1

    .line 571
    .end local v5    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "topFragment":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_1

    .line 574
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "pageStack":Ljava/util/Stack;
    :cond_1
    goto :goto_0

    .line 575
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 577
    :cond_3
    :goto_2
    return-object v1
.end method

.method public getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .locals 4
    .param p1, "workerId"    # Ljava/lang/String;

    .line 545
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 546
    .local v2, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 547
    return-object v1

    .line 549
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v3, v1

    .line 550
    .local v3, "topFragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    if-eqz v0, :cond_2

    instance-of v0, v3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-nez v0, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    return-object v0

    .line 551
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getTopH5Fragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 4

    .line 465
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 466
    .local v2, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0

    .line 469
    :cond_0
    const-string v0, "H5NebulaService"

    const-string v3, "getTopH5Page h5Session == null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-object v1
.end method

.method public getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 9

    .line 476
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getSessions()Ljava/util/Stack;

    move-result-object v1

    move-object v2, v0

    .line 477
    .local v2, "sessions":Ljava/util/Stack;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 478
    return-object v0

    .line 481
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 482
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v3, v0

    move-object v4, v3

    .line 483
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 484
    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 485
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 489
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "id":Ljava/lang/String;
    const-string v6, "H5NebulaService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 492
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    .line 493
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v6

    if-eqz v6, :cond_1

    .line 494
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v6

    .line 495
    if-nez v6, :cond_1

    .line 496
    monitor-exit p0

    return-object v4

    .line 483
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "id":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 501
    .end local v1    # "index":I
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    .end local v2    # "sessions":Ljava/util/Stack;
    :catchall_1
    move-exception v1

    .line 503
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5NebulaService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    const-string v1, "H5NebulaService"

    const-string v2, "getTopH5PageForTiny page is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-object v0
.end method

.method public getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Session;

    monitor-exit v0

    return-object v1

    .line 1014
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
    .locals 6

    const-string v0, "H5NebulaService"

    .line 1247
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->l:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->l:Z

    .line 1251
    :try_start_0
    const-string v2, "android-phone-wallet-birdnestdevtools"

    const-string v3, "com.alipay.archimedes.ArchimedesHelper"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1252
    .local v4, "clazz":Ljava/lang/Class;
    move-object v4, v2

    if-eqz v2, :cond_0

    .line 1253
    const-string v2, "sharedInstance"

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v5, v3

    .line 1254
    .local v5, "f":Ljava/lang/reflect/Field;
    move-object v5, v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1255
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v3

    .line 1256
    .local v2, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    if-eqz v1, :cond_0

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getWebDriverHelper "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    .end local v2    # "o":Ljava/lang/Object;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v1

    .line 1263
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1266
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->defaultHelper:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    :cond_2
    return-object v0
.end method

.method public initServicePlugin()V
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Z

    if-nez v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a()V

    .line 631
    :cond_0
    return-void
.end method

.method public isAliDomain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 1202
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 1203
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1206
    :cond_0
    const-string v0, "H5NebulaService"

    const-string v2, "not implement H5ConfigProvider."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1020
    const-string v0, "H5NebulaService"

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ui init "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1026
    .local v1, "time":J
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 1028
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v3

    .line 1029
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->init(Landroid/content/Context;)V

    .line 1031
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e()V

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c()V

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 1038
    .local v3, "delta":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCreate delta "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 212
    return-void
.end method

.method public parseRNPkg(Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;->parseRNPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permitLocation(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 1213
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 1214
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1217
    :cond_0
    const-string v0, "H5NebulaService"

    const-string v2, "not implement H5ConfigProvider."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5UpdateAppCallback"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 584
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method public removeSession(Ljava/lang/String;)Z
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 978
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "H5NebulaService"

    const-string v2, "unregisterReceiver in removeSession"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 980
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 981
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 982
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 983
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 984
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    goto :goto_0

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5NebulaService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 988
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 989
    return v2

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    monitor-enter v1

    .line 993
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 994
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 995
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 996
    .local v4, "s":Lcom/alipay/mobile/h5container/api/H5Session;
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 997
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 999
    invoke-interface {v4, v0}, Lcom/alipay/mobile/h5container/api/H5Session;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 1000
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->onRelease()V

    .line 1001
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1003
    .end local v4    # "s":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_1
    goto :goto_1

    .line 1004
    .end local v3    # "iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v1

    .line 1005
    return v2

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1186
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V
    .locals 0
    .param p1, "taskScheduleProvider"    # Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    .line 1276
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->f:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    .line 1277
    return-void
.end method

.method public setWebDriverHelper(Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 1271
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 1272
    return-void
.end method

.method public startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z
    .locals 8
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 658
    const/4 v0, 0x0

    const-string v1, "H5NebulaService"

    if-nez p2, :cond_0

    .line 659
    const-string v2, "invalid start page parameters!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return v0

    .line 662
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 663
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 667
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 668
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    goto :goto_0

    .line 670
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 673
    .restart local v2    # "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 676
    .local v5, "params":Landroid/os/Bundle;
    move-object v5, v3

    const-string v6, "preRpc"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 677
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 678
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    move-object v6, v4

    .line 679
    .local v6, "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    move-object v6, v3

    if-eqz v3, :cond_4

    .line 680
    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->setStartParams(Landroid/os/Bundle;)V

    .line 681
    invoke-interface {v6}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->preRpc()V

    goto :goto_1

    .line 676
    .end local v6    # "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    :cond_3
    move-object v6, v4

    .line 685
    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 687
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;

    .line 688
    .local v6, "newPreRpcProvider":Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;
    move-object v6, v3

    if-eqz v3, :cond_5

    .line 689
    const-string v3, "url"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;->startPreRpcReq(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 693
    .end local v6    # "newPreRpcProvider":Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v6

    .line 695
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Landroid/os/Bundle;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->isUploadLog:Z

    .line 697
    const-string v0, "asyncIndex"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v4, "asyncIndex":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->hasPageParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 700
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->deliveryPageParam(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 702
    :cond_6
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;

    invoke-direct {v0, p0, v3, v2, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Landroid/os/Bundle;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 731
    :goto_2
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "h5_app_start startPage appId={"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 733
    const-string v6, "appId"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "} params={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "h5UcReadyCallBack"    # Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;
    .param p2, "extData"    # Lcom/alibaba/fastjson/JSONObject;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ucIsReady, extData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NebulaService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string v0, "ucIsReady notNeedInitUc"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz p1, :cond_2

    .line 381
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;->usIsReady(Z)V

    goto :goto_1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    if-nez v2, :cond_1

    .line 385
    const-string v2, "ucIsReady !notNeedInitUc init ucIsReadyReceiver"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v2, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 388
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5UcReadyCallBack(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;)V

    .line 389
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 390
    .local v4, "filter":Landroid/content/IntentFilter;
    move-object v4, v2

    const-string v5, "h5_action_uc_init_finish"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 392
    invoke-virtual {v2, v5, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 394
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " ucIsReady Urgent uc init:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-interface {p1, v3}, Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;->usIsReady(Z)V

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b()V

    .line 400
    .end local v4    # "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .line 402
    :cond_1
    const-string v0, "ucIsReady !notNeedInitUc add xxx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5UcReadyCallBack(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;)V

    .line 406
    :cond_2
    :goto_1
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1362
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1363
    return-void
.end method
