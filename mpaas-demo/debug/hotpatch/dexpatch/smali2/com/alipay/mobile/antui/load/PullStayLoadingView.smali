.class public abstract Lcom/alipay/mobile/antui/load/PullStayLoadingView;
.super Lcom/alipay/mobile/antui/load/AbsLoadingView;
.source "PullStayLoadingView.java"


# static fields
.field private static final REFRESH_END_PROGRESS:F = 0.8f

.field private static final REFRESH_START_PROGRESS:F = 0.17f

.field public static final STYLE_BLUE:Ljava/lang/String; = "_BLUE"

.field public static final STYLE_WHITE:Ljava/lang/String; = "_WHITE"

.field private static final TAG:Ljava/lang/String; = "PullStayLoadingView"

.field private static final THRESHOLD:F = 0.2f


# instance fields
.field private antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private container:Landroid/widget/LinearLayout;

.field private currentStyle:Ljava/lang/String;

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private line:Landroid/view/View;

.field private screenWidth:I

.field private targetView:Landroid/view/View;

.field private titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->currentStyle:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->screenWidth:I

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->init()V

    .line 61
    return-void
.end method

.method private animLineView(IF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "alpha"    # F

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_2

    .line 246
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 249
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isShowLine:Z

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    return-void
.end method

.method private animTargetView(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 259
    return-void
.end method

.method private getLineLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    iget v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->screenWidth:I

    if-eqz v0, :cond_0

    return v0

    .line 221
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 222
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 223
    .local v1, "point":Landroid/graphics/Point;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 225
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 230
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->screenWidth:I

    return v2
.end method

.method private init()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_loading_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    sget v0, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 77
    sget v0, Lcom/alipay/mobile/antui/R$id;->animation:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_loading_stay_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    .local v0, "inflate":Landroid/view/ViewGroup;
    sget v1, Lcom/alipay/mobile/antui/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->container:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->createTargetView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->targetView:Landroid/view/View;

    .line 82
    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->container:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 86
    .end local v0    # "inflate":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract createTargetView()Landroid/view/View;
.end method

.method public finishLoading()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 204
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->setFirstLoadingAppeared(Z)V

    .line 205
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    .line 207
    return-void
.end method

.method public initAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->setAntColor(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected abstract isAntLoading()Z
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onAttachedToWindow()V

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    const-string/jumbo v1, "onAttachedToWindow isLoading = "

    const-string v2, "PullStayLoadingView"

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    return-void

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method public onPullOver(II)V
    .locals 5
    .param p1, "distance"    # I
    .param p2, "maxDistance"    # I

    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 154
    int-to-float v0, p1

    int-to-float v3, p2

    div-float/2addr v0, v3

    move v3, v2

    .line 156
    .local v3, "positionPercent":F
    move v3, v0

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    return-void

    .line 158
    :cond_0
    const v0, 0x3e2e147b    # 0.17f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    mul-float v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    .line 164
    .end local v3    # "positionPercent":F
    return-void

    .line 165
    :cond_2
    int-to-float v0, p1

    int-to-float v3, p2

    div-float/2addr v0, v3

    move v3, v2

    .line 166
    .restart local v3    # "positionPercent":F
    move v3, v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const/4 v3, 0x0

    .line 168
    :cond_3
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v3, v0

    if-gtz v4, :cond_4

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 170
    .end local v3    # "positionPercent":F
    .local v1, "positionPercent":F
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->animTargetView(F)V

    .line 171
    div-float v0, v1, v0

    .line 172
    .local v0, "linePercent":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->animLineView(IF)V

    .line 173
    .end local v0    # "linePercent":F
    return-void

    .line 174
    .end local v1    # "positionPercent":F
    .restart local v3    # "positionPercent":F
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 175
    .end local v3    # "positionPercent":F
    .local v2, "positionPercent":F
    sub-float v3, v2, v0

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->animTargetView(F)V

    .line 176
    sub-float v0, v2, v0

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    .line 177
    .local v1, "linePercent":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->animLineView(IF)V

    .line 180
    .end local v1    # "linePercent":F
    .end local v2    # "positionPercent":F
    return-void
.end method

.method public pause()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    .line 217
    return-void
.end method

.method public setAntColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->currentStyle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->currentStyle:Ljava/lang/String;

    .line 115
    const-string v0, "_BLUE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SUB_CONTENT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "_WHITE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const-string v1, "#9AFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 122
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    new-instance v1, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;-><init>(Lcom/alipay/mobile/antui/load/PullStayLoadingView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    return-void
.end method

.method public setLineView(Landroid/view/View;)Lcom/alipay/mobile/antui/load/PullStayLoadingView;
    .locals 2
    .param p1, "line"    # Landroid/view/View;

    .line 64
    if-nez p1, :cond_0

    return-object p0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->line:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getLineLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->getLineLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    const-string v0, "#BADBFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 70
    return-object p0
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isAntLoading()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e2e147b    # 0.17f

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->antAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 191
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->isLoading:Z

    .line 193
    return-void
.end method
