.class final Lcom/alipay/mobile/antui/load/AURefreshListView$c;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 1118
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$c;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1148
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 1149
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1143
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 1144
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1154
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1139
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1125
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1126
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1127
    .local v2, "value":F
    move v2, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->b:I

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1400(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->c:I

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1400(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1132
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->animStayView()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1500(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    .line 1133
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$c;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->requestLayout()V

    .line 1134
    return-void
.end method
