.class final Lcom/alipay/mobile/antui/load/AURefreshListView$1;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 387
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$1;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 397
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "releaseToRefreshAnimListener onAnimationEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    instance-of v0, p1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    if-eqz v0, :cond_0

    .line 399
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->a(Z)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$1;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->startLoading()V

    .line 402
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 407
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 390
    instance-of v0, p1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    if-eqz v0, :cond_0

    .line 391
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->a(Z)V

    .line 393
    :cond_0
    return-void
.end method
