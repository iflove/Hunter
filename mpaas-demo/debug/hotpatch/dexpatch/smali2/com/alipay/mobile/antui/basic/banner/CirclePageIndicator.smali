.class public Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/banner/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_CIRCLE_INDICATOR_CENTERED:Z = true

.field public static final DEFAULT_CIRCLE_INDICATOR_FILL_COLOR:I = -0xff5501

.field public static final DEFAULT_CIRCLE_INDICATOR_ORIENTATION:I = 0x0

.field public static final DEFAULT_CIRCLE_INDICATOR_PAGE_COLOR:I = -0x19191a

.field public static final DEFAULT_CIRCLE_INDICATOR_RADIUS:I = 0x3

.field public static final DEFAULT_CIRCLE_INDICATOR_SNAP:Z = true

.field public static final DEFAULT_CIRCLE_INDICATOR_STROKE_COLOR:I = -0x222223

.field public static final DEFAULT_CIRCLE_INDICATOR_STROKE_WIDTH:I


# instance fields
.field private mCentered:Z

.field private mCurrentPage:I

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    sget v0, Lcom/alipay/mobile/antui/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 39
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    return-void

    .line 71
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->dip2px(Landroid/content/Context;D)I

    move-result v4

    int-to-float v4, v4

    .line 72
    .local v4, "defaultStrokeWidth":F
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {p1, v5, v6}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->dip2px(Landroid/content/Context;D)I

    move-result v5

    int-to-float v5, v5

    .line 77
    .local v5, "defaultRadius":F
    sget-object v6, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 80
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_centered:I

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCentered:Z

    .line 82
    sget v8, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_android_orientation:I

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    .line 85
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    sget v7, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_pageColor:I

    const v8, -0x19191a

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_strokeColor:I

    const v7, -0x222223

    .line 90
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 89
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_strokeWidth:I

    .line 93
    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 92
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_fillColor:I

    const v2, -0xff5501

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_radius:I

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    .line 100
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_snap:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnap:Z

    .line 102
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->CirclePageIndicator_android_background:I

    .line 103
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method public static dip2px(Landroid/content/Context;D)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "d"    # D

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v0, "scale":F
    float-to-double v1, v0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 116
    return v1
.end method

.method private measureLong(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .line 400
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 401
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 403
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    nop

    .line 409
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v2

    .line 410
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 414
    .local v3, "result":I
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_2

    .line 415
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 405
    .end local v2    # "count":I
    .end local v3    # "result":I
    :cond_1
    :goto_0
    move v3, v1

    .line 418
    .restart local v3    # "result":I
    :cond_2
    :goto_1
    return v3
.end method

.method private measureShort(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 429
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 430
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 432
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 434
    move v2, v1

    .local v2, "result":I
    goto :goto_0

    .line 437
    .end local v2    # "result":I
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    mul-float v3, v3, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 440
    .restart local v2    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_1

    .line 441
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 444
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 326
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    iget-object v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v2, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    nop

    .line 208
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v2

    const/4 v3, 0x0

    .line 209
    .local v3, "count":I
    move v3, v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 210
    return-void

    .line 213
    :cond_1
    iget v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    if-lt v2, v3, :cond_2

    .line 214
    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setCurrentItem(I)V

    .line 215
    return-void

    .line 222
    :cond_2
    iget v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_3

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getWidth()I

    move-result v2

    .line 224
    .local v2, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    .line 225
    .local v4, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    .line 226
    .local v5, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v6

    .local v6, "shortPaddingBefore":I
    goto :goto_0

    .line 228
    .end local v2    # "longSize":I
    .end local v4    # "longPaddingBefore":I
    .end local v5    # "longPaddingAfter":I
    .end local v6    # "shortPaddingBefore":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getHeight()I

    move-result v2

    .line 229
    .restart local v2    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    .line 230
    .restart local v4    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v5

    .line 231
    .restart local v5    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v6

    .line 234
    .restart local v6    # "shortPaddingBefore":I
    :goto_0
    iget v7, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v8, v8, v7

    .line 235
    .local v8, "threeRadius":F
    int-to-float v9, v6

    add-float/2addr v9, v7

    .line 236
    .local v9, "shortOffset":F
    int-to-float v10, v4

    add-float/2addr v10, v7

    .line 237
    .local v10, "longOffset":F
    iget-boolean v7, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCentered:Z

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v7, :cond_4

    .line 238
    sub-int v7, v2, v4

    sub-int/2addr v7, v5

    int-to-float v7, v7

    div-float/2addr v7, v11

    int-to-float v12, v3

    mul-float v12, v12, v8

    div-float/2addr v12, v11

    sub-float/2addr v7, v12

    add-float/2addr v10, v7

    .line 245
    :cond_4
    iget v7, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    .line 246
    .local v7, "pageFillRadius":F
    iget-object v12, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 247
    iget-object v12, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v11

    sub-float/2addr v7, v12

    .line 251
    :cond_5
    const/4 v11, 0x0

    .local v11, "iLoop":I
    :goto_1
    if-ge v11, v3, :cond_9

    .line 252
    int-to-float v12, v11

    mul-float v12, v12, v8

    add-float/2addr v12, v10

    .line 253
    .local v12, "drawLong":F
    iget v13, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    if-nez v13, :cond_6

    .line 254
    move v13, v12

    .line 255
    .local v13, "dX":F
    move v14, v9

    .local v14, "dY":F
    goto :goto_2

    .line 257
    .end local v13    # "dX":F
    .end local v14    # "dY":F
    :cond_6
    move v13, v9

    .line 258
    .restart local v13    # "dX":F
    move v14, v12

    .line 261
    .restart local v14    # "dY":F
    :goto_2
    iget-object v15, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    if-lez v15, :cond_7

    .line 262
    iget-object v15, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v7, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 266
    :cond_7
    iget v15, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    cmpl-float v16, v7, v15

    if-eqz v16, :cond_8

    .line 267
    move/from16 v16, v2

    .end local v2    # "longSize":I
    .local v16, "longSize":I
    iget-object v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 266
    .end local v16    # "longSize":I
    .restart local v2    # "longSize":I
    :cond_8
    move/from16 v16, v2

    .line 251
    .end local v2    # "longSize":I
    .end local v12    # "drawLong":F
    .restart local v16    # "longSize":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    goto :goto_1

    .end local v13    # "dX":F
    .end local v14    # "dY":F
    .end local v16    # "longSize":I
    .restart local v2    # "longSize":I
    :cond_9
    move/from16 v16, v2

    .line 272
    .end local v2    # "longSize":I
    .end local v11    # "iLoop":I
    .restart local v16    # "longSize":I
    iget-boolean v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnap:Z

    if-eqz v2, :cond_a

    iget v11, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnapPage:I

    goto :goto_4

    :cond_a
    iget v11, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    :goto_4
    int-to-float v11, v11

    mul-float v11, v11, v8

    .line 273
    .local v11, "cx":F
    if-nez v2, :cond_b

    .line 274
    iget v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPageOffset:F

    mul-float v2, v2, v8

    add-float/2addr v11, v2

    .line 276
    :cond_b
    iget v2, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_c

    .line 277
    add-float v2, v10, v11

    .line 278
    .local v2, "dX":F
    move v12, v9

    .local v12, "dY":F
    goto :goto_5

    .line 280
    .end local v2    # "dX":F
    .end local v12    # "dY":F
    :cond_c
    move v2, v9

    .line 281
    .restart local v2    # "dX":F
    add-float v12, v10, v11

    .line 283
    .restart local v12    # "dY":F
    :goto_5
    iget v13, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    iget-object v14, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 383
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->measureLong(I)I

    move-result v0

    .line 385
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->measureShort(I)I

    move-result v1

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    return-void

    .line 387
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->measureShort(I)I

    move-result v0

    .line 388
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->measureLong(I)I

    move-result v1

    .line 387
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 330
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mScrollState:I

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 341
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x0

    .line 342
    .local v1, "realCount":I
    move v1, v0

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 344
    :cond_0
    rem-int v0, p1, v1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    .line 345
    iput p2, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPageOffset:F

    .line 346
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 349
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 352
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 356
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_2

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 358
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x0

    .line 359
    .local v1, "realCount":I
    move v1, v0

    if-nez v0, :cond_1

    .line 360
    return-void

    .line 361
    :cond_1
    rem-int v0, p1, v1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    .line 362
    rem-int v0, p1, v1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnapPage:I

    .line 363
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 366
    .end local v1    # "realCount":I
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 367
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 369
    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 449
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;

    .line 450
    .local v0, "savedState":Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 451
    iget v1, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;->a:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    .line 452
    iget v1, v0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;->a:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnapPage:I

    .line 453
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->requestLayout()V

    .line 454
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 458
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 459
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;-><init>(Landroid/os/Parcelable;)V

    const/4 v2, 0x0

    .line 460
    .local v2, "savedState":Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;
    move-object v2, v1

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    iput v3, v1, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator$a;->a:I

    .line 461
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 287
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCentered:Z

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 126
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 319
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mCurrentPage:I

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 321
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 144
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 373
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 374
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 151
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    :goto_0
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mOrientation:I

    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->requestLayout()V

    .line 156
    return-void
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 135
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 187
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mRadius:F

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 189
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mSnap:Z

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 198
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 171
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 180
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    if-eqz v0, :cond_1

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 303
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->invalidate()V

    .line 305
    return-void

    .line 299
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "initialPosition"    # I

    .line 309
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/basic/banner/CirclePageIndicator;->setCurrentItem(I)V

    .line 311
    return-void
.end method
