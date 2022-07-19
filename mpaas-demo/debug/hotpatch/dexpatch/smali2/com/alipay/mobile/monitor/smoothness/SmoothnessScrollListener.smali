.class public abstract Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;
.super Ljava/lang/Object;
.source "SmoothnessScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    .local v1, "firstVisibleView":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 23
    iget v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->a:I

    if-eq v0, p2, :cond_0

    .line 24
    iput p2, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->a:I

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->b:I

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 28
    .local v0, "top":I
    iget v2, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->c:I

    iget v3, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->b:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->c:I

    .line 29
    iput v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->b:I

    .line 32
    .end local v0    # "top":I
    :cond_1
    :goto_0
    iget v8, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->c:I

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->onScroll(Landroid/widget/AbsListView;IIII)V

    .line 33
    return-void
.end method

.method public abstract onScroll(Landroid/widget/AbsListView;IIII)V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 13
    iget v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->c:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;II)V

    .line 14
    if-nez p2, :cond_0

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessScrollListener;->c:I

    .line 17
    :cond_0
    return-void
.end method

.method public abstract onScrollStateChanged(Landroid/widget/AbsListView;II)V
.end method
