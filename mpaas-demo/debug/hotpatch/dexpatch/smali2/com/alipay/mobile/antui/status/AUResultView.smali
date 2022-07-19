.class public Lcom/alipay/mobile/antui/status/AUResultView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AUResultView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private buttonLayout:Landroid/view/View;

.field private mMainButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mMainTitleText:Landroid/widget/TextView;

.field private mSubButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mSubTitleText:Landroid/widget/TextView;

.field private mThirdTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/status/AUResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/status/AUResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUResultView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/status/AUResultView;->initStyleByTheme(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method public getMainTitleText()Landroid/widget/TextView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubTitleText()Landroid/widget/TextView;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThirdTitleText()Landroid/widget/TextView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mThirdTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_result_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget v0, Lcom/alipay/mobile/antui/R$id;->main_title_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/alipay/mobile/antui/R$id;->sub_title_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubTitleText:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$id;->third_title_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mThirdTitleText:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/alipay/mobile/antui/R$id;->result_button_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->buttonLayout:Landroid/view/View;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->result_main_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->result_sub_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 61
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 75
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUResultView_icon:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "iconDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUResultView_mainTitleText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/status/AUResultView;->setMainTitleText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUResultView_subTitleText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/status/AUResultView;->setSubTitleText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUResultView_thirdTitleText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/status/AUResultView;->setThirdTitleText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_3
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 66
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    return-void
.end method

.method public setButtonLayoutVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->buttonLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "main"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # Ljava/lang/CharSequence;

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->buttonLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->buttonLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->buttonLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubButton:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconRes"    # I

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 106
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public setMainTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mMainTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public setSubTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mSubTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setThirdTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/status/AUResultView;->setThirdTitleText(Ljava/lang/CharSequence;Z)V

    .line 145
    return-void
.end method

.method public setThirdTitleText(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "strikeThrough"    # Z

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mThirdTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mThirdTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/status/AUResultView;->mThirdTitleText:Landroid/widget/TextView;

    .line 158
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 97
    return-void
.end method
