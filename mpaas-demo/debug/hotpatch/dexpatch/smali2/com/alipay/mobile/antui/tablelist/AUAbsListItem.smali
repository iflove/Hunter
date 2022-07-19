.class public abstract Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.source "AUAbsListItem.java"


# static fields
.field public static final ARROW_STYLE_DOWN:I = 0x21

.field public static final ARROW_STYLE_RIGHT:I = 0x20

.field public static final BUTTON:I = 0x11

.field public static final NEW_FLAG_TYPE_IMAGE:I = 0x2

.field public static final NEW_FLAG_TYPE_TEXT:I = 0x1

.field public static final SIZE_LARGE:I = 0x31

.field public static final SIZE_NORMAL:I = 0x30

.field public static final TEXT_IMAGE:I = 0x10


# instance fields
.field protected arrowType:I

.field protected emojiSize:I

.field protected fatherId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private hasRound:Z

.field protected isShowCheck:Z

.field protected leftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private leftImage:Landroid/graphics/drawable/Drawable;

.field private leftImageHeight:F

.field protected leftImageSizeType:I

.field private leftImageWidth:F

.field private leftText:Ljava/lang/String;

.field private leftTextColor:I

.field protected leftTextNewFlagView:Landroid/view/View;

.field private leftTextSize:F

.field protected mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

.field protected mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

.field protected mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field protected mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field protected supportEmoji:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->supportEmoji:Z

    .line 56
    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->emojiSize:I

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowCheck:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->arrowType:I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initViews(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initImageMargin()V

    .line 88
    return-void
.end method

.method private initEmojiStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "emojiTA":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmoji:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->supportEmoji:Z

    .line 128
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_emojiSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->emojiSize:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method

.method private initImageMargin()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getImageVerticalMargin(Landroid/content/Context;)I

    move-result v0

    .line 237
    .local v0, "verticalPadding":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 239
    return-void
.end method

.method private initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initEmojiStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftText:Ljava/lang/String;

    .line 113
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftImage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImage:Landroid/graphics/drawable/Drawable;

    .line 114
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftTextColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextColor:I

    .line 115
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftTextSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextSize:F

    .line 116
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftImageWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageWidth:F

    .line 117
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftImageHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    .line 118
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftImageSizeType:I

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageSizeType:I

    .line 119
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listShowCheck:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowCheck:Z

    .line 120
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listArrowType:I

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->arrowType:I

    .line 121
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_hasRound:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->hasRound:Z

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->hasRound:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setRounded(Z)V

    .line 140
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextColor:I

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 143
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextSize:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getApFromPx(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setLeftText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getLeftImageSize(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 152
    .local v0, "defaultIconSize":F
    iget v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageWidth:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    .line 153
    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageWidth:F

    .line 155
    :cond_3
    iget v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    .line 156
    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    .line 158
    :cond_4
    iget v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageWidth:F

    iget v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setIconSize(FF)V

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_5
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowArrow:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowCheck:Z

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setArrowVisibility(Z)V

    .line 165
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowCheck:Z

    if-eqz v1, :cond_8

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$string;->iconfont_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 168
    :cond_8
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->isShowArrow:Z

    if-eqz v1, :cond_9

    .line 169
    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->arrowType:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setArrowType(I)V

    .line 171
    :cond_9
    return-void
.end method

.method private intLeftTextNewFlagViewLayout()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextNewFlagView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 229
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->fatherId:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextNewFlagView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setArrowType(I)V
    .locals 3
    .param p1, "arrowType"    # I

    .line 220
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$string;->iconfont_pulldown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public addRightView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 178
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 179
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getApFromPx(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method

.method public addRightViewAssit(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 186
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    move-object v3, v1

    .line 187
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getApFromPx(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v1, "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v2, v4}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxWidth(I)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, p1, v3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void
.end method

.method public attachNewFlag2LeftText(Landroid/view/View;)V
    .locals 1
    .param p1, "newFlagView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftTextNewFlagView:Landroid/view/View;

    .line 202
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->addView(Landroid/view/View;)V

    .line 203
    sget v0, Lcom/alipay/mobile/antui/R$id;->list_left_stub:I

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->fatherId:I

    .line 204
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->intLeftTextNewFlagViewLayout()V

    .line 205
    return-void
.end method

.method protected abstract getImageVerticalMargin(Landroid/content/Context;)I
.end method

.method public getLeftCheckIcon()Lcom/alipay/mobile/antui/common/AUCheckIcon;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initCheckIcon()V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    return-object v0
.end method

.method protected getLeftImageHeight()F
    .locals 1

    .line 263
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    return v0
.end method

.method protected abstract getLeftImageSize(Landroid/content/Context;)I
.end method

.method public getLeftImageView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getRoundLeftImageView()Lcom/alipay/mobile/antui/basic/AURoundImageView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText()Ljava/lang/CharSequence;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getRoundLeftImageView()Lcom/alipay/mobile/antui/basic/AURoundImageView;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setImageContainerVisibility(Z)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    return-object v0
.end method

.method protected inflateImageLayout()V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_abs_list_image:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->list_item_icon:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    .line 102
    return-void
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_abs_list_item:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->item_left_text:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->list_left_stub:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 95
    return-void
.end method

.method public initCheckIcon()V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/common/AUCheckIcon;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    .line 399
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_list_checkbox_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getApFromPx(I)I

    move-result v0

    .line 400
    .local v0, "size":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 401
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getApFromPx(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 402
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setVisibility(I)V

    .line 404
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setImageContainerVisibility(Z)V

    .line 406
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;I)V

    .line 408
    .end local v0    # "size":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public initLeftSubText()V
    .locals 1

    .line 174
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_left_sub_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 175
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->onFinishInflate()V

    .line 135
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->intLeftTextNewFlagViewLayout()V

    .line 136
    return-void
.end method

.method public setArrowImageVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 210
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->arrowType:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setArrowType(I)V

    .line 211
    return-void
.end method

.method public setArrowVisibility(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 215
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->setArrowVisibility(Z)V

    .line 216
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->arrowType:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setArrowType(I)V

    .line 217
    return-void
.end method

.method public setIconSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    .line 247
    float-to-int v2, p1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 248
    iput p1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageWidth:F

    .line 250
    :cond_0
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 251
    float-to-int v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 252
    iput p2, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->leftImageHeight:F

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method public setLeftCheckIconChecked(Z)V
    .locals 1
    .param p1, "isShowCheck"    # Z

    .line 364
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initCheckIcon()V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setChecked(Z)V

    .line 366
    return-void
.end method

.method public setLeftCheckIconEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->initCheckIcon()V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setEnabled(Z)V

    .line 374
    return-void
.end method

.method public setLeftImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setImageContainerVisibility(Z)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageResource(I)V

    .line 331
    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setImageContainerVisibility(Z)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void
.end method

.method public setLeftImageVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 342
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setImageContainerVisibility(Z)V

    .line 343
    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 294
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->setItemPositionStyle(I)V

    .line 260
    return-void
.end method
