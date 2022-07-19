.class public Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5SessionImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Session;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "H5Session"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/h5container/api/H5Scenario;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/os/Bundle;

.field private i:Landroid/os/Bundle;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

.field private l:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field private m:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

.field public mAppxVersionInRender:Ljava/lang/String;

.field private n:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 744
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nebulasessiontracker newSession @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Session"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Z

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    .line 116
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a()V

    .line 118
    const-string v0, "refViewID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->m:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    .line 120
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->n:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 736
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>(Landroid/os/Parcel;)V

    .line 737
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/api/NebulaService;)V
    .locals 2
    .param p1, "service"    # Lcom/alipay/mobile/nebulacore/api/NebulaService;

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nebulasessiontracker newSession @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Session"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Z

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    .line 99
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 100
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a()V

    .line 102
    const-string v0, "refViewID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 103
    const-string v0, "h5SessionStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c()V

    .line 105
    return-void
.end method

.method private a()V
    .locals 5

    .line 126
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 127
    .local v2, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_SessionInitPlugins:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    move-object v3, v1

    .line 131
    .local v3, "pm":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    move-object v3, v0

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v0, v4}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 132
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 133
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;-><init>()V

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 134
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Session;)V

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 135
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppHistoryInfoPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/plugin/tinyapp/TinyAppHistoryInfoPlugin;-><init>()V

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->l:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 138
    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    .line 141
    const-string v4, "session"

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    .line 142
    .local v1, "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v3, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 145
    :cond_1
    if-eqz v2, :cond_2

    .line 146
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_SessionInitPluginsFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 148
    :cond_2
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "startParam"    # Landroid/os/Bundle;

    .line 636
    if-nez p1, :cond_0

    .line 637
    return-void

    .line 640
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 641
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "appId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Ljava/lang/String;)V

    .line 643
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->p:Z

    .line 646
    .end local v0    # "appId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 652
    .local v2, "event":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_h5EventThroughWorker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 654
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 657
    :cond_4
    return-void

    .line 647
    :cond_5
    :goto_1
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "broadcastName"    # Ljava/lang/String;
    .param p2, "title2"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 305
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 307
    .local v0, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send Title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5Session"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v2, "utl"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 311
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    .line 660
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 661
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    const-string v0, "h5_eventThroughWorker"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initEventHandleConfig, value = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5Session"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 667
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v3

    if-nez v3, :cond_1

    .line 668
    return-void

    .line 670
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initEventHandleConfig, jsonObject = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 672
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 673
    .local v5, "appIdWhiteList":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p1, v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 674
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    if-nez v6, :cond_2

    .line 675
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    .line 677
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "appIdWhiteList":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    goto :goto_0

    .line 680
    :cond_4
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 164
    .local v3, "isEmpty":Z
    move v3, v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 166
    .local v4, "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-interface {v5, p0}, Lcom/alipay/mobile/h5container/api/H5Listener;->onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V

    .line 167
    .end local v4    # "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    goto :goto_0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 171
    .local v4, "p":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    monitor-exit v0

    return v2

    .line 174
    .end local v4    # "p":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    goto :goto_1

    .line 176
    :cond_2
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5Page;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 180
    .local v4, "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-interface {v2, p1}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 181
    .end local v4    # "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    goto :goto_2

    .line 183
    :cond_3
    if-eqz v3, :cond_4

    .line 184
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 200
    :cond_4
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    .line 202
    .local v1, "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 203
    const-string v2, "refViewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "refviewId":Ljava/lang/String;
    const-string v4, "viewID"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "viewId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "appId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^publicId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^sourceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^viewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^refviewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^h5Token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "pagePerformance":Ljava/lang/String;
    invoke-interface {p1, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->setPerformance(Ljava/lang/String;)V

    .line 216
    .end local v2    # "refviewId":Ljava/lang/String;
    .end local v4    # "viewId":Ljava/lang/String;
    .end local v5    # "pagePerformance":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Landroid/os/Bundle;)V

    .line 217
    .end local v1    # "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    .end local v3    # "isEmpty":Z
    monitor-exit v0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appIdWhiteList"    # Lcom/alibaba/fastjson/JSONArray;

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAppIdInWhiteList, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appIdWhiteList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Session"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 685
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v1, "whiteAppId":Ljava/lang/String;
    move-object v1, v2

    const-string v3, ".*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 684
    .end local v1    # "whiteAppId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .restart local v1    # "whiteAppId":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 690
    .end local v0    # "i":I
    .end local v1    # "whiteAppId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 6

    .line 499
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 500
    .local v0, "temp":Ljava/util/Stack;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 501
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 506
    .local v1, "topPage":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v2

    const/4 v3, 0x0

    const-string v4, "h5PageClose"

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 512
    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_2

    .line 513
    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5, v4, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 512
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 515
    :cond_2
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7

    .line 314
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 315
    return v0

    .line 318
    :cond_0
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 320
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 322
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 325
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.alipay.mobile.h5container.hidePage"

    invoke-static {p1, v6, v1, v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 328
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    .line 330
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v5, "com.alipay.mobile.h5container.showPage"

    invoke-static {p1, v5, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2
    nop

    .line 333
    move-object v1, v3

    goto :goto_1

    .line 335
    :cond_3
    goto :goto_0

    .line 337
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 339
    sub-int/2addr p1, v4

    :goto_2
    if-ltz p1, :cond_5

    .line 340
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 341
    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 339
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 344
    :cond_5
    if-eqz v1, :cond_6

    return v4

    :cond_6
    return v0
.end method

.method private c()V
    .locals 3

    .line 705
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->enterNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_0
    return-void

    .line 708
    :catchall_0
    move-exception v0

    .line 709
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5Session"

    const-string v2, "onEnter"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 711
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private c(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 621
    if-nez p1, :cond_0

    .line 622
    return-void

    .line 624
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 625
    const-string v1, "bizType"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "bizType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 627
    .local v1, "enableFallbackUrl":Z
    invoke-static {v0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    const/4 v1, 0x1

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    if-eqz v2, :cond_2

    .line 631
    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->setEnableFallbackUrl(Z)V

    .line 633
    :cond_2
    return-void
.end method

.method private d()V
    .locals 3

    .line 715
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->exitNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :cond_0
    return-void

    .line 718
    :catchall_0
    move-exception v0

    .line 719
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5Session"

    const-string v2, "onExit"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 3
    .param p1, "l"    # Lcom/alipay/mobile/h5container/api/H5Listener;

    monitor-enter p0

    .line 471
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 475
    .local v1, "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 476
    monitor-exit p0

    return-void

    .line 478
    .end local v1    # "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    :cond_1
    goto :goto_0

    .line 479
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 470
    .end local p1    # "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 472
    .restart local p1    # "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 224
    return v0

    .line 227
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Z

    if-eqz v1, :cond_1

    .line 228
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    move v3, v0

    .line 232
    .local v3, "isEmpty":Z
    move v3, v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 233
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 235
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 236
    .local v4, "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-interface {v5, p0}, Lcom/alipay/mobile/h5container/api/H5Listener;->onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V

    .line 237
    .end local v4    # "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 241
    .local v4, "p":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    monitor-exit v1

    return v0

    .line 244
    .end local v4    # "p":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    goto :goto_1

    .line 246
    :cond_4
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5Page;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    const-string v0, "com.alipay.mobile.h5container.hidePage"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 252
    .local v4, "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    invoke-interface {v2, p1}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 253
    .end local v4    # "ln":Lcom/alipay/mobile/h5container/api/H5Listener;
    goto :goto_2

    .line 255
    :cond_6
    if-eqz v3, :cond_7

    .line 256
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 272
    :cond_7
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    .line 275
    .local v0, "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 276
    const-string v2, "refViewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "refviewId":Ljava/lang/String;
    const-string v4, "viewID"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "viewId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "appId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^publicId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^sourceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^viewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^refviewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "^h5Token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "pagePerformance":Ljava/lang/String;
    invoke-interface {p1, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->setPerformance(Ljava/lang/String;)V

    .line 289
    .end local v2    # "refviewId":Ljava/lang/String;
    .end local v4    # "viewId":Ljava/lang/String;
    .end local v5    # "pagePerformance":Ljava/lang/String;
    :cond_8
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Landroid/os/Bundle;)V

    .line 290
    .end local v0    # "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    .end local v3    # "isEmpty":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 297
    :cond_9
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_a

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->i:Landroid/os/Bundle;

    .line 300
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindContentProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 109
    return-void
.end method

.method public enableEventThroughWorker(Ljava/lang/String;)Z
    .locals 2
    .param p1, "eventAction"    # Ljava/lang/String;

    .line 694
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 695
    return v1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 698
    :cond_2
    :goto_0
    return v1
.end method

.method public exitSession()Z
    .locals 6

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nebulasessiontracker exitSession @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Session"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "session already exited!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return v2

    .line 525
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Z

    .line 526
    const-string v1, ""

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 528
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b()V

    .line 530
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 531
    invoke-static {v1}, Lcom/alipay/mobile/worker/WorkerManager;->destroyWorker(Ljava/lang/String;)V

    .line 535
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 536
    .local v4, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v4, v1

    if-eqz v1, :cond_2

    .line 537
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->clearPresetMemory()V

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    if-eqz v1, :cond_3

    .line 542
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->releaseContent()V

    .line 543
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Flag;->setOpenAuthGrantFlag(Ljava/lang/String;Z)V

    .line 548
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->remove(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 551
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    move-object v2, v3

    .line 552
    .local v2, "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    move-object v2, v1

    if-eqz v1, :cond_4

    .line 553
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->clearPreAll()V

    .line 556
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;

    .line 557
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;

    move-object v5, v3

    .line 558
    .local v5, "newPreRpcProvider":Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;
    move-object v5, v1

    if-eqz v1, :cond_5

    .line 559
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;->clearPreRpcData()V

    .line 562
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5PageLoader;->release()V

    .line 564
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->l:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 565
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->m:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    if-eqz v1, :cond_6

    .line 566
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 567
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->m:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    .line 570
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->n:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    if-eqz v1, :cond_7

    .line 571
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->clear()V

    .line 572
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->n:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    .line 575
    :cond_7
    const-string v1, "h5SessionExit"

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 576
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d()V

    .line 577
    return v0
.end method

.method public getAppxVersionInRender()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->mAppxVersionInRender:Ljava/lang/String;

    return-object v0
.end method

.method public getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->k:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    return-object v0
.end method

.method public getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->l:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    return-object v0
.end method

.method public getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->m:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    return-object v0
.end method

.method public getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->n:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPages()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b:Lcom/alipay/mobile/h5container/api/H5Scenario;

    return-object v0
.end method

.method public getSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1

    .line 741
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Session;

    return-object v0
.end method

.method public getServiceWorkerID()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 9

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "H5Session"

    const-string v3, "getTopPage pages.isEmpty()"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    monitor-exit v0

    return-object v2

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v3, v2

    .line 422
    .local v3, "top":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "isPrerender"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    const-string v1, "H5Session"

    const-string v2, "getTopPage top"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    monitor-exit v0

    return-object v3

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    move v4, v5

    .line 427
    .local v4, "size":I
    move v4, v1

    add-int/lit8 v1, v1, -0x2

    move-object v6, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 428
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v7, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 429
    .local v6, "tmpPage":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v6, v7

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "isPrerender"

    invoke-static {v7, v8, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 430
    const-string v2, "H5Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "getTopPage in index "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    monitor-exit v0

    return-object v6

    .line 427
    .end local v6    # "tmpPage":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 434
    .end local v1    # "i":I
    :cond_3
    const-string v1, "H5Session"

    const-string v5, "getTopPage no normal page exists"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    monitor-exit v0

    return-object v2

    .line 437
    .end local v3    # "top":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    return-object v0
.end method

.method public isExited()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Z

    return v0
.end method

.method public isNebulaX()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Z

    return v0
.end method

.method public declared-synchronized removeAllListener()V
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/alipay/mobile/h5container/api/H5Listener;

    monitor-enter p0

    .line 484
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 483
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .end local p1    # "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 485
    .restart local p1    # "l":Lcom/alipay/mobile/h5container/api/H5Listener;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 9

    .line 349
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 350
    return v0

    .line 353
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Z

    if-eqz v1, :cond_1

    .line 354
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result p1

    return p1

    .line 357
    :cond_1
    nop

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 360
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 361
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 362
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 365
    const-string v6, "com.alipay.mobile.h5container.hidePage"

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 368
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 369
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "com.alipay.mobile.h5container.showPage"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    .line 370
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 369
    invoke-static {p1, v2, v6, v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_3
    nop

    .line 373
    goto :goto_1

    .line 375
    :cond_4
    goto :goto_0

    .line 360
    :cond_5
    move-object v3, v4

    .line 377
    :goto_1
    if-eqz v3, :cond_b

    .line 378
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 379
    :goto_2
    sub-int/2addr p1, v5

    :goto_3
    if-ltz p1, :cond_7

    .line 380
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 381
    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 379
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 384
    :cond_7
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 386
    const-string p1, "com.alipay.mobile.h5container.pageClose"

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {v3, p1, v2, v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->removeSession(Ljava/lang/String;)Z

    .line 389
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    .line 390
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 391
    :goto_4
    sub-int/2addr p1, v5

    :goto_5
    if-ltz p1, :cond_9

    .line 392
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 393
    invoke-interface {v2, p0}, Lcom/alipay/mobile/h5container/api/H5Listener;->onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V

    .line 391
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 397
    :cond_9
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 398
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 401
    :cond_a
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->onRelease()V

    .line 402
    invoke-interface {v3, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 404
    :cond_b
    monitor-exit v1

    .line 406
    if-eqz v3, :cond_c

    return v5

    :cond_c
    return v0

    .line 404
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAppxVersionInRender(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 612
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->mAppxVersionInRender:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
    .locals 0
    .param p1, "linkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 597
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->k:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 598
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nebulasessiontracker newSession setId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Session"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 466
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h:Landroid/os/Bundle;

    .line 467
    return-void
.end method

.method public setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V
    .locals 0
    .param p1, "scenario"    # Lcom/alipay/mobile/h5container/api/H5Scenario;

    .line 452
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b:Lcom/alipay/mobile/h5container/api/H5Scenario;

    .line 453
    return-void
.end method

.method public setServiceWorkerID(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 587
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->j:Ljava/lang/String;

    .line 588
    return-void
.end method
