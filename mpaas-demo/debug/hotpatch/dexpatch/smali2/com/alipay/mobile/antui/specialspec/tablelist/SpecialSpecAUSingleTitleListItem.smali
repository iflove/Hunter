.class public Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;
.source "SpecialSpecAUSingleTitleListItem.java"


# instance fields
.field private labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private newFlagView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_text_size_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getApFromPx(I)I

    move-result v1

    int-to-float v1, v1

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 47
    return-void
.end method


# virtual methods
.method public attachNewFlag2LeftText(Landroid/view/View;)V
    .locals 4
    .param p1, "newFlagView"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->newFlagView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->newFlagView:Landroid/view/View;

    .line 84
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->addRightView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    move-object v2, v1

    .line 86
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_left_title_label_left_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->leftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .local v1, "leftTitleLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    const/4 v0, -0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->requestLayout()V

    .line 95
    .end local v1    # "leftTitleLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected getImageVerticalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->specialspec_AU_SPACE2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getApFromPx(I)I

    move-result v0

    return v0
.end method

.method public getLeftTitleLabelView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 66
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->addRightView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    move-object v2, v1

    .line 68
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v0

    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_left_title_label_left_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getApFromPx(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->leftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v1, "leftTitleLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    const/4 v0, -0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->requestLayout()V

    .line 78
    .end local v1    # "leftTitleLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->labelView:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method protected initRightControlSize()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getRightTextView()Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    .local v1, "rightTextView":Lcom/alipay/mobile/antui/basic/AUTextView;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_text_size_content:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUSingleTitleListItem;->getApFromPx(I)I

    move-result v2

    int-to-float v2, v2

    .line 52
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightControlSize()V

    .line 58
    return-void
.end method
