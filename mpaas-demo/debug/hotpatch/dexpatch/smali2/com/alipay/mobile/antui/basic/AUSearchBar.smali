.class public Lcom/alipay/mobile/antui/basic/AUSearchBar;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUSearchBar.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUSearchBar$a;
    }
.end annotation


# instance fields
.field private editChangedWatcher:Lcom/alipay/mobile/antui/basic/AUSearchBar$a;

.field private isShowSearchButton:Z

.field private isShowVoiceSearch:Z

.field private mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mEditBoxHeight:I

.field private mEditBoxWidth:I

.field private mEditHintColor:I

.field private mEditIconColor:I

.field private mEditTextColor:I

.field private mHasInput:Z

.field private mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mInputMaxLength:I

.field private mSearchBackgroundView:Landroid/view/View;

.field private mSearchBarLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowSearchButton:Z

    .line 71
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mInputMaxLength:I

    .line 80
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowSearchButton:Z

    .line 71
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mInputMaxLength:I

    .line 80
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowSearchButton:Z

    .line 71
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mInputMaxLength:I

    .line 80
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUSearchBar;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUSearchBar;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method private getStateColor(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "normalColor"    # I

    .line 435
    const v0, 0x66ffffff

    and-int/2addr v0, p1

    .line 436
    .local v0, "pressed":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_TEXT_DISABLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 437
    .local v1, "disable":I
    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/antui/utils/StateListUtils;->getColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 110
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initStyleByTheme(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 113
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .end local v1    # "array":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initStyleByTheme(Landroid/content/Context;)V

    .line 117
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initBtnStatus()V

    .line 118
    return-void
.end method

.method private initBackButton()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUSearchBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar$1;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method

.method private initBtnStatus()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowSearchButton:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setSearchConfirmButtonVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setSearchConfirmButtonVisibility(I)V

    .line 220
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initInputColor()V

    .line 226
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mInputMaxLength:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setInputMaxLength(I)V

    .line 227
    return-void
.end method

.method private initInputColor()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHintTextColor(I)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 235
    return-void
.end method

.method private setClearBtnClick()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method


# virtual methods
.method public apply2dpCornerStyle()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchBackgroundView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->search_bar_input_2dp_corner_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    return-void
.end method

.method public attachFlag2SearchBtn(Landroid/view/View;)V
    .locals 8
    .param p1, "flagView"    # Landroid/view/View;

    .line 486
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 487
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getId()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 491
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 492
    .local v2, "height":I
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 493
    .local v0, "width":I
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 495
    .local v3, "flagHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 497
    .local v4, "flagWidth":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$dimen;->flag_top_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 498
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/antui/R$dimen;->flag_left_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 499
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchBarLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v5, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;)V

    .line 501
    return-void
.end method

.method public getBackButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getHintIconView()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getSearchBackgroundView()Landroid/view/View;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getSearchRelativeLayout()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getTitleBarRelative()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getVoiceButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_search_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_bar_kernel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 124
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_bar_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchBarLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 125
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 127
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_input_box:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 128
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->editChangedWatcher:Lcom/alipay/mobile/antui/basic/AUSearchBar$a;

    .line 129
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_clear_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 132
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_voice_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 133
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$string;->search:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImportantForAccessibility(I)V

    .line 136
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 137
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setEnabled(Z)V

    .line 138
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 139
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchBackgroundView:Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->initBackButton()V

    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setClearBtnClick()V

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->drawable_titlebar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SEARCH_INPUT_HINT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SEARCH_INPUT_ICON:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 148
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setBackButtonColor(I)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setSearchButtonColor(I)V

    .line 150
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 197
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_isShowSearchBtn:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowSearchButton:Z

    .line 198
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_isShowVoiceSearch:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    .line 199
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_inputMaxLength:I

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mInputMaxLength:I

    .line 200
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editHintColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    .line 201
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editTextColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    .line 202
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editIconColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    .line 203
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 154
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditText:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditHint:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditHint:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 160
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchButtonText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchButtonText:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 163
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconUnicode:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 166
    :cond_3
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconDrawable:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 169
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_backIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_backIconUnicode:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 172
    :cond_5
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_backIconDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_backIconDrawable:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 175
    :cond_6
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 180
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_BACKGROUND_COLOR:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDrawable(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 184
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_HEIGHT:Ljava/lang/String;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditBoxHeight:I

    .line 185
    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_WIDTH:Ljava/lang/String;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditBoxWidth:I

    .line 186
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditBoxHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditBoxWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_HINT_COLOR:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditHintColor:I

    .line 191
    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_TEXTCOLOR:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditTextColor:I

    .line 192
    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_ICON_COLOR:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mEditIconColor:I

    .line 193
    return-void
.end method

.method public setBackButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 428
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public setButtonActivity()V
    .locals 3

    .line 315
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 321
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    .line 322
    return-void
.end method

.method public setButtonUnActivity()V
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setEnabled(Z)V

    .line 305
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->isShowVoiceSearch:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 308
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mHasInput:Z

    .line 309
    return-void
.end method

.method public setInputMaxLength(I)V
    .locals 4
    .param p1, "length"    # I

    .line 260
    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    .line 262
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    return-void
.end method

.method public setSearchButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 432
    return-void
.end method

.method public setSearchConfirmButtonVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchConfirmButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 412
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 418
    .local v2, "margin":I
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 414
    .end local v2    # "margin":I
    :cond_1
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    nop

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchRelativeLayout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    return-void
.end method

.method public setTextChangedListner(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar;->editChangedWatcher:Lcom/alipay/mobile/antui/basic/AUSearchBar$a;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->a(Landroid/text/TextWatcher;)V

    .line 294
    :cond_0
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 208
    return-void
.end method
