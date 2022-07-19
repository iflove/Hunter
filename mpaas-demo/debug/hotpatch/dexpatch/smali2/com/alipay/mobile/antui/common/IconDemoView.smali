.class public Lcom/alipay/mobile/antui/common/IconDemoView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "IconDemoView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private mContentView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/common/IconDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/common/IconDemoView;->initStyleByTheme(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "ta"    # Landroid/content/res/TypedArray;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->icon_demo_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/mobile/antui/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->content_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mContentView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 50
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "ta"    # Landroid/content/res/TypedArray;

    .line 66
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setIconfontUnicode(Ljava/lang/String;)V

    .line 69
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontSize:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontSize:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_ICONSIZE3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setIconfontSize(F)V

    .line 72
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)V

    .line 75
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_imageresid:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_imageresid:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setImageResource(I)V

    .line 78
    :cond_3
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_imagerSize:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_iconfontSize:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_ICONSIZE3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setImageViewSize(I)V

    .line 81
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_content_au:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconDemoView_content_au:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setContent(Ljava/lang/String;)V

    .line 84
    :cond_5
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "ta"    # Landroid/content/res/TypedArray;

    .line 54
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    .local v1, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ICONDEMOVIEW_ICONCOLOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/IconDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ICONDEMOVIEW_ICONCOLOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/IconDemoView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mContentView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setIconfontColorStates(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "iconfontColorStates"    # Landroid/content/res/ColorStateList;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 101
    return-void
.end method

.method public setIconfontSize(F)V
    .locals 1
    .param p1, "iconfontSize"    # F

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 93
    return-void
.end method

.method public setIconfontUnicode(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconfontUnicode"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 120
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "imageResource"    # I

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 97
    return-void
.end method

.method public setImageViewSize(I)V
    .locals 2
    .param p1, "imageViewSize"    # I

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 105
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_0
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 109
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/IconDemoView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 89
    return-void
.end method
