.class public Lcom/alipay/mobile/antui/basic/AUSearchInputBox;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUSearchInputBox.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 47
    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->SearchBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->initStyleByTheme(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .end local v1    # "array":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->initStyleByTheme(Landroid/content/Context;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->setGravity(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getVoiceButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_search_input_box:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$id;->search_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUSearchView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 64
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 82
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 70
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 75
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SERACHBAR_INPUT_BACKGROUND_COLOR:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDrawable(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->initStyleByTheme(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public setInputMaxLength()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchInputBox;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setInputMaxLength()V

    .line 94
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 87
    return-void
.end method
