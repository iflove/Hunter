.class public Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AUVerticalTabItemView.java"


# instance fields
.field private mLineView:Landroid/view/View;

.field private mNameView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_vertical_tab_item_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setClickable(Z)V

    .line 40
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mLineView:Landroid/view/View;

    .line 41
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mNameView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 42
    return-void
.end method


# virtual methods
.method public getNameView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mNameView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "isSelected"    # Z

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setBackgroundColor(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mLineView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mNameView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mLineView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->mNameView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 54
    return-void
.end method
