.class public Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
.super Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.source "H5PageTabBar.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->d:Z

    return-void
.end method


# virtual methods
.method public addTabBar()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 34
    :cond_0
    return-void
.end method

.method public addTabBarNoDisplay()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 41
    :cond_0
    return-void
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 51
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->context:Ljava/lang/ref/WeakReference;

    .line 53
    const-string v1, "tabBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 55
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->handleTabAction(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 56
    const/4 v2, 0x1

    return v2

    .line 58
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public handleTabAction(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 62
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v1, "create"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->d:Z

    if-eqz v1, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V

    .line 69
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->d:Z

    .line 72
    :cond_1
    const-string v1, "redDot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->createTabBadge(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 76
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 45
    const-string v0, "tabBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 26
    return-void
.end method
