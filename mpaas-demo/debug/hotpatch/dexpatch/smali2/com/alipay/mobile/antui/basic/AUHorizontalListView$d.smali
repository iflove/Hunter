.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;
.super Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;
.source "AUHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 1

    .line 6322
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6322
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 6325
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    .line 6326
    .local v0, "motionPosition":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 6328
    .local v2, "child":Landroid/view/View;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 6329
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 6331
    .local v3, "longPressId":J
    const/4 v1, 0x0

    .line 6332
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6333
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v5, v2, v0, v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$4000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;IJ)Z

    move-result v1

    .line 6336
    :cond_0
    if-eqz v1, :cond_1

    .line 6337
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v6, -0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6338
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 6339
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    return-void

    .line 6341
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v6, 0x2

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6344
    .end local v1    # "handled":Z
    .end local v3    # "longPressId":J
    :cond_2
    return-void
.end method
