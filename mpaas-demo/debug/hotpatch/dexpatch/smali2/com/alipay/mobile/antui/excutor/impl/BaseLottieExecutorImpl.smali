.class public Lcom/alipay/mobile/antui/excutor/impl/BaseLottieExecutorImpl;
.super Ljava/lang/Object;
.source "BaseLottieExecutorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/antui/excutor/LottieViewExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 77
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    return-void
.end method

.method public cancelAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 54
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public createLottieAnimation(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileObject"    # Lorg/json/JSONObject;

    .line 21
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 22
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    move-object v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/service/R$drawable;->drawable_default_process:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-object v1
.end method

.method public getDuration(Landroid/view/View;)J
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProgress(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public loop(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoop"    # Z

    .line 40
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public pauseAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 62
    return-void
.end method

.method public playAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 47
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public setImageAssetsDelegateFolder(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imageAssetsFolder"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setMinAndMaxProgress(Landroid/view/View;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "min"    # F
    .param p3, "max"    # F

    .line 36
    return-void
.end method

.method public setProgress(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .line 28
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public setScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .line 67
    return-void
.end method
