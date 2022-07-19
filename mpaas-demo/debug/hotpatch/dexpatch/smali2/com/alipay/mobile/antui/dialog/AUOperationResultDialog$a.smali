.class final Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;
.super Landroid/widget/BaseAdapter;
.source "AUOperationResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    .line 137
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)V

    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "position"    # I

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 174
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    return v0

    .line 176
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 158
    move-object p2, v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$style;->dialogBottomButtonStyle:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 160
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 161
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 156
    .end local v0    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->a:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/dialog/PopMenuItem;

    .line 165
    .local v0, "item":Lcom/alipay/mobile/antui/dialog/PopMenuItem;
    move-object v0, v1

    if-nez v1, :cond_1

    .line 166
    return-object p2

    .line 168
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object p2
.end method
