.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;
.super Ljava/lang/Object;
.source "PerformancePanelTestService.java"

# interfaces
.implements Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;


# static fields
.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ltest/tinyapp/alipay/com/testlibrary/core/PermissionChecker;

.field private e:Lcom/alipay/mobile/h5container/api/H5Page;

.field private f:Z

.field private g:Z

.field private h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

.field private i:Ljava/lang/String;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "showPerformancePanel"

    const-string v1, "hidePerformancePanel"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a:[Ljava/lang/String;

    .line 56
    const-string v0, "onAppPerfEvent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->c:Ljava/util/Set;

    .line 62
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformancePanelPermissionChecker;

    invoke-direct {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformancePanelPermissionChecker;-><init>()V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->d:Ltest/tinyapp/alipay/com/testlibrary/core/PermissionChecker;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->f:Z

    .line 68
    iput-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->g:Z

    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;

    invoke-direct {v0, p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;-><init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 263
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->i:Ljava/lang/String;

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "20000067"

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->i:Ljava/lang/String;

    .line 269
    :cond_0
    return-void
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;Z)V
    .locals 0
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "isSwitchTab"    # Z

    .line 83
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)Z
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    .line 41
    invoke-direct {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    .line 41
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 226
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    const-string v0, "state"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "state":Ljava/lang/String;
    const-string v2, "pageLoaded"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    const-string v2, "loadTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 240
    .local v4, "loadTime":I
    move v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 241
    :goto_0
    if-eqz v2, :cond_2

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(J)V

    .line 243
    invoke-static {v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Z)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-static {v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(I)V

    .line 248
    :goto_1
    invoke-direct {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    if-eqz v2, :cond_3

    .line 249
    sget-object v3, Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;->ACTION_SWITCH_TAB:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    invoke-virtual {v2, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Z

    .line 252
    .end local v4    # "loadTime":I
    :cond_3
    return-void
.end method

.method private static b(Z)V
    .locals 1
    .param p0, "showing"    # Z

    .line 87
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 91
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 1

    .line 79
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 3

    .line 255
    iget-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->g:Z

    return v0

    .line 257
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->d:Ltest/tinyapp/alipay/com/testlibrary/core/PermissionChecker;

    invoke-interface {v2, v0}, Ltest/tinyapp/alipay/com/testlibrary/core/PermissionChecker;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->g:Z

    .line 258
    iput-boolean v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->f:Z

    .line 259
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 146
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->c:Ljava/util/Set;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->c:Ljava/util/Set;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 150
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "com.tinyapp.alipay.action.switchTab"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v0, "com.tinyapp.alipay.action.switchPage"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v0, "com.tinyapp.alipay.action.switchPageFromBackgroundToFront"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v0, "com.tinyapp.alipay.action.pageResume"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    return-void
.end method

.method public final a(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 209
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 165
    const-string v0, "PerformancePanelService"

    const-string v1, "handle action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    iput-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 169
    invoke-direct {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    const-string v1, "not have permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 172
    return v2

    .line 174
    :cond_0
    const-string v1, "have permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 178
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    invoke-direct {v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;-><init>()V

    new-instance v4, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    invoke-direct {v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;-><init>()V

    invoke-direct {v0, v1, v3, v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;-><init>(Landroid/app/Activity;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;)V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 183
    :cond_1
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 185
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string v1, "showPerformancePanel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-virtual {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a()Z

    .line 188
    const/4 v1, 0x1

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b(Z)V

    .line 189
    invoke-direct {p0, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Z)V

    .line 190
    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Z)V

    .line 191
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v3

    iget-object v4, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setPerformancePanelVisible(Ljava/lang/String;Z)V

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "hidePerformancePanel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->h:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-virtual {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b()Z

    .line 194
    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b(Z)V

    .line 195
    invoke-direct {p0, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Z)V

    .line 196
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v1

    iget-object v3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setPerformancePanelVisible(Ljava/lang/String;Z)V

    goto :goto_0

    .line 197
    :cond_3
    const-string v1, "onAppPerfEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    invoke-direct {p0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 203
    :cond_4
    :goto_0
    return v2
.end method

.method public final b()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b(Z)V

    .line 161
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 215
    .local v1, "actionsList":Ljava/util/List;
    move-object v1, v0

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    return-object v1
.end method
