.class public Lcom/alipay/mobile/antui/input/AUInputBox;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/mobile/antui/api/AULineGroupItemInterface;


# instance fields
.field private bottomDivider:Landroid/view/View;

.field private emojiSize:I

.field private inputType:I

.field private isNeedShowClearButton:Z

.field private mCleanButtonListener:Landroid/view/View$OnClickListener;

.field private final mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field protected mInputContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private final mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private final mInputImage:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private final mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;

.field private supportEmoji:Z

.field private topDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->supportEmoji:Z

    .line 61
    iput v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->emojiSize:I

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->isNeedShowClearButton:Z

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;

    .line 77
    iput v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->inputType:I

    .line 94
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/input/AUInputBox;->inflateLayout(Landroid/content/Context;)V

    .line 95
    sget v3, Lcom/alipay/mobile/antui/R$id;->inputbox_container:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/input/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 96
    sget v3, Lcom/alipay/mobile/antui/R$id;->input_edit:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/input/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v3, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 97
    sget v4, Lcom/alipay/mobile/antui/R$id;->input_name:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v4, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 98
    sget v4, Lcom/alipay/mobile/antui/R$id;->clearButton:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v4, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 99
    sget v4, Lcom/alipay/mobile/antui/R$id;->input_image:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v4, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, "hintString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 103
    .local v5, "inputName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 104
    .local v6, "maxLength":I
    const/16 v7, 0x10

    .line 105
    .local v7, "itemType":I
    const/4 v8, 0x0

    .line 107
    .local v8, "inputImage":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 108
    sget-object v9, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v10, v2

    .line 109
    .local v10, "a":Landroid/content/res/TypedArray;
    move-object v10, v9

    sget v11, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputName:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    sget v9, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputType:I

    invoke-virtual {v10, v9, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->inputType:I

    .line 111
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_maxLength:I

    const/4 v9, -0x1

    invoke-virtual {v10, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 112
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputHint:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputImage:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 114
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, "emojia":Landroid/content/res/TypedArray;
    sget v9, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmoji:I

    invoke-virtual {v1, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->supportEmoji:Z

    .line 118
    sget v9, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_emojiSize:I

    invoke-virtual {v1, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->emojiSize:I

    .line 119
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v2, "backgounda":Landroid/content/res/TypedArray;
    move-object v2, v0

    sget v9, Lcom/alipay/mobile/antui/R$styleable;->listItem_listItemType:I

    const/16 v11, 0x10

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 123
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    .end local v1    # "emojia":Landroid/content/res/TypedArray;
    .end local v2    # "backgounda":Landroid/content/res/TypedArray;
    .end local v10    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/antui/input/AUInputBox;->setItemPositionStyle(I)V

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->supportEmoji:Z

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSupportEmoji(Z)V

    .line 127
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->emojiSize:I

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setEmojiSize(I)V

    .line 129
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/antui/input/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->inputType:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->setInputType(I)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/input/AUInputBox;->setMaxLength(I)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/antui/input/AUInputBox;->setInputImage(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->afterInflate()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/input/AUFormatter;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/input/AUInputBox;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mCleanButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private addBottomDivider(Z)V
    .locals 3
    .param p1, "hasLeftMargin"    # Z

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    .line 544
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addView(Landroid/view/View;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    if-eqz p1, :cond_1

    const/16 v1, 0xe

    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->getBottomParams(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 549
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    return-void
.end method

.method private addClearListener()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/input/AUInputBox$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/input/AUInputBox$3;-><init>(Lcom/alipay/mobile/antui/input/AUInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private addTopDivider(Z)V
    .locals 3
    .param p1, "hasLeftMargin"    # Z

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    .line 533
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addView(Landroid/view/View;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    if-eqz p1, :cond_1

    const/16 v1, 0xe

    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->getTopParams(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 538
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void
.end method

.method private afterInflate()V
    .locals 1

    .line 168
    new-instance v0, Lcom/alipay/mobile/antui/input/AUInputBox$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/input/AUInputBox$1;-><init>(Lcom/alipay/mobile/antui/input/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addClearListener()V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    new-instance v0, Lcom/alipay/mobile/antui/input/AUInputBox$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/input/AUInputBox$2;-><init>(Lcom/alipay/mobile/antui/input/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    return-void
.end method

.method private cleanBottomDivider()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->bottomDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 560
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_0
    return-void
.end method

.method private cleanTopDivider()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->topDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 554
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_0
    return-void
.end method

.method private getBottomParams(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "marginLeft"    # I

    .line 565
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 566
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$id;->inputbox_container:I

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v2, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 568
    return-object v1
.end method

.method private getTopParams(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "marginLeft"    # I

    .line 572
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 573
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$id;->inputbox_container:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 574
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v2, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 575
    return-object v1
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    :cond_0
    return-void
.end method

.method public getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getInputEdit()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getInputImage()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getInputName()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->inputType:I

    return v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUbbStr()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getUbbStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 165
    return-void
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->isNeedShowClearButton:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/antui/input/AUInputBox;->onInputTextStatusChanged(ZZ)V

    .line 478
    if-eqz p2, :cond_2

    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSelection(I)V

    goto :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSelection(I)V

    .line 485
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_3

    .line 486
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 488
    :cond_3
    return-void
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 1
    .param p1, "isEmpty"    # Z
    .param p2, "isFocused"    # Z

    .line 435
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->setClearButtonVisiable(Z)V

    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->setClearButtonVisiable(Z)V

    .line 440
    return-void
.end method

.method public setApprerance(Z)V
    .locals 3
    .param p1, "isBold"    # Z

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 260
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 265
    return-void
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 310
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mCleanButtonListener:Landroid/view/View$OnClickListener;

    .line 311
    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .line 447
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->isNeedShowClearButton:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 452
    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0
    .param p1, "emojiSize"    # I

    .line 149
    iput p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->emojiSize:I

    .line 150
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hintString"    # Ljava/lang/String;

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 400
    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHintTextColor(I)V

    .line 418
    return-void
.end method

.method public setInputImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_0
    return-void
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 351
    return-void
.end method

.method public setInputNameTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 365
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputName:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 368
    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTextColor(I)V

    .line 384
    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 374
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTextSize(IF)V

    .line 377
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setInputType(I)V

    .line 391
    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2
    .param p1, "positionStyle"    # I

    .line 499
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 522
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->cleanTopDivider()V

    .line 523
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->cleanBottomDivider()V

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->cleanTopDivider()V

    .line 519
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->addBottomDivider(Z)V

    .line 520
    return-void

    .line 513
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->cleanTopDivider()V

    .line 514
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addBottomDivider(Z)V

    .line 515
    return-void

    .line 509
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->cleanTopDivider()V

    .line 510
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->addBottomDivider(Z)V

    .line 511
    return-void

    .line 505
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->addTopDivider(Z)V

    .line 506
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->addBottomDivider(Z)V

    .line 507
    return-void

    .line 501
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->addTopDivider(Z)V

    .line 502
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->addBottomDivider(Z)V

    .line 503
    return-void

    .line 528
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxlength"    # I

    .line 426
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 432
    return-void
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0
    .param p1, "isNeedShowClearButton"    # Z

    .line 472
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->isNeedShowClearButton:Z

    .line 473
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    if-eqz v0, :cond_0

    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 304
    :cond_0
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0
    .param p1, "isSupport"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->supportEmoji:Z

    .line 157
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "inputContent"    # Ljava/lang/CharSequence;

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 320
    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    .line 321
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 323
    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alipay/mobile/antui/input/AUFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/alipay/mobile/antui/input/AUFormatter;

    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;

    .line 238
    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0
    .param p1, "visualStyle"    # I

    .line 583
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 3

    .line 595
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 596
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 597
    return-void
.end method
