.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

.field private b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 5696
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5699
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p0, "scrapViews"    # Ljava/util/ArrayList;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 5982
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 5983
    .local v1, "size":I
    move v1, v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 5984
    return-object v2

    .line 5987
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 5988
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5989
    .local v2, "scrapView":Landroid/view/View;
    move-object v2, v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 5991
    iget v3, v3, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_1

    .line 5992
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5993
    return-object v2

    .line 5987
    .end local v2    # "scrapView":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5997
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;
    .param p1, "x1"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    .line 5696
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private e()V
    .locals 11

    .line 5940
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    array-length v0, v0

    .line 5941
    .local v0, "maxViews":I
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    .line 5942
    .local v1, "viewTypeCount":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    .line 5944
    .local v2, "scrapViews":[Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5945
    aget-object v7, v2, v3

    .line 5946
    .local v5, "scrapPile":Ljava/util/ArrayList;
    move-object v5, v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5947
    .local v6, "size":I
    move v6, v7

    sub-int/2addr v7, v0

    .line 5949
    .local v7, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 5951
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_0

    .line 5952
    iget-object v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    add-int/lit8 v10, v6, -0x1

    .end local v6    # "size":I
    .local v10, "size":I
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v9, v6, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1600(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V

    .line 5951
    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    .line 5944
    .end local v5    # "scrapPile":Ljava/util/ArrayList;
    .end local v7    # "extras":I
    .end local v8    # "j":I
    .end local v10    # "size":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5956
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v3, :cond_3

    .line 5957
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5958
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 5959
    .local v5, "v":Landroid/view/View;
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5960
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 5961
    add-int/lit8 v3, v3, -0x1

    .line 5957
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5965
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private static e(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 5750
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 5722
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5723
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    .line 5724
    .local v1, "scrap":Ljava/util/ArrayList;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5726
    .local v0, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5727
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 5726
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5729
    .end local v0    # "scrapCount":I
    .end local v1    # "scrap":Ljava/util/ArrayList;
    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 5730
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    .line 5731
    .local v0, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 5732
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 5733
    .restart local v1    # "scrap":Ljava/util/ArrayList;
    move-object v1, v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5735
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 5736
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5735
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5731
    .end local v1    # "scrap":Ljava/util/ArrayList;
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5741
    .end local v0    # "typeCount":I
    .end local v2    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_4

    .line 5742
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 5743
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 5744
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 5743
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5747
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "viewTypeCount"    # I

    .line 5706
    if-lez p1, :cond_1

    .line 5711
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 5712
    .local v0, "scrapViews":[Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 5713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 5712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5716
    .end local v1    # "i":I
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    .line 5717
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    .line 5718
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    .line 5719
    return-void

    .line 5707
    .end local v0    # "scrapViews":[Ljava/util/ArrayList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .line 5779
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 5780
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    .line 5783
    :cond_0
    iput p2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c:I

    .line 5785
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    .line 5786
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 5787
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5791
    .local v2, "child":Landroid/view/View;
    aput-object v2, v0, v1

    .line 5786
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5793
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method final a(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 5846
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    const/4 v1, 0x0

    move-object v2, v1

    .line 5847
    .local v2, "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 5848
    return-void

    .line 5851
    :cond_0
    iput p2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 5853
    iget v0, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->viewType:I

    .line 5854
    .local v0, "viewType":I
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    .line 5857
    .local v3, "scrapHasTransientState":Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5869
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 5870
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5872
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5877
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    .line 5878
    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5881
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    if-eqz v1, :cond_4

    .line 5882
    invoke-interface {v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 5884
    :cond_4
    return-void

    .line 5858
    :cond_5
    :goto_1
    if-eqz v3, :cond_7

    .line 5859
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-nez v1, :cond_6

    .line 5860
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    .line 5863
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 5866
    :cond_7
    return-void
.end method

.method final b(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 5796
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c:I

    sub-int v0, p1, v0

    .line 5797
    .local v0, "index":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    .line 5799
    .local v1, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    if-ltz v0, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 5800
    aget-object v3, v1, v0

    .line 5801
    .local v3, "match":Landroid/view/View;
    aput-object v2, v1, v0

    .line 5803
    return-object v3

    .line 5806
    .end local v3    # "match":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method final b()V
    .locals 8

    .line 5754
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 5755
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    .line 5756
    .local v2, "scrap":Ljava/util/ArrayList;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5758
    .local v0, "scrapCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 5759
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    add-int/lit8 v5, v0, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V

    .line 5758
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5761
    .end local v0    # "scrapCount":I
    .end local v2    # "scrap":Ljava/util/ArrayList;
    .end local v3    # "i":I
    :cond_0
    goto :goto_3

    .line 5762
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    .line 5763
    .local v0, "typeCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 5764
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    .line 5765
    .restart local v2    # "scrap":Ljava/util/ArrayList;
    move-object v2, v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5767
    .local v4, "scrapCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 5768
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V

    .line 5767
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5763
    .end local v2    # "scrap":Ljava/util/ArrayList;
    .end local v4    # "scrapCount":I
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5773
    .end local v0    # "typeCount":I
    .end local v3    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_4

    .line 5774
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 5776
    :cond_4
    return-void
.end method

.method final c(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .line 5810
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5811
    return-object v1

    .line 5814
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x0

    .line 5815
    .local v2, "index":I
    move v2, v0

    if-gez v0, :cond_1

    .line 5816
    return-object v1

    .line 5819
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5820
    .local v0, "result":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 5822
    return-object v0
.end method

.method final c()V
    .locals 1

    .line 5826
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 5827
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 5829
    :cond_0
    return-void
.end method

.method final d(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .line 5832
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5833
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5835
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    .line 5836
    .local v1, "whichScrap":I
    move v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5837
    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5841
    .end local v1    # "whichScrap":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final d()V
    .locals 12

    .line 5888
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d:[Landroid/view/View;

    .line 5889
    .local v0, "activeViews":[Landroid/view/View;
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5891
    .local v1, "multipleScraps":Z
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->g:Ljava/util/ArrayList;

    .line 5892
    .local v4, "scrapViews":Ljava/util/ArrayList;
    array-length v5, v0

    .line 5894
    sub-int/2addr v5, v3

    .local v5, "i":I
    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    :goto_1
    if-ltz v5, :cond_7

    .line 5895
    aget-object v8, v0, v5

    .line 5896
    .local v6, "victim":Landroid/view/View;
    move-object v6, v8

    if-eqz v8, :cond_6

    .line 5897
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 5898
    .local v7, "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    move-object v7, v8

    iget v8, v8, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->viewType:I

    .line 5900
    .local v8, "whichScrap":I
    aput-object v3, v0, v5

    .line 5902
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v9

    .line 5903
    .local v9, "scrapHasTransientState":Z
    invoke-static {v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e(I)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v9, :cond_1

    goto :goto_2

    .line 5917
    :cond_1
    if-eqz v1, :cond_2

    .line 5918
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e:[Ljava/util/ArrayList;

    aget-object v4, v10, v8

    .line 5921
    :cond_2
    iget v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c:I

    add-int/2addr v10, v5

    iput v10, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 5922
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5926
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-lt v10, v11, :cond_3

    .line 5927
    invoke-virtual {v6, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5930
    :cond_3
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    if-eqz v10, :cond_6

    .line 5931
    invoke-interface {v10, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 5904
    .end local v6    # "victim":Landroid/view/View;
    .end local v7    # "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    .line 5905
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v6, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V

    .line 5907
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    if-nez v10, :cond_5

    .line 5908
    new-instance v10, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v10}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    .line 5911
    :cond_5
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->h:Landroidx/collection/SparseArrayCompat;

    iget v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c:I

    add-int/2addr v11, v5

    invoke-virtual {v10, v11, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 5894
    .end local v8    # "whichScrap":I
    .end local v9    # "scrapHasTransientState":Z
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 5936
    .end local v5    # "i":I
    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->e()V

    .line 5937
    return-void
.end method
