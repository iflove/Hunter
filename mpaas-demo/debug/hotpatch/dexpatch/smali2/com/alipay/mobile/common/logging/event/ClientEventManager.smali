.class public Lcom/alipay/mobile/common/logging/event/ClientEventManager;
.super Ljava/lang/Object;
.source "ClientEventManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/event/ClientEventManager;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/event/ClientEvent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/logging/event/EventFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->c:Ljava/util/HashMap;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/GotoBackgroundEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/GotoBackgroundEvent;-><init>()V

    const-string v2, "gotoBackground"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientPageLaunchEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientPageLaunchEvent;-><init>()V

    const-string v2, "ClientEvent_PageLaunch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;-><init>()V

    const-string v2, "ClientEvent_ClientLaunch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientQuitEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientQuitEvent;-><init>()V

    const-string v2, "ClientEvent_ClientQuit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientGotoForegroundEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientGotoForegroundEvent;-><init>()V

    const-string v2, "ClientEvent_GotoForeground"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;-><init>()V

    const-string v2, "ClientEvent_FinishFirstFrame"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/PeriodCheckEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/PeriodCheckEvent;-><init>()V

    const-string/jumbo v2, "periodCheck"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/SwitchPageEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/SwitchPageEvent;-><init>()V

    const-string/jumbo v2, "switchPage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/UserLoginEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/UserLoginEvent;-><init>()V

    const-string/jumbo v2, "userLogin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/BugReportEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/BugReportEvent;-><init>()V

    const-string v2, "bugReport"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;-><init>()V

    const-string v2, "dumpLogToSD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/ViewSwitchEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ViewSwitchEvent;-><init>()V

    const-string/jumbo v2, "viewSwitch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/SubAppStartEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/SubAppStartEvent;-><init>()V

    const-string/jumbo v2, "subappStart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/alipay/mobile/common/logging/event/SubAppResumeEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/SubAppResumeEvent;-><init>()V

    const-string/jumbo v2, "subappResume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/event/ClientEventManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    .line 30
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a:Lcom/alipay/mobile/common/logging/event/ClientEventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->d(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x0

    move-object v2, v1

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/logging/event/EventFilter;

    .line 94
    .local v2, "filter":Lcom/alipay/mobile/common/logging/event/EventFilter;
    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/logging/event/EventFilter;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "filter":Lcom/alipay/mobile/common/logging/event/EventFilter;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/event/ClientEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/event/ClientEvent;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/event/ClientEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "clientEvent"    # Lcom/alipay/mobile/common/logging/event/ClientEvent;
    .param p3, "params"    # Ljava/lang/Object;

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->b(Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p2, p3}, Lcom/alipay/mobile/common/logging/event/ClientEvent;->a(Ljava/lang/Object;)V

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->c(Ljava/lang/String;)V

    .line 77
    return-void
.end method
