.class public Lcom/mpaas/mas/adapter/api/MPTracker;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private static getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;
    .locals 1

    .line 18
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerHolder()Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    return-object v0
.end method

.method public static leaveView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 22
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onActivityCreate(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public static onActivityDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 38
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onActivityDestroy(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 34
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onActivityPause(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 26
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onActivityResume(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public static onActivityWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hasFocus"    # Z

    .line 30
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onActivityWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 31
    return-void
.end method

.method public static onFragmentDestroy(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 50
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onFragmentDestroy(Landroidx/fragment/app/Fragment;)V

    .line 51
    return-void
.end method

.method public static onFragmentHiddenChanged(Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "hidden"    # Z

    .line 54
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onFragmentHiddenChanged(Landroidx/fragment/app/Fragment;Z)V

    .line 55
    return-void
.end method

.method public static onFragmentPause(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 46
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onFragmentPause(Landroidx/fragment/app/Fragment;)V

    .line 47
    return-void
.end method

.method public static onFragmentResume(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 42
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onFragmentResume(Landroidx/fragment/app/Fragment;)V

    .line 43
    return-void
.end method

.method public static onFragmentSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "isVisibleToUser"    # Z

    .line 58
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPTracker;->getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/agent/TrackAgent;->onFragmentSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V

    .line 59
    return-void
.end method
