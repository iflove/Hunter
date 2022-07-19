.class final Lcom/alipay/mobile/antui/load/AURefreshListView$f;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/View;IZ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetTopMargin"    # I
    .param p4, "isCall"    # Z

    .line 346
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-boolean p4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->b:Z

    .line 348
    iput-object p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->f:Landroid/view/View;

    .line 349
    iput p3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->c:I

    .line 350
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 351
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v0, p1

    if-eqz p1, :cond_0

    .line 352
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->d:I

    .line 354
    :cond_0
    iget p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->c:I

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->e:I

    .line 355
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 360
    .local v0, "value":F
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 361
    .local v1, "newTopMargin":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 362
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->d:I

    sub-int v4, v1, v3

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->c:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 363
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 365
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$400(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$500(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->startLoading()V

    .line 367
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->b:Z

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/antui/load/OnPullRefreshListener;->onRefresh()V

    .line 371
    :cond_0
    return-void
.end method
