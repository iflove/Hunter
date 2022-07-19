.class public Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;
.source "AUSingleTitleListItem.java"


# instance fields
.field private hasNormalSize:Z

.field private leftImageHeight:I

.field private leftImageWidth:I

.field private leftTextSize:F

.field private mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

.field private mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

.field private rightImage:Landroid/graphics/drawable/Drawable;

.field private rightImageHeight:I

.field private rightImageWidth:I

.field private rightText:Ljava/lang/String;

.field private rightTextSize:F

.field private rightView:Landroid/view/View;

.field private scaleRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->hasNormalSize:Z

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->scaleRate:F

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private initButtonView()V
    .locals 3

    .line 119
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    .line 120
    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setTextSize(IF)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_ass:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getApFromPx(I)I

    move-result v0

    .line 124
    .local v0, "h_padding":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getApFromPx(I)I

    move-result v1

    .line 125
    .local v1, "v_padding":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setPadding(IIII)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setArrowVisibility(Z)V

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->addRightView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method private initRightView(I)V
    .locals 1
    .param p1, "type"    # I

    .line 91
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initTextImage(Landroid/content/Context;)V

    .line 100
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initButtonView()V

    .line 94
    return-void
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/16 v0, 0x10

    .line 67
    .local v0, "type":I
    if-eqz p2, :cond_0

    .line 68
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightText:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightText:Ljava/lang/String;

    .line 70
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightImage:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImage:Landroid/graphics/drawable/Drawable;

    .line 71
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightType:I

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setRightText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setRightImage(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_3
    return-void
.end method

.method private initTextImage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_single_title_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightView:Landroid/view/View;

    .line 104
    sget v1, Lcom/alipay/mobile/antui/R$id;->list_right_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->list_right_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 107
    .local v0, "corner":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v1, v0, v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setRoundSize(II)V

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->supportEmoji:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setSupportEmoji(Z)V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->emojiSize:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setEmojiSize(I)V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightControlSize()V

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->addRightViewAssit(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method private setRightControlSize(F)V
    .locals 3
    .param p1, "scaleRate"    # F

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-eqz v0, :cond_0

    .line 321
    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightTextSize:F

    mul-float v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_4

    .line 325
    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageHeight:I

    if-lez v1, :cond_1

    .line 326
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageWidth:I

    if-lez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageHeight:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageWidth:I

    if-lez v0, :cond_4

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->requestLayout()V

    .line 337
    :cond_4
    return-void
.end method


# virtual methods
.method protected getImageVerticalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getApFromPx(I)I

    move-result v0

    return v0
.end method

.method protected getLeftImageSize(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_single_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getApFromPx(I)I

    move-result v0

    return v0
.end method

.method public getProcessButton()Lcom/alipay/mobile/antui/basic/AUProcessButton;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 253
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    return-object v0
.end method

.method public getRightImageView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-nez v0, :cond_0

    .line 241
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    return-object v0
.end method

.method public getRightTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 228
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method protected initRightControlSize()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageHeight:I

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightImageWidth:I

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->rightTextSize:F

    .line 346
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->scaleRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    .line 347
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setRightControlSize(F)V

    .line 349
    :cond_0
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 265
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    return-void
.end method

.method public setItemChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 136
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->isShowCheck:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$string;->iconfont_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    if-nez v0, :cond_0

    .line 168
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->processButton:Lcom/alipay/mobile/antui/basic/AUProcessButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setRightImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-nez v0, :cond_0

    .line 181
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageResource(I)V

    .line 187
    return-void
.end method

.method public setRightImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-nez v0, :cond_0

    .line 196
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-nez v0, :cond_0

    .line 211
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->invalidate()V

    .line 219
    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-nez v0, :cond_0

    .line 153
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 159
    :cond_1
    return-void
.end method

.method public setRightType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 276
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->initRightView(I)V

    .line 277
    return-void
.end method

.method public setScaleRate(F)V
    .locals 3
    .param p1, "scaleRate"    # F

    .line 285
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->scaleRate:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->scaleRate:F

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4fee\u6539\u63a7\u4ef6\u5927\u5c0f\uff1ascaleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUSingleTitleListItem"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->hasNormalSize:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageHeight:I

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageWidth:I

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftTextSize:F

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->hasNormalSize:Z

    .line 298
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageHeight:I

    if-lez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageWidth:I

    if-lez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageHeight:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftImageWidth:I

    if-lez v0, :cond_5

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->requestLayout()V

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->leftTextSize:F

    mul-float v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 312
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setRightControlSize(F)V

    .line 314
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->getImageVerticalMargin(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 315
    .local v0, "verticalPadding":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 317
    return-void
.end method
