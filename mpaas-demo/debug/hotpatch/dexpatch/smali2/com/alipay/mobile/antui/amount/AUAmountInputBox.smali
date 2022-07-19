.class public Lcom/alipay/mobile/antui/amount/AUAmountInputBox;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUAmountInputBox.java"


# instance fields
.field private footStyle:I

.field private mEditText:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

.field private mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

.field private mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_amount_input_box:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_foot:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    .line 50
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_edit_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mEditText:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->initContent(Landroid/content/res/TypedArray;)V

    .line 56
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->initAttrStyle(Landroid/content/res/TypedArray;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->setFootStyle(I)V

    .line 62
    return-void
.end method

.method private initAttrStyle(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 74
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_footStyle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_footStyle:I

    iget v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->footStyle:I

    .line 77
    :cond_0
    return-void
.end method

.method private initContent(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountTitleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountTitleText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->setViewInfo(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V

    .line 68
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountHintText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mEditText:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountHintText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setHint(Ljava/lang/String;)V

    .line 71
    :cond_1
    return-void
.end method

.method private setViewInfo(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "info"    # Ljava/lang/String;

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public getEditLayout()Lcom/alipay/mobile/antui/amount/AUAmountEditText;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mEditText:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    return-object v0
.end method

.method public getEditText()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mEditText:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->getEditText()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    return-object v0
.end method

.method public getFootView()Lcom/alipay/mobile/antui/amount/AUAmountFootView;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    return-object v0
.end method

.method public getTitleView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setFootHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setEditHint(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setFootStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 128
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setStyle(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setVisibility(I)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public setFootText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountInputBox;->mFootView:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setText(Ljava/lang/String;)V

    .line 153
    return-void
.end method
