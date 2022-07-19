.class public Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    }
.end annotation


# static fields
.field public static final SHAPE_CIRCLE:I = 0x2

.field public static final SHAPE_ROUND:I = 0x1


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(I[IIIIII)V
    .locals 5
    .param p1, "shape"    # I
    .param p2, "bgColor"    # [I
    .param p3, "shapeRadius"    # I
    .param p4, "shadowColor"    # I
    .param p5, "shadowRadius"    # I
    .param p6, "offsetX"    # I
    .param p7, "offsetY"    # I

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->d:I

    .line 35
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->h:[I

    .line 36
    iput p3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->e:I

    .line 37
    iput p5, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->c:I

    .line 38
    iput p6, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->f:I

    .line 39
    iput p7, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->g:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    invoke-virtual {v0, v2, v3, v4, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->b:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(I[IIIIIIB)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 18
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;-><init>(I[IIIIII)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;IIIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shapeRadius"    # I
    .param p2, "shadowColor"    # I
    .param p3, "shadowRadius"    # I
    .param p4, "offsetX"    # I
    .param p5, "offsetY"    # I

    .line 99
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShapeRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetX(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetY(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->builder()Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;

    move-result-object v0

    .line 106
    .local v0, "drawable":Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;IIIIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bgColor"    # I
    .param p2, "shapeRadius"    # I
    .param p3, "shadowColor"    # I
    .param p4, "shadowRadius"    # I
    .param p5, "offsetX"    # I
    .param p6, "offsetY"    # I

    .line 111
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setBgColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShapeRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetX(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetY(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->builder()Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;

    move-result-object v0

    .line 119
    .local v0, "drawable":Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;IIIIIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shape"    # I
    .param p2, "bgColor"    # I
    .param p3, "shapeRadius"    # I
    .param p4, "shadowColor"    # I
    .param p5, "shadowRadius"    # I
    .param p6, "offsetX"    # I
    .param p7, "offsetY"    # I

    .line 124
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShape(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setBgColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShapeRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetX(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetY(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->builder()Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;

    move-result-object v0

    .line 133
    .local v0, "drawable":Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;[IIIIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bgColor"    # [I
    .param p2, "shapeRadius"    # I
    .param p3, "shadowColor"    # I
    .param p4, "shadowRadius"    # I
    .param p5, "offsetX"    # I
    .param p6, "offsetY"    # I

    .line 138
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setBgColor([I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShapeRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setShadowRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetX(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->setOffsetY(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->builder()Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;

    move-result-object v0

    .line 146
    .local v0, "drawable":Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->h:[I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 61
    array-length v3, v0

    if-ne v3, v1, :cond_0

    .line 62
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->b:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v5, v3, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    .line 65
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v7, v3, v2

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->h:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 64
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->d:I

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 90
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    return-void
.end method

.method public setBounds(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->c:I

    add-int v2, p1, v1

    iget v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-int v4, p2, v1

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-int v6, p3, v1

    sub-int/2addr v6, v3

    int-to-float v3, v6

    sub-int v1, p4, v1

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->i:Landroid/graphics/RectF;

    .line 56
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 86
    return-void
.end method
