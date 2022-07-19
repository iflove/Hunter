.class final Lcom/alipay/mobile/antui/badge/bubble/a;
.super Landroid/graphics/drawable/Drawable;
.source "AUBubbleDrawable.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->c:I

    .line 25
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->d:I

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->b(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    return-void
.end method

.method private b()V
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v3, v1

    iget v4, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    int-to-float v1, v1

    mul-float v4, v4, v5

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    iget v7, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    sub-float/2addr v3, v7

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v3, v1

    iget v7, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    mul-float v8, v7, v5

    sub-float/2addr v3, v8

    iget v8, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    mul-float v7, v7, v5

    sub-float v7, v8, v7

    int-to-float v1, v1

    invoke-virtual {v0, v3, v7, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    mul-float v7, v3, v5

    sub-float v7, v1, v7

    mul-float v3, v3, v5

    invoke-virtual {v0, v2, v7, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v4, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    mul-float v3, v1, v5

    mul-float v1, v1, v5

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->j:Landroid/graphics/RectF;

    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 121
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->b()V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->c()V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method private c()V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    div-float/2addr v2, v3

    sub-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-double v2, v1

    iget v4, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    float-to-double v5, v4

    const-wide v7, 0x400199999999999aL    # 2.2

    div-double/2addr v5, v7

    sub-double/2addr v2, v5

    double-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, v2, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 130
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->b()V

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->d()V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method private d()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    sub-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 138
    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    return v0
.end method

.method final a(I)V
    .locals 0
    .param p1, "width"    # I

    .line 156
    iput p1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    .line 157
    return-void
.end method

.method final b(I)V
    .locals 3
    .param p1, "height"    # I

    .line 160
    iput p1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->b:I

    .line 162
    iget v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    int-to-float v0, p1

    int-to-float v1, p1

    const v2, 0x40d33333    # 6.6f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p1, 0xe

    sub-int v0, p1, v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    .line 163
    return-void
.end method

.method final c(I)V
    .locals 0
    .param p1, "position"    # I

    .line 166
    iput p1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->c:I

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->invalidateSelf()V

    .line 168
    return-void
.end method

.method final d(I)V
    .locals 1
    .param p1, "color"    # I

    .line 171
    iput p1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->d:I

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/a;->invalidateSelf()V

    .line 174
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 42
    iget v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->e:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->f:F

    .line 45
    iget v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->c:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->a(Landroid/graphics/Canvas;)V

    .line 59
    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->c(Landroid/graphics/Canvas;)V

    .line 54
    return-void

    .line 47
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->a(Landroid/graphics/Canvas;)V

    .line 48
    return-void

    .line 50
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->b(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 152
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 148
    return-void
.end method
