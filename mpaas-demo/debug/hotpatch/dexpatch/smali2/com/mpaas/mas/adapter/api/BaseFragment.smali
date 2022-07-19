.class public abstract Lcom/mpaas/mas/adapter/api/BaseFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/alipay/mobile/monitor/track/TrackPageConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageSpmId()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTrackPage()Z
    .locals 1

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 53
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPTracker;->onFragmentDestroy(Landroidx/fragment/app/Fragment;)V

    .line 54
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 41
    invoke-static {p0, p1}, Lcom/mpaas/mas/adapter/api/MPTracker;->onFragmentHiddenChanged(Landroidx/fragment/app/Fragment;Z)V

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 35
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPTracker;->onFragmentPause(Landroidx/fragment/app/Fragment;)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 29
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPTracker;->onFragmentResume(Landroidx/fragment/app/Fragment;)V

    .line 30
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 47
    invoke-static {p0, p1}, Lcom/mpaas/mas/adapter/api/MPTracker;->onFragmentSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V

    .line 48
    return-void
.end method
