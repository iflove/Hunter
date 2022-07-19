.class public Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "H5BorderDrawable.java"


# static fields
.field private static final sSolidEffect:Landroid/graphics/PathEffect;


# instance fields
.field private backgroundColor:I

.field private borderColor:I

.field private borderRadius:F

.field private borderStyle:Ljava/lang/String;

.field private borderWidth:F

.field private dashedEffect:Landroid/graphics/PathEffect;

.field private dottedEffect:Landroid/graphics/PathEffect;

.field private paint:Landroid/graphics/Paint;

.field private tmpRound:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->sSolidEffect:Landroid/graphics/PathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->backgroundColor:I

    .line 26
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderColor:I

    .line 31
    const-string v0, "solid"

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderStyle:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dashedEffect:Landroid/graphics/PathEffect;

    .line 33
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dottedEffect:Landroid/graphics/PathEffect;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBackground(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 66
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 68
    .local v1, "height":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    div-float v6, v3, v4

    int-to-float v7, v0

    div-float v8, v3, v4

    sub-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v3, v4

    sub-float/2addr v8, v3

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderRadius:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    :goto_0
    return-void
.end method

.method public drawBorder(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 84
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 85
    .local v2, "height":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    div-float v7, v4, v5

    int-to-float v8, v0

    div-float v9, v4, v5

    sub-float/2addr v8, v9

    int-to-float v9, v2

    div-float/2addr v4, v5

    sub-float/2addr v9, v4

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderStyle:Ljava/lang/String;

    const-string v4, "dotted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dottedEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderStyle:Ljava/lang/String;

    const-string v4, "dashed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dashedEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->sSolidEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 96
    :goto_0
    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderRadius:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->tmpRound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 102
    .end local v0    # "width":I
    .end local v2    # "height":I
    :cond_3
    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 107
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 40
    iput p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->backgroundColor:I

    .line 41
    return-void
.end method

.method public setBorder(FI)V
    .locals 6
    .param p1, "borderWidth"    # F
    .param p2, "borderColor"    # I

    .line 44
    iput p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderWidth:F

    .line 45
    iput p2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderColor:I

    .line 46
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v4, p1, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    mul-float v3, v3, p1

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dashedEffect:Landroid/graphics/PathEffect;

    .line 47
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    aput p1, v1, v5

    aput p1, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->dottedEffect:Landroid/graphics/PathEffect;

    .line 48
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 0
    .param p1, "borderRadius"    # F

    .line 55
    iput p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderRadius:F

    .line 56
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "borderStyle"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->borderStyle:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 112
    return-void
.end method
