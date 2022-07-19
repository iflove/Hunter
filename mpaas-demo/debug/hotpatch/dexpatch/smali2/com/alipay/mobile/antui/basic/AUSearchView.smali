.class public Lcom/alipay/mobile/antui/basic/AUSearchView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUSearchView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private isShowVoiceSearch:Z

.field private mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mEditHintColor:I

.field private mEditIconColor:I

.field private mEditTextColor:I

.field private mHasInput:Z

.field private mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mInputMaxLength:I

.field private mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private mSearchInputBg:Landroid/view/View;

.field private mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUSearchView;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setButtonUnActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/AUSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setButtonActivity()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 82
    if-eqz p2, :cond_0

    .line 83
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 84
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initStyleByTheme(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 87
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    .end local v1    # "array":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initStyleByTheme(Landroid/content/Context;)V

    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initBtnStatus()V

    .line 92
    return-void
.end method

.method private initBtnStatus()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImportantForAccessibility(I)V

    .line 153
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initInputColor()V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setInputMaxLength()V

    .line 160
    return-void
.end method

.method private initInputColor()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHintTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchInputBg:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->search_bar_input_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 169
    return-void
.end method

.method private setButtonActivity()V
    .locals 3

    .line 248
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 253
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    .line 254
    return-void
.end method

.method private setButtonUnActivity()V
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 241
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHasInput:Z

    .line 242
    return-void
.end method

.method private setClearBtnClick()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUSearchView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUSearchView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method private setTextChangedListner()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUSearchView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUSearchView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getHintIconView()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getVoiceButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_search_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_input_box:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 98
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_clear_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 99
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_voice_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 100
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 101
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchInputBg:Landroid/view/View;

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setTextChangedListner()V

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setClearBtnClick()V

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_ASS_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SEARCH_INPUT_ICON:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    .line 107
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 135
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_isShowVoiceSearch:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->isShowVoiceSearch:Z

    .line 136
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_inputMaxLength:I

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    .line 137
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editHintColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    .line 138
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editTextColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    .line 139
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_editIconColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    .line 140
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 111
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditText:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditHint:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_searchEditHint:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconUnicode:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 120
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar_hintIconDrawable:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 123
    :cond_3
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 128
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_HINT_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditHintColor:I

    .line 129
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_TEXTCOLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditTextColor:I

    .line 130
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_ICON_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mEditIconColor:I

    .line 131
    return-void
.end method

.method public setColorOriginalStyle()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initInputColor()V

    .line 292
    return-void
.end method

.method public setInputMaxLength()V
    .locals 5

    .line 175
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mInputMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    .line 177
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 182
    return-void
.end method

.method public setTransparentStyle()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_UNIVERSAL_BG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 296
    .local v0, "whiteColor":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchInputBg:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/antui/R$drawable;->au_search_input_bg_trans:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setTextColor(I)V

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mHintIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mVoiceButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 301
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 145
    return-void
.end method
