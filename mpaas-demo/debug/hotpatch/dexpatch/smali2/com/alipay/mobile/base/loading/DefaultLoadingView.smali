.class public Lcom/alipay/mobile/base/loading/DefaultLoadingView;
.super Lcom/alipay/mobile/framework/loading/LoadingView;
.source "DefaultLoadingView.java"


# static fields
.field public static final ANIMATION_STOP_LOADING_PREPARE:Ljava/lang/String; = "ANIMATION_STOP_LOADING_PREPARE"

.field public static final DATA_UPDATE_APPEARANCE_BG_COLOR:Ljava/lang/String; = "UPDATE_APPEARANCE_BG_COLOR"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_ICON:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_ICON"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_TEXT:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_TEXT"

.field public static final DATA_UPDATE_APPEARANCE_LOADING_TEXT_COLOR:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_TEXT_COLOR"

.field public static final DATA_UPDATE_APPERRANCE_LOADING_BOTTOM_TIP:Ljava/lang/String; = "UPDATE_APPEARANCE_LOADING_BOTTOM_TIP"

.field public static final MSG_UPDATE_APPEARANCE:Ljava/lang/String; = "UPDATE_APPEARANCE"

.field private static final a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/Paint;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field protected mBackButton:Landroid/widget/TextView;

.field protected mBottomTip:Landroid/widget/TextView;

.field protected mLoadingIcon:Landroid/widget/ImageView;

.field protected mLoadingTitle:Landroid/widget/TextView;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a:Ljava/lang/String;

    .line 43
    const/high16 v0, 0x33000000

    sput v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/loading/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->initView()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/base/loading/DefaultLoadingView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView$1;-><init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "id"    # I

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alipay.mobile.core.loading.impl.LoadingPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 13
    .param p1, "animationType"    # Ljava/lang/String;
    .param p2, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 315
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a:Ljava/lang/String;

    const-string v2, "loading view has not added to parent container"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 320
    :cond_0
    const-string v0, "ANIMATION_STOP_LOADING_PREPARE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->g:Z

    .line 323
    sget v1, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .local v1, "offsetTargetY":I
    const/4 v2, 0x0

    move v3, v2

    .line 325
    .local v3, "titleTargetX":F
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->isBackButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .end local v3    # "titleTargetX":F
    .local v4, "titleTargetX":F
    goto :goto_0

    .line 328
    .end local v4    # "titleTargetX":F
    .restart local v3    # "titleTargetX":F
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getTitleLeftMargin()F

    move-result v4

    .line 330
    .end local v3    # "titleTargetX":F
    .restart local v4    # "titleTargetX":F
    :goto_0
    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    int-to-float v3, v3

    .line 332
    .local v3, "titleTargetY":F
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x0

    .line 333
    .local v7, "prepareStopLoadingAnimator":Landroid/animation/AnimatorSet;
    move-object v7, v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 334
    if-eqz p2, :cond_2

    .line 335
    invoke-virtual {v7, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v8, v5, [F

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v9

    aput v9, v8, v0

    int-to-float v9, v1

    const/4 v10, 0x1

    aput v9, v8, v10

    const-string/jumbo v9, "y"

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v8, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v11, v5, [F

    .line 338
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleX()F

    move-result v12

    aput v12, v11, v0

    aput v2, v11, v10

    const-string/jumbo v12, "scaleX"

    invoke-static {v8, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v8, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    new-array v11, v5, [F

    .line 339
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleY()F

    move-result v12

    aput v12, v11, v0

    aput v2, v11, v10

    const-string/jumbo v2, "scaleY"

    invoke-static {v8, v2, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    new-array v8, v5, [F

    .line 340
    invoke-virtual {v6}, Landroid/widget/TextView;->getX()F

    move-result v11

    aput v11, v8, v0

    aput v4, v8, v10

    const-string/jumbo v11, "x"

    invoke-static {v6, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    new-array v5, v5, [F

    .line 341
    invoke-virtual {v6}, Landroid/widget/TextView;->getY()F

    move-result v8

    aput v8, v5, v0

    aput v3, v5, v10

    invoke-static {v6, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 343
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 344
    .end local v1    # "offsetTargetY":I
    .end local v3    # "titleTargetY":F
    .end local v4    # "titleTargetX":F
    .end local v7    # "prepareStopLoadingAnimator":Landroid/animation/AnimatorSet;
    return-void

    .line 345
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/loading/LoadingView;->performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    .line 39
    iget v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/base/loading/DefaultLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    return p1
.end method

.method static synthetic access$008(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    .line 39
    iget v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/base/loading/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static b(I)I
    .locals 1
    .param p0, "size"    # I

    .line 252
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 185
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 186
    iget-boolean v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->g:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->j:I

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->i:I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->h:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->m:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    iget v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->j:I

    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->l:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->j:I

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected getTitleLeftMargin()F
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 9

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 98
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/api/R$drawable;->default_commonbiz_loading_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 101
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$color;->h5_web_loading_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 107
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 109
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 111
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    .line 112
    iget-object v5, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "h5iconfont"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "h5titlebar.ttf"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    const-string/jumbo v5, "\ue608"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    const v4, -0xef7117

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 119
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    .line 120
    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/base/commonbiz/api/R$color;->h5_web_loading_bottom_tip_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->addView(Landroid/view/View;)V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$color;->h5_web_loading_dot_dark_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->h:I

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$color;->h5_web_loading_dot_light_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->i:I

    .line 129
    sget v1, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_dot_size:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->m:I

    .line 130
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->d:Landroid/graphics/Paint;

    .line 131
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    sget v1, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_dot_margin:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->l:I

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$color;->h5_web_loading_default_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->setBackgroundColor(I)V

    .line 135
    return-void
.end method

.method protected isBackButtonVisible()Z
    .locals 1

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;
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

    .line 269
    const-string v0, "UPDATE_APPEARANCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    const-string v0, "UPDATE_APPEARANCE_BG_COLOR"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 272
    .local v2, "bgColor":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->setBackgroundColor(I)V

    .line 276
    :cond_0
    const-string v0, "UPDATE_APPEARANCE_LOADING_ICON"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 277
    .local v3, "loadingIcon":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    const-string v0, "UPDATE_APPEARANCE_LOADING_TEXT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    .line 282
    .local v4, "text":Ljava/lang/String;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_2
    const-string v0, "UPDATE_APPEARANCE_LOADING_TEXT_COLOR"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    .line 287
    .local v5, "textColor":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    :cond_3
    const-string v0, "UPDATE_APPEARANCE_LOADING_BOTTOM_TIP"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    .local v1, "bottomTip":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .end local v1    # "bottomTip":Ljava/lang/String;
    .end local v2    # "bgColor":Ljava/lang/String;
    .end local v3    # "loadingIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textColor":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    const/4 v0, 0x0

    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 161
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 164
    .end local v0    # "offsetX":I
    .local v2, "offsetX":I
    sget v0, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v0

    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_icon_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 165
    .end local v1    # "offsetY":I
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 165
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 169
    .end local v2    # "offsetX":I
    .local v1, "offsetX":I
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_title_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    .end local v0    # "offsetY":I
    .local v2, "offsetY":I
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 172
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->m:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->l:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->j:I

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_dot_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->k:I

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 179
    .end local v1    # "offsetX":I
    .local v0, "offsetX":I
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->getMeasuredHeight()I

    move-result v1

    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_bottom_tip_margin_bottom:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 180
    .end local v2    # "offsetY":I
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 181
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 139
    sget v0, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_icon_size:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v0

    .line 140
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v2

    invoke-static {v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 142
    sget v1, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_title_height:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    .line 143
    .local v1, "height":I
    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_title_width:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v2

    .line 144
    .local v2, "width":I
    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 146
    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_bottom_tip_width:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v2

    .line 147
    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_bottom_tip_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    .line 148
    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v5

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->measure(II)V

    .line 150
    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_back_button_width:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v2

    .line 151
    sget v3, Lcom/alipay/mobile/base/commonbiz/api/R$dimen;->h5_loading_titlebar_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(I)I

    move-result v1

    .line 152
    iget-object v3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v4

    invoke-static {v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->b(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->setMeasuredDimension(II)V

    .line 155
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a()V

    .line 259
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->startLoadingAnimation()V

    .line 260
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 264
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->stopLoadingAnimation()V

    .line 265
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 199
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "animationType"    # Ljava/lang/String;
    .param p2, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 300
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;-><init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 7

    .line 204
    iget-boolean v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->g:Z

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->f:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;-><init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->f:Ljava/util/TimerTask;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->e:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 227
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->e:Ljava/util/Timer;

    .line 228
    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->f:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a:Ljava/lang/String;

    const-string/jumbo v2, "printMonitor error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 1

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->g:Z

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->invalidate()V

    .line 245
    return-void
.end method
