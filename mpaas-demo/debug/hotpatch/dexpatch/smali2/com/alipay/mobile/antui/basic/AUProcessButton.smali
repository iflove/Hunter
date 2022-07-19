.class public Lcom/alipay/mobile/antui/basic/AUProcessButton;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUProcessButton.java"


# static fields
.field public static final MAIN_PROCESS_STYLE:I = 0x1

.field public static final SUB_PROCESS_STYLE:I = 0x2


# instance fields
.field private mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 105
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setBackgroundResource(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 114
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 115
    float-to-double v1, p2

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-int p2, v1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object p2, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_1
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    iget-object p2, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_process_button_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/mobile/antui/R$id;->button_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->button_process:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setOrientation(I)V

    .line 51
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 52
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->ButtonAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->ButtonAttr_process_style:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 54
    .local v0, "style":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setProcessStyle(I)V

    .line 56
    .end local v0    # "style":I
    .end local v2    # "array":Landroid/content/res/TypedArray;
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setProcessStyle(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getButtonText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setMinWidth(I)V
    .locals 0
    .param p1, "minpixels"    # I

    .line 82
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setMinimumWidth(I)V

    .line 83
    return-void
.end method

.method public setProcessColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getLoadingAnimation(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 154
    return-void
.end method

.method public setProcessStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .line 90
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTCOLOR:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const v0, -0xef7117

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setProcessColor(I)V

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTCOLOR:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUProcessButton;->setProcessColor(I)V

    .line 94
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 75
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(F)V

    .line 67
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 71
    return-void
.end method

.method public startProcess()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 130
    return-void
.end method

.method public startProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "pro_str"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 136
    return-void
.end method

.method public stopProcess()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUProcessButton;->mButtonProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 144
    return-void
.end method
