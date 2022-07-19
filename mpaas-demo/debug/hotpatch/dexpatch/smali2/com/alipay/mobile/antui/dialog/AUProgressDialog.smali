.class public Lcom/alipay/mobile/antui/dialog/AUProgressDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUProgressDialog.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private mBodyLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIndeterminate:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mIndeterminate:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgressVisible:Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->cancelAnimation()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->cancelAnimation()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->dismiss()V

    .line 141
    return-void
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 55
    sget v0, Lcom/alipay/mobile/antui/R$layout;->au_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setContentView(I)V

    .line 56
    sget v0, Lcom/alipay/mobile/antui/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_UNIVERSAL_BG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getLoadingAnimation(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->layout_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mBodyLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 61
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 82
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mBodyLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v1

    .line 72
    .local v1, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->PROGRESS_DIALOG_BG_LEFT_MARGIN:Ljava/lang/String;

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->PROGRESS_DIALOG_BG_TOP_MARGIN:Ljava/lang/String;

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/antui/theme/AUThemeKey;->PROGRESS_DIALOG_BG_RIGHT_MARGIN:Ljava/lang/String;

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/antui/theme/AUThemeKey;->PROGRESS_DIALOG_BG_BOTTOM_MARGIN:Ljava/lang/String;

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 72
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mBodyLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->initStyleByTheme(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 51
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mIndeterminate:Z

    .line 103
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 91
    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0
    .param p1, "progressVisiable"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgressVisible:Z

    .line 99
    return-void
.end method

.method public show()V
    .locals 4

    .line 108
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 110
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->toast_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 111
    .local v1, "toast":I
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 116
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    if-eqz v2, :cond_1

    .line 117
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgressVisible:Z

    if-eqz v3, :cond_0

    .line 118
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mIndeterminate:Z

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 119
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->mProgress:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    return-void

    .line 121
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 125
    :cond_1
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 87
    return-void
.end method
