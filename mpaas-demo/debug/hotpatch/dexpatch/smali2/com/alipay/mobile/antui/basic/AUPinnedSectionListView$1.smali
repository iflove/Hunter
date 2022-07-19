.class final Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;
.super Ljava/lang/Object;
.source "AUPinnedSectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_6

    if-nez p3, :cond_1

    goto :goto_2

    .line 114
    :cond_1
    nop

    .line 115
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v0

    .line 117
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v2, "sectionView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingTop()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0, p2, p2, p3}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->ensureShadowForPosition(III)V

    .line 125
    .end local v2    # "sectionView":Landroid/view/View;
    goto :goto_1

    .line 119
    .restart local v2    # "sectionView":Landroid/view/View;
    :cond_2
    move v0, v2

    .end local v2    # "sectionView":Landroid/view/View;
    .local v0, "sectionPosition":I
    goto :goto_0

    .line 126
    .end local v0    # "sectionPosition":I
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v0

    .line 127
    .local v2, "sectionPosition":I
    move v2, v0

    if-ltz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0, v2, p2, p3}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_1

    .line 127
    :cond_4
    move v0, v2

    .line 130
    .end local v2    # "sectionPosition":I
    .restart local v0    # "sectionPosition":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->destroyPinnedShadow()V

    .line 134
    .end local v0    # "sectionPosition":I
    :goto_1
    add-int v0, p2, p3

    .line 135
    .local v0, "lastVisibleItem":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->access$000(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->hasMoreItems:Z
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->access$100(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, p4, :cond_5

    .line 136
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->onLoadMoreListener:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->access$200(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    const/4 v3, 0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z
    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->access$002(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;Z)Z

    .line 138
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->onLoadMoreListener:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->access$200(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;->onLoadMoreItems()V

    .line 143
    :cond_5
    return-void

    .line 112
    .end local v0    # "lastVisibleItem":I
    :cond_6
    :goto_2
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 101
    :cond_0
    return-void
.end method
