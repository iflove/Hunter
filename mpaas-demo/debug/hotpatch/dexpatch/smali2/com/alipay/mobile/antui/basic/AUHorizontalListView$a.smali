.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;
.super Landroid/database/DataSetObserver;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

.field private b:Landroid/os/Parcelable;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0

    .line 6077
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6078
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->b:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6077
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 6082
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Z)Z

    .line 6083
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1702(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6084
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1802(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6088
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6089
    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1700(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 6090
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->b:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->b:Landroid/os/Parcelable;

    goto :goto_0

    .line 6093
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->rememberSyncState()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6096
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkFocus()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2100(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6097
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 6098
    return-void
.end method

.method public final onInvalidated()V
    .locals 5

    .line 6102
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Z)Z

    .line 6104
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6107
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->b:Landroid/os/Parcelable;

    .line 6111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1702(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6112
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1802(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6114
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v2, -0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I
    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2202(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6115
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const-wide/high16 v3, -0x8000000000000000L

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2302(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;J)J

    .line 6117
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I
    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6118
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;J)J

    .line 6120
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2602(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Z)Z

    .line 6122
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkFocus()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2100(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6123
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 6124
    return-void
.end method
