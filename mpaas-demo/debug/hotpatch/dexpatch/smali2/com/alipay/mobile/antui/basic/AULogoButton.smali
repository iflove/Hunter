.class public Lcom/alipay/mobile/antui/basic/AULogoButton;
.super Landroid/widget/FrameLayout;
.source "AULogoButton.java"


# instance fields
.field private mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AULogoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULogoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULogoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_logo_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget v0, Lcom/alipay/mobile/antui/R$id;->logo_button_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AULogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 43
    sget v0, Lcom/alipay/mobile/antui/R$id;->logo_button_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AULogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 45
    if-eqz p2, :cond_3

    .line 46
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_textSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_textSize:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 52
    .local v0, "size":F
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 54
    .end local v0    # "size":F
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AULogoButton_android_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 56
    .local v0, "color":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 59
    .end local v0    # "color":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void
.end method


# virtual methods
.method public getIconView()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AULogoButton;->mTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
