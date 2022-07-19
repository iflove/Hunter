.class public Lcom/alipay/mobile/antui/load/AntLoadingView;
.super Lcom/alipay/mobile/antui/load/AbsLoadingView;
.source "AntLoadingView.java"


# static fields
.field private static final REFRESH_END_PROGRESS:F = 0.8f

.field private static final REFRESH_START_PROGRESS:F = 0.17f

.field public static final STYLE_BLUE:Ljava/lang/String; = "_BLUE"

.field public static final STYLE_WHITE:Ljava/lang/String; = "_WHITE"


# instance fields
.field private antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private currentStyle:Ljava/lang/String;

.field private titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->currentStyle:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->currentStyle:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->currentStyle:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_loading_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    sget v0, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 55
    sget v0, Lcom/alipay/mobile/antui/R$id;->animation:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 56
    return-void
.end method


# virtual methods
.method public finishLoading()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 138
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AntLoadingView;->setFirstLoadingAppeared(Z)V

    .line 139
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->isLoading:Z

    .line 140
    return-void
.end method

.method public initAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/load/AntLoadingView;->setAntColor(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onAttachedToWindow()V

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->isLoading:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAttachedToWindow isLoading = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntLoadingView "

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 65
    :cond_0
    return-void
.end method

.method public onPullOver(II)V
    .locals 4
    .param p1, "distance"    # I
    .param p2, "maxDistance"    # I

    .line 111
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 114
    .local v2, "positionPercent":F
    move v2, v0

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    return-void

    .line 116
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e2e147b    # 0.17f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    .line 122
    return-void
.end method

.method public pause()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->isLoading:Z

    .line 146
    return-void
.end method

.method public setAntColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->currentStyle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->currentStyle:Ljava/lang/String;

    .line 77
    const-string v0, "_BLUE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SUB_CONTENT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "_WHITE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const-string v1, "#9AFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    new-instance v1, Lcom/alipay/mobile/antui/load/AntLoadingView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/load/AntLoadingView$1;-><init>(Lcom/alipay/mobile/antui/load/AntLoadingView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public startLoading()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 130
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView;->isLoading:Z

    .line 131
    return-void
.end method
