.class final Lcom/alipay/mobile/antui/load/AURefreshListView$3;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingView(Lcom/alipay/mobile/antui/load/AbsLoadingView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AbsLoadingView;

.field final synthetic b:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Lcom/alipay/mobile/antui/load/AbsLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 799
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iput-object p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->a:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->a:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$802(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I

    .line 803
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$800(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    # setter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenDistance:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$902(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$800(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    # setter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayCloseDistance:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1002(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I

    .line 805
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->a:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    # setter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1102(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$800(Lcom/alipay/mobile/antui/load/AURefreshListView;)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 807
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstLayout:Z

    .line 808
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;->a:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->requestLayout()V

    .line 809
    return-void
.end method
