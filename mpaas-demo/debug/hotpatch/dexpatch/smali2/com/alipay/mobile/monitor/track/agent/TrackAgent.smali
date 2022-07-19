.class public interface abstract Lcom/alipay/mobile/monitor/track/agent/TrackAgent;
.super Ljava/lang/Object;
.source "TrackAgent.java"


# virtual methods
.method public abstract onActivityBackPressed(Landroid/app/Activity;)V
.end method

.method public abstract onActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract onActivityDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onActivityFinish(Landroid/app/Activity;)V
.end method

.method public abstract onActivityPause(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResume(Landroid/app/Activity;)V
.end method

.method public abstract onActivityWindowFocusChanged(Landroid/app/Activity;Z)V
.end method

.method public abstract onFragmentBackPressed()V
.end method

.method public abstract onFragmentDestroy(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract onFragmentFinish()V
.end method

.method public abstract onFragmentHiddenChanged(Landroidx/fragment/app/Fragment;Z)V
.end method

.method public abstract onFragmentPause(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract onFragmentResume(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract onFragmentSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onViewClick(Landroid/view/View;ZLjava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
