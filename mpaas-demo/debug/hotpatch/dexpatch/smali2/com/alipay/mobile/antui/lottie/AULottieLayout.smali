.class public Lcom/alipay/mobile/antui/lottie/AULottieLayout;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AULottieLayout.java"


# instance fields
.field private animationView:Landroid/view/View;

.field private lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getLottieViewExecutor()Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    .line 36
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->addAnimatorListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->addAnimatorUpdateListener(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->cancelAnimation(Landroid/view/View;)V

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->getDuration(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->getProgress(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "isLoop"    # Z

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->loop(Landroid/view/View;Z)V

    .line 90
    return-void
.end method

.method public pauseAnimation()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->pauseAnimation(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->playAnimation(Landroid/view/View;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 98
    return-void
.end method

.method public setAnimationSource(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;Landroid/widget/ImageView$ScaleType;)V

    .line 44
    return-void
.end method

.method public setAnimationSource(Lorg/json/JSONObject;Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->removeView(Landroid/view/View;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->createLottieAnimation(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    .line 55
    if-eqz p2, :cond_1

    .line 56
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public setImageAssetsDelegateFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageFolder"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->setImageAssetsDelegateFolder(Landroid/view/View;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->setMinAndMaxProgress(Landroid/view/View;FF)V

    .line 82
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->setProgress(Landroid/view/View;F)V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->lottieViewExecutor:Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->animationView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;->setScale(Landroid/view/View;F)V

    .line 121
    return-void
.end method
