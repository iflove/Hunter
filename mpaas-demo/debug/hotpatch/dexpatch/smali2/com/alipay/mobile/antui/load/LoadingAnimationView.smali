.class public Lcom/alipay/mobile/antui/load/LoadingAnimationView;
.super Landroid/view/View;
.source "LoadingAnimationView.java"


# static fields
.field public static final MODE_REFRESH:I = 0x1

.field public static final MODE_SILENCE:I


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private firstLoading:Z

.field private innerCircleBounds:Landroid/graphics/RectF;

.field private listener:Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;

.field private mMaxProgress:I

.field private mProgress:I

.field private mode:I

.field private paused:Z

.field private processPaint:Landroid/graphics/Paint;

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    .line 23
    const/16 v0, 0x168

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mMaxProgress:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    .line 23
    const/16 v0, 0x168

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mMaxProgress:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    .line 23
    const/16 v0, 0x168

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mMaxProgress:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR22:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    return-void
.end method

.method private setupBounds()V
    .locals 6

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->strokeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    .line 119
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 84
    iget v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mode:I

    if-nez v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v8, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/high16 v10, 0x42480000    # 50.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 87
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->circlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    .line 91
    .local v0, "processAngle":F
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->innerCircleBounds:Landroid/graphics/RectF;

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v3, v0, v1

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->processPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    iget v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    iget v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mMaxProgress:I

    if-lt v1, v2, :cond_1

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 95
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->listener:Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;

    if-eqz v2, :cond_2

    .line 96
    invoke-interface {v2}, Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;->appeared()V

    .line 97
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    goto :goto_0

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 102
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    if-nez v1, :cond_3

    .line 103
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->postInvalidateDelayed(J)V

    .line 105
    .end local v0    # "processAngle":F
    :cond_3
    return-void

    .line 106
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setupBounds()V

    .line 114
    return-void
.end method

.method public pause()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    .line 62
    return-void
.end method

.method public setLoadingAppearedListener(Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->listener:Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;

    .line 48
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 51
    iput p1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mode:I

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 53
    iput v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->mProgress:I

    .line 54
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->firstLoading:Z

    .line 56
    :cond_0
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->paused:Z

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->invalidate()V

    .line 58
    return-void
.end method
