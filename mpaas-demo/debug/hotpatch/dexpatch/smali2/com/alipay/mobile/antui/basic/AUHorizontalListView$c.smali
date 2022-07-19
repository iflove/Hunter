.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 1

    .line 6347
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6347
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 6349
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 6353
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 6354
    .local v0, "index":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6356
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 6357
    const/4 v2, 0x0

    .line 6359
    .local v2, "handled":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6360
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I
    invoke-static {v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J
    invoke-static {v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)J

    move-result-wide v6

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v4, v1, v5, v6, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$4000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;IJ)Z

    move-result v2

    .line 6363
    :cond_1
    if-eqz v2, :cond_2

    .line 6364
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 6365
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6367
    .end local v2    # "handled":Z
    :cond_2
    return-void

    .line 6368
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 6370
    if-eqz v1, :cond_4

    .line 6371
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6374
    :cond_4
    return-void

    .line 6350
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :cond_5
    :goto_0
    return-void
.end method
