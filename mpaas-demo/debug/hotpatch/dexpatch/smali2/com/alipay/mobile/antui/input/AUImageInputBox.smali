.class public Lcom/alipay/mobile/antui/input/AUImageInputBox;
.super Lcom/alipay/mobile/antui/input/AUInputBox;
.source "AUImageInputBox.java"


# instance fields
.field private mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/input/AUInputBox;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_image_input_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "rightView":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mInputContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 36
    sget v1, Lcom/alipay/mobile/antui/R$id;->input_right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 37
    sget v1, Lcom/alipay/mobile/antui/R$id;->input_right_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 38
    if-eqz p2, :cond_3

    .line 39
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightIconUnicode:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightIconUnicode:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgUnicode(Ljava/lang/String;)V

    .line 43
    :cond_0
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightIconDrawable:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightIconDrawable:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_1
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightText:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_input_rightText:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastTextView(Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void
.end method


# virtual methods
.method public getLastImgBtn()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getLastTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setLastImgBtnVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public setLastImgClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setLastImgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgBtnVisible(Z)V

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgBtnVisible(Z)V

    .line 65
    return-void
.end method

.method public setLastImgUnicode(Ljava/lang/String;)V
    .locals 1
    .param p1, "unicode"    # Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastImgBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgBtnVisible(Z)V

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUImageInputBox;->setLastImgBtnVisible(Z)V

    .line 79
    return-void
.end method

.method public setLastTextView(Ljava/lang/String;)V
    .locals 2
    .param p1, "lastText"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUImageInputBox;->mLastTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 109
    return-void
.end method
