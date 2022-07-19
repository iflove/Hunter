.class public Lcom/mpaas/nebula/view/DefaultLoadingView;
.super Lcom/alipay/mobile/framework/loading/LoadingView;
.source "DefaultLoadingView.java"


# static fields
.field public static final ANIMATION_STOP_LOADING_PREPARE:Ljava/lang/String; = "ANIMATION_STOP_LOADING_PREPARE"

.field public static final DATA_UPDATE_APPEARANCE_BG_COLOR:Ljava/lang/String; = "UPDATE_APPEARANCE_BG_COLOR"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_ICON:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_ICON"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_TEXT:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_TEXT"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_TEXT_COLOR:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_TEXT_COLOR"

.field public static final MSG_UPDATE_APPEARANCE:Ljava/lang/String; = "UPDATE_APPEARANCE"

.field private static final TAG:Ljava/lang/String;

.field private static defaultAlphaColor:I


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mDarkColor:I

.field private mDarkDotX:I

.field private mDarkDotY:I

.field private mDarkGap:I

.field private mDivider:Landroid/view/View;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotSize:I

.field private mLightColor:I

.field private mLightDotIndex:I

.field private mLoadingIcon:Landroid/widget/ImageView;

.field private mLoadingTitle:Landroid/widget/TextView;

.field private mPlayingStartAnim:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/mpaas/nebula/view/DefaultLoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mpaas/nebula/view/DefaultLoadingView;->TAG:Ljava/lang/String;

    .line 39
    const/high16 v0, 0x33000000

    sput v0, Lcom/mpaas/nebula/view/DefaultLoadingView;->defaultAlphaColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/loading/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    .line 78
    iput-object p1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->initView()V

    .line 82
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mpaas/nebula/view/DefaultLoadingView$1;

    invoke-direct {v1, p0}, Lcom/mpaas/nebula/view/DefaultLoadingView$1;-><init>(Lcom/mpaas/nebula/view/DefaultLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/mpaas/nebula/view/DefaultLoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;

    .line 35
    iget v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/mpaas/nebula/view/DefaultLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/mpaas/nebula/view/DefaultLoadingView;)I
    .locals 2
    .param p0, "x0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;

    .line 35
    iget v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/mpaas/nebula/view/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->doPerformAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doPerformAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 13
    .param p1, "animationType"    # Ljava/lang/String;
    .param p2, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 296
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/mpaas/nebula/view/DefaultLoadingView;->TAG:Ljava/lang/String;

    const-string v2, "loading view has not added to parent container"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 301
    :cond_0
    const-string v0, "ANIMATION_STOP_LOADING_PREPARE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mPlayingStartAnim:Z

    .line 304
    sget v1, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 305
    .local v1, "offsetTargetY":I
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_title_margin_left:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 306
    .local v2, "titleTargetX":F
    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v3

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 308
    .local v3, "titleTargetY":F
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    .local v5, "prepareStopLoadingAnimator":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 310
    if-eqz p2, :cond_1

    .line 311
    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    :cond_1
    iget-object v6, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v7, v4, [F

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v8

    aput v8, v7, v0

    int-to-float v8, v1

    const/4 v9, 0x1

    aput v8, v7, v9

    const-string v8, "y"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v10, v4, [F

    .line 314
    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleX()F

    move-result v11

    aput v11, v10, v0

    const/4 v11, 0x0

    aput v11, v10, v9

    const-string v12, "scaleX"

    invoke-static {v7, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v10, v4, [F

    .line 315
    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleY()F

    move-result v12

    aput v12, v10, v0

    aput v11, v10, v9

    const-string v11, "scaleY"

    invoke-static {v7, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    new-array v10, v4, [F

    .line 316
    invoke-virtual {v7}, Landroid/widget/TextView;->getX()F

    move-result v11

    aput v11, v10, v0

    aput v2, v10, v9

    const-string v11, "x"

    invoke-static {v7, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    new-array v4, v4, [F

    .line 317
    invoke-virtual {v7}, Landroid/widget/TextView;->getY()F

    move-result v10

    aput v10, v4, v0

    aput v3, v4, v9

    invoke-static {v7, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 319
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 320
    .end local v1    # "offsetTargetY":I
    .end local v2    # "titleTargetX":F
    .end local v3    # "titleTargetY":F
    .end local v5    # "prepareStopLoadingAnimator":Landroid/animation/AnimatorSet;
    goto :goto_0

    .line 321
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/loading/LoadingView;->performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    :goto_0
    return-void
.end method

.method private getDimen(I)I
    .locals 1
    .param p1, "id"    # I

    .line 234
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private makeMeasureSpec(I)I
    .locals 1
    .param p1, "size"    # I

    .line 238
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private updateStatusBar()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alipay.mobile.core.loading.impl.LoadingPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 172
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget-boolean v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mPlayingStartAnim:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkGap:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotX:I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightColor:I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkColor:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 179
    iget v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotX:I

    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkGap:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotX:I

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 3

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 92
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mpaas/nebula/adapter/R$drawable;->default_nebulaadapter_loading_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 95
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mpaas/nebula/adapter/R$color;->h5_web_loading_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 98
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 100
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 101
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    .line 106
    sget v2, Lcom/mpaas/nebula/adapter/R$drawable;->h5_title_bar_back_btn_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 107
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    sget v2, Lcom/mpaas/nebula/adapter/R$drawable;->h5_title_bar_back_btn_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 108
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    .line 110
    const v2, -0x262627

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mpaas/nebula/adapter/R$color;->h5_web_loading_dot_dark_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkColor:I

    .line 115
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mpaas/nebula/adapter/R$color;->h5_web_loading_dot_light_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightColor:I

    .line 116
    sget v1, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_dot_size:I

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotSize:I

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    sget v1, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_dot_margin:I

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    iput v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkGap:I

    .line 121
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mpaas/nebula/adapter/R$color;->h5_web_loading_default_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->setBackgroundColor(I)V

    .line 122
    return-void
.end method

.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "UPDATE_APPEARANCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const-string v0, "UPDATE_APPEARANCE_BG_COLOR"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "bgColor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->setBackgroundColor(I)V

    .line 262
    :cond_0
    const-string v1, "UPDATE_APPEARANCE_LOADING_ICON"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 263
    .local v1, "loadingIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_1
    const-string v2, "UPDATE_APPEARANCE_LOADING_TEXT"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 269
    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_2
    const-string v3, "UPDATE_APPEARANCE_LOADING_TEXT_COLOR"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "textColor":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v1    # "loadingIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "textColor":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 148
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 150
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    .line 151
    sget v2, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v2

    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 152
    .end local v1    # "offsetY":I
    .local v2, "offsetY":I
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 154
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 155
    .end local v0    # "offsetX":I
    .local v1, "offsetX":I
    sget v0, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v0

    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_icon_margin_top:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 156
    .end local v2    # "offsetY":I
    .local v0, "offsetY":I
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 156
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 159
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 160
    .end local v1    # "offsetX":I
    .local v2, "offsetX":I
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_title_margin_top:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 162
    .end local v0    # "offsetY":I
    .local v1, "offsetY":I
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 163
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 162
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 165
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDotSize:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkGap:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotX:I

    .line 166
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_dot_margin_top:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDarkDotY:I

    .line 168
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 126
    sget v0, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_icon_size:I

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v0

    .line 127
    .local v0, "size":I
    iget-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 129
    sget v1, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_title_height:I

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    .line 130
    .local v1, "height":I
    sget v2, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_title_width:I

    invoke-direct {p0, v2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v2

    .line 131
    .local v2, "width":I
    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 133
    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_back_button_width:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v2

    .line 134
    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    .line 135
    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mBackButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 137
    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_divider_width:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v2

    .line 138
    sget v3, Lcom/mpaas/nebula/adapter/R$dimen;->h5_loading_divider_height:I

    invoke-direct {p0, v3}, Lcom/mpaas/nebula/view/DefaultLoadingView;->getDimen(I)I

    move-result v1

    .line 139
    iget-object v3, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mDivider:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->setMeasuredDimension(II)V

    .line 142
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->updateStatusBar()V

    .line 245
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->startLoadingAnimation()V

    .line 246
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->stopLoadingAnimation()V

    .line 251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 186
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "animationType"    # Ljava/lang/String;
    .param p2, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 282
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/mpaas/nebula/view/DefaultLoadingView;->doPerformAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Lcom/mpaas/nebula/view/DefaultLoadingView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mpaas/nebula/view/DefaultLoadingView$3;-><init>(Lcom/mpaas/nebula/view/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->post(Ljava/lang/Runnable;)Z

    .line 292
    :goto_0
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 7

    .line 191
    iget-boolean v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mPlayingStartAnim:Z

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mPlayingStartAnim:Z

    .line 194
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lcom/mpaas/nebula/view/DefaultLoadingView$2;

    invoke-direct {v0, p0}, Lcom/mpaas/nebula/view/DefaultLoadingView$2;-><init>(Lcom/mpaas/nebula/view/DefaultLoadingView;)V

    iput-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimerTask:Ljava/util/TimerTask;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 214
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimer:Ljava/util/Timer;

    .line 215
    iget-object v2, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 219
    :cond_2
    :goto_0
    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mPlayingStartAnim:Z

    .line 224
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->invalidate()V

    .line 231
    return-void
.end method
