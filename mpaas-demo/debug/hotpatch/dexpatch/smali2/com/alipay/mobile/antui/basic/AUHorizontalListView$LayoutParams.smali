.class public Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z

.field id:J

.field scrappedFromPosition:I

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 5642
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5621
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->id:J

    .line 5644
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    const/4 v1, -0x2

    const-string v2, "APHorizontalListView"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 5645
    const-string v0, "Constructing LayoutParams with width FILL_PARENT does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    .line 5651
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5652
    const-string v0, "Constructing LayoutParams with height FILL_PARENT does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    .line 5657
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 5660
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5621
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->id:J

    .line 5662
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    const-string v1, "APHorizontalListView"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5663
    const-string v0, "Inflation setting LayoutParams width to MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    .line 5669
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    .line 5670
    const-string v0, "Inflation setting LayoutParams height to MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    .line 5675
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5678
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5621
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->id:J

    .line 5680
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    const/4 v1, -0x2

    const-string v2, "APHorizontalListView"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 5681
    const-string v0, "Constructing LayoutParams with width MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    .line 5687
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5688
    const-string v0, "Constructing LayoutParams with height MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    .line 5693
    :cond_1
    return-void
.end method
