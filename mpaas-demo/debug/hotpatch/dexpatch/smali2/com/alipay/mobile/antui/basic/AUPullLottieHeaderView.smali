.class public Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;
.super Lcom/alipay/mobile/antui/basic/AUPullLoadingView;
.source "AUPullLottieHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;
    }
.end annotation


# static fields
.field private static final REFRESH_END_PROGRESS:F = 0.8f

.field private static final REFRESH_START_PROGRESS:F = 0.17f

.field public static final STYLE_BLUE:Ljava/lang/String; = "_BLUE"

.field public static final STYLE_WHITE:Ljava/lang/String; = "_WHITE"


# instance fields
.field private mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private mCurrentStyle:Ljava/lang/String;

.field private mLoadingTextSource:Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;

.field private mRootView:Landroid/view/View;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mVisibilityRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "_BLUE"

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mVisibilityRect:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "_BLUE"

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mVisibilityRect:Landroid/graphics/Rect;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "_BLUE"

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mVisibilityRect:Landroid/graphics/Rect;

    .line 41
    return-void
.end method


# virtual methods
.method public getOverViewHeight()I
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    .line 145
    .local v1, "v":Landroid/view/View;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 147
    .local v3, "height":I
    move v3, v0

    if-gtz v0, :cond_0

    .line 148
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 151
    :cond_0
    return v3
.end method

.method public getRemainedLoadingDuration()J
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getProgress()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->setClipChildren(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$layout;->au_pullrefresh_lottie_header_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mRootView:Landroid/view/View;

    .line 59
    sget v1, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 60
    sget v1, Lcom/alipay/mobile/antui/R$id;->animation:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->setAntColor(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 53
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onAttachedToWindow()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 87
    return-void
.end method

.method public onFinish()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 140
    return-void
.end method

.method public onLoad()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 95
    return-void
.end method

.method public onOver()V
    .locals 0

    .line 126
    return-void
.end method

.method public onPullto(DB)V
    .locals 4
    .param p1, "pos"    # D
    .param p3, "pullRefreshState"    # B

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 102
    .local v2, "positionPercent":F
    move v2, v0

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    goto :goto_0

    .line 105
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e2e147b    # 0.17f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setProgress(F)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->pauseAnimation()V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mLoadingTextSource:Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitle:Ljava/lang/String;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 122
    .end local v2    # "positionPercent":F
    :cond_3
    return-void
.end method

.method public setAntColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "style"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mCurrentStyle:Ljava/lang/String;

    .line 72
    const-string v0, "_BLUE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SUB_CONTENT:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "_WHITE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    const-string v2, "#9AFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 80
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mAntAnimationView:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 81
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 2
    .param p1, "loadingText"    # Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitle:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setLoadingTextSource(Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;)V
    .locals 0
    .param p1, "source"    # Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;

    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView;->mLoadingTextSource:Lcom/alipay/mobile/antui/basic/AUPullLottieHeaderView$LoadingTextSource;

    .line 172
    return-void
.end method
