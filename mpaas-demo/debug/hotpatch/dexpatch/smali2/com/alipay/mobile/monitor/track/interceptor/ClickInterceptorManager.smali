.class public Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
.super Ljava/lang/Object;
.source "ClickInterceptorManager.java"


# static fields
.field public static final DEF_CONTROLID:Ljava/lang/String; = "cellAction"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isAdapterView"    # Z

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "xPath":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xpath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "params":Ljava/util/Map;
    const-string/jumbo v2, "pageId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "appId"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    if-eqz p4, :cond_1

    .line 71
    const-string v2, "controlId"

    const-string v3, "cellAction"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerHolder()Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;

    move-result-object v2

    .line 75
    .local v2, "holder":Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-interface {v2}, Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v3

    invoke-interface {v3, p1, p4, v0, v1}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onViewClick(Landroid/view/View;ZLjava/lang/String;Ljava/util/Map;)V

    .line 78
    :cond_2
    return-void
.end method


# virtual methods
.method public addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public handleOnClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    .line 38
    .local v2, "clickInterceptor":Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;
    invoke-interface {v2, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;->onClick(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    .end local v2    # "clickInterceptor":Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return v0
.end method

.method public handleOnClickAfter(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->trackWindowManagerView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public handleOnItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "pageId"    # Ljava/lang/String;
    .param p7, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 50
    move-object v0, p0

    const/4 v1, 0x1

    move-object v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct {p0, p2, v9, v10, v1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    .line 53
    .local v12, "clickInterceptor":Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;
    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    return v1

    .line 56
    .end local v12    # "clickInterceptor":Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public handleOnItemClickAfter(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->trackWindowManagerView(Landroid/view/View;)V

    .line 83
    return-void
.end method
