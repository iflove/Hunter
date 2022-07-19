.class public Lcom/alipay/mobile/antui/basic/AUPullLoadingView;
.super Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;
.source "AUPullLoadingView.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCloseAnimation:Landroid/view/animation/Animation;

.field private mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mLoadingView:Landroid/view/View;

.field private mNormalView:Landroid/view/View;

.field private mOpenAnimation:Landroid/view/animation/Animation;

.field private mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getLoadingLogo()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 192
    sget v0, Lcom/alipay/mobile/antui/R$id;->pull_refresh_logo_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getLoadingShadowView()Landroid/view/View;
    .locals 1

    .line 182
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_shadow_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNormalLogo()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 197
    sget v0, Lcom/alipay/mobile/antui/R$id;->pull_refresh_logo_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getNormalShadowView()Landroid/view/View;
    .locals 1

    .line 187
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_shadow_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNormalView()Landroid/view/View;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mNormalView:Landroid/view/View;

    return-object v0
.end method

.method public getOverViewHeight()I
    .locals 4

    .line 170
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    .local v1, "v":Landroid/view/View;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 173
    .local v3, "height":I
    move v3, v0

    if-gtz v0, :cond_0

    .line 174
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 177
    :cond_0
    return v3
.end method

.method public init()V
    .locals 11

    .line 68
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 96
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mOpenAnimation:Landroid/view/animation/Animation;

    .line 98
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mOpenAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mOpenAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mOpenAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 102
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 104
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    return-void
.end method

.method protected initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 53
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUPullLoadingView:[I

    sget v1, Lcom/alipay/mobile/antui/R$style;->frameworkPullrefreshOverview:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUPullLoadingView_frameworkPullrefreshIndicatorUpDrawable:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUPullLoadingView_frameworkPullrefreshIndicatorDownDrawable:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUPullLoadingView_frameworkPullrefreshProgressDrawable:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->clearAnimation()V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mNormalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->onFinishInflate()V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 117
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mNormalView:Landroid/view/View;

    .line 118
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingView:Landroid/view/View;

    .line 119
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    .line 120
    sget v0, Lcom/alipay/mobile/antui/R$id;->framework_pullrefresh_indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 121
    sget v0, Lcom/alipay/mobile/antui/R$id;->pullrefresh_indicator_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 122
    sget v0, Lcom/alipay/mobile/antui/R$id;->pullrefresh_loading_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->big_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->rotate_process_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_3
    return-void

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "must set id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoad()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mNormalView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->clearAnimation()V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mOpenAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void
.end method

.method public onOver()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->clearAnimation()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    return-void
.end method

.method public setIndicatorDownDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mIndicatorDownDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 3
    .param p1, "indicatorText"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x36

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 238
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 245
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x48

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 246
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 250
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public setIndicatorUpDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "mIndicatorUpDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 3
    .param p1, "loadingText"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 222
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x36

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 223
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mLoadingText:Lcom/alipay/mobile/antui/basic/AUTextView;

    if-eqz v0, :cond_1

    .line 226
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x48

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 229
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    return-void
.end method
