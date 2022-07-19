.class public Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZoomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$a;,
        Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE_DURATION:I = 0x12c

.field private static final DEFAULT_SCALE_FACTOR:F = 1.0f

.field private static final INVALID_TOUCH_POSITION:F = -1.0f

.field private static final MAX_SCALE_FACTOR:F = 5.0f

.field private static final MIN_SCALE_FACTOR:F = 0.5f

.field private static final PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final PROPERTY_TRANX:Ljava/lang/String; = "tranX"

.field private static final PROPERTY_TRANY:Ljava/lang/String; = "tranY"


# instance fields
.field private isEnableScale:Z

.field private isScaling:Z

.field private mActivePointerId:I

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMaxTranX:F

.field private mMaxTranY:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleCenterX:F

.field private mScaleCenterY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mTranX:F

.field private mTranY:F

.field private mViewHeight:F

.field private mViewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 p1, -0x1

    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 p1, -0x1

    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 p1, -0x1

    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F

    return p0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    return p0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    return p0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;FF)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->zoom(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    return p0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;FF)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setTranslateXY(FF)V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranX:F

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewWidth:F

    return p0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranY:F

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewHeight:F

    return p0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F

    return p0
.end method

.method static synthetic access$902(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F

    return p1
.end method

.method private correctTranslateXY()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    iget v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->correctTranslateXY(FF)[F

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    .line 198
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    .line 199
    return-void
.end method

.method private correctTranslateXY(FF)[F
    .locals 6

    .line 202
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 203
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    .line 207
    const/4 p1, 0x0

    goto :goto_0

    .line 208
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranX:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    .line 209
    move p1, v4

    .line 212
    :cond_2
    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_3

    .line 213
    const/4 p2, 0x0

    goto :goto_1

    .line 214
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranY:F

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    .line 215
    move p2, v0

    .line 217
    :cond_4
    :goto_1
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 67
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 68
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$a;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$a;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;B)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    .line 72
    return-void
.end method

.method private newZoomAnimation()V
    .locals 2

    .line 250
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 251
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$1;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    return-void
.end method

.method private setTranslateXY(FF)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    .line 191
    iput p2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    .line 192
    return-void
.end method

.method private zoom(FF)V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->newZoomAnimation()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    return-void

    .line 230
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewWidth:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranX:F

    .line 231
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewHeight:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranY:F

    .line 233
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    .line 234
    iget v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    .line 235
    sub-float v2, p2, p1

    iget v3, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F

    mul-float v3, v3, v2

    sub-float v3, v0, v3

    .line 236
    iget v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F

    mul-float v2, v2, v4

    sub-float v2, v1, v2

    .line 237
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->correctTranslateXY(FF)[F

    move-result-object v2

    .line 238
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 239
    const/4 v5, 0x1

    aget v2, v2, v5

    .line 241
    const/4 v6, 0x2

    new-array v7, v6, [F

    aput p1, v7, v3

    aput p2, v7, v5

    const-string/jumbo p1, "scale"

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 242
    new-array p2, v6, [F

    aput v0, p2, v3

    aput v4, p2, v5

    const-string/jumbo v0, "tranX"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 243
    new-array v0, v6, [F

    aput v1, v0, v3

    aput v2, v0, v5

    const-string/jumbo v1, "tranY"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 245
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 247
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    iget v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 185
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    return-void
.end method

.method public isEnableScale()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewWidth:F

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewHeight:F

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 84
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 89
    iget-boolean v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 96
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 98
    if-eqz v1, :cond_9

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v1, v3, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v4, 0x6

    if-eq v1, v4, :cond_3

    goto/16 :goto_3

    .line 160
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 161
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 162
    iget v5, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    if-ne v4, v5, :cond_a

    .line 165
    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 166
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    .line 168
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    goto/16 :goto_3

    .line 113
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    iget v5, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 115
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 116
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 118
    iget-boolean v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_6

    .line 121
    iget v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    sub-float v7, v6, v7

    .line 122
    iget v8, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    sub-float v8, v5, v8

    .line 124
    iget v9, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    add-float/2addr v9, v7

    iget v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    add-float/2addr v7, v8

    invoke-direct {p0, v9, v7}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setTranslateXY(FF)V

    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->correctTranslateXY()V

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->invalidate()V

    .line 130
    iput v6, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    .line 131
    iput v5, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_3

    .line 132
    :catch_0
    move-exception v5

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 136
    iget-boolean v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_7

    .line 139
    sub-float v1, v5, v1

    .line 140
    iget v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    sub-float v4, v6, v4

    .line 142
    iget v7, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F

    add-float/2addr v7, v1

    iget v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F

    add-float/2addr v1, v4

    invoke-direct {p0, v7, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setTranslateXY(FF)V

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->correctTranslateXY()V

    .line 146
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->invalidate()V

    .line 148
    iput v5, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    .line 149
    iput v6, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    .line 151
    goto :goto_3

    .line 155
    :cond_8
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    .line 156
    iput v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    .line 157
    iput v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    .line 158
    goto :goto_3

    .line 100
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 104
    iput v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchX:F

    .line 105
    iput v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mLastTouchY:F

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mActivePointerId:I

    .line 108
    nop

    .line 174
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    return v2

    :cond_c
    :goto_4
    return v3
.end method

.method public setEnableScale(Z)V
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    if-ne v0, p1, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isEnableScale:Z

    .line 369
    if-nez p1, :cond_1

    iget p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->zoom(FF)V

    .line 372
    :cond_1
    return-void
.end method
