.class public Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AUImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonListAdapter"
.end annotation


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 760
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->mItemList:Ljava/util/List;

    return-void
.end method

.method private resolveItemBgDrawable(I)I
    .locals 1
    .param p1, "position"    # I

    .line 808
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 809
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    return v0

    .line 811
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 760
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 782
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 787
    if-nez p2, :cond_0

    .line 788
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 789
    move-object p2, v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$style;->dialogBottomButtonStyle:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 790
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 791
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 792
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    .end local v0    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->resolveItemBgDrawable(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 795
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .param p1, "itemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 767
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->notifyDataSetChanged()V

    .line 768
    return-void
.end method
