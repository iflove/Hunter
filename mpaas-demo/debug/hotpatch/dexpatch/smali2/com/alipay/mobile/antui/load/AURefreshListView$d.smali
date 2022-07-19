.class final Lcom/alipay/mobile/antui/load/AURefreshListView$d;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$d;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 308
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$d;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 325
    const-string v0, "AURefreshListView"

    const-string v1, "RefreshFinishAnimationListener onAnimationEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    instance-of v0, p1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    if-eqz v0, :cond_0

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->a(Z)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$d;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishLayoutAction()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$200(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    .line 330
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 335
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 311
    const-string v0, "AURefreshListView"

    const-string v1, "RefreshFinishAnimationListener onAnimationStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    instance-of v1, p1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    if-eqz v1, :cond_0

    .line 313
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->a(Z)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$d;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    const-string/jumbo v1, "mOnPullRefreshListener onRefreshFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$d;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/OnPullRefreshListener;->onRefreshFinished()V

    return-void

    .line 319
    :cond_1
    const-string/jumbo v1, "mOnPullRefreshListener is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method
