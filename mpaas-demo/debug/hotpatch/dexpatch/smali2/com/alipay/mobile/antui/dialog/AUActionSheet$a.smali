.class final Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;
.super Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
.source "AUActionSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUActionSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUActionSheet;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    .line 202
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;-><init>(Landroid/content/Context;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected final getHorizonPadding(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected final initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->float_menu_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 209
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 210
    sget v0, Lcom/alipay/mobile/antui/R$id;->red_point:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 211
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setGravity(I)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_action_sheet_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setMinimumHeight(I)V

    .line 213
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setBackgroundResource(I)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_action_sheet_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setIconfontSize(I)V

    .line 216
    return-void
.end method

.method public final setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    .line 225
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 227
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    const-string/jumbo v1, "warning_text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 229
    .local v0, "isWarning":Z
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    if-eqz v0, :cond_0

    # getter for: Lcom/alipay/mobile/antui/dialog/AUActionSheet;->warningTitleColor:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->access$000(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)I

    move-result v1

    goto :goto_0

    :cond_0
    # getter for: Lcom/alipay/mobile/antui/dialog/AUActionSheet;->normalTitleColor:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->access$100(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setTitleTextColor(I)V

    .line 230
    .end local v0    # "isWarning":Z
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUActionSheet;->normalTitleColor:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->access$100(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;->setTitleTextColor(I)V

    .line 233
    return-void
.end method
