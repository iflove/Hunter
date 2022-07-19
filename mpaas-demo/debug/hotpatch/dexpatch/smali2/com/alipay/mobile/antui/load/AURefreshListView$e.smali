.class final Lcom/alipay/mobile/antui/load/AURefreshListView$e;
.super Landroid/view/animation/Animation;
.source "AURefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/View;I)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetTopMargin"    # I

    .line 654
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 655
    iput-object p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->e:Landroid/view/View;

    .line 656
    iput p3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->b:I

    .line 657
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 658
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v0, p1

    if-eqz p1, :cond_0

    .line 659
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->c:I

    .line 661
    :cond_0
    iget p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->b:I

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->d:I

    .line 662
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .param p1, "animationEnded"    # Z

    .line 665
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->f:Z

    .line 666
    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 671
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->f:Z

    if-eqz v0, :cond_0

    .line 672
    return-void

    .line 674
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 675
    .local v0, "newTopMargin":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 677
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 678
    return-void
.end method
