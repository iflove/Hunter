.class public Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;
.source "AUDoubleTitleListItem.java"


# instance fields
.field private leftSubText:Ljava/lang/String;

.field private leftSubTextColor:I

.field private leftSubTextSize:F

.field private mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

.field protected mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

.field private rightText:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setLeftViewParams()V

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setRightViewParams()V

    .line 45
    return-void
.end method

.method private initButtonView()V
    .locals 3

    .line 133
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    .line 134
    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setTextSize(IF)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_ass:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    .local v0, "h_padding":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    .local v1, "v_padding":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setPadding(IIII)V

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setArrowVisibility(Z)V

    .line 141
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->addRightView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method private initRightView(I)V
    .locals 1
    .param p1, "type"    # I

    .line 112
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initTextImage()V

    .line 121
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initButtonView()V

    .line 115
    return-void
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftSubText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubText:Ljava/lang/String;

    .line 78
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftSubTextColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextColor:I

    .line 79
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftSubTextSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextSize:F

    .line 80
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->rightText:Ljava/lang/String;

    .line 81
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightType:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->type:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private setLeftViewParams()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setLeftSubText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextColor:I

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 92
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftSubTextSize:F

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextSize(IF)V

    .line 95
    :cond_2
    return-void
.end method

.method private setRightViewParams()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->rightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->type:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->rightText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setRightText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->rightText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 109
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getImageVerticalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftImageSizeType:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_list_image_space_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_list_image_space_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_list_image_space_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 58
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getApFromPx(I)I

    move-result v1

    return v1
.end method

.method protected getLeftImageSize(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->leftImageSizeType:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_double_image_size_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_double_image_size_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_double_image_size_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 72
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getApFromPx(I)I

    move-result v1

    return v1
.end method

.method public getLeftSubTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initLeftSubText()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getProcessButton()Lcom/alipay/mobile/antui/basic/AUProcessButton;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 238
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    return-object v0
.end method

.method public getRightImage()Lcom/alipay/mobile/antui/basic/AURoundImageView;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-nez v0, :cond_0

    .line 195
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    return-object v0
.end method

.method public getRightTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 219
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method protected initTextImage()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_single_title_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "rightView":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->list_right_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 126
    sget v1, Lcom/alipay/mobile/antui/R$id;->list_right_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->supportEmoji:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setSupportEmoji(Z)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v2, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->emojiSize:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setEmojiSize(I)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->addRightView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 250
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method public setLeftSubText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initLeftSubText()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 206
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setRightImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 174
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageResource(I)V

    .line 180
    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 184
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 167
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setRightType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 262
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initRightView(I)V

    .line 263
    return-void
.end method
