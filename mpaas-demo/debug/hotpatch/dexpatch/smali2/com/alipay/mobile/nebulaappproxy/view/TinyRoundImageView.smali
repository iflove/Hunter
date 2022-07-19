.class public Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;
.super Lcom/alipay/mobile/antui/basic/AUImageView;
.source "TinyRoundImageView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/BitmapShader;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->j:I

    .line 46
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->k:I

    .line 62
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    .line 63
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->m:I

    .line 64
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->j:I

    .line 65
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->k:I

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a()V

    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    return-void
.end method

.method private a()V
    .locals 1

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b()V

    .line 76
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->e:Landroid/graphics/Path;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->h:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->d:Landroid/graphics/Matrix;

    .line 83
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 154
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 156
    .local v1, "dy":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 157
    .local v2, "bwidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 159
    .local v3, "bheight":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    .line 160
    .local v4, "vwidth":I
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    .line 162
    .local v5, "vheight":I
    if-ltz v2, :cond_0

    if-ne v4, v2, :cond_1

    :cond_0
    if-ltz v3, :cond_2

    if-ne v5, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 164
    :goto_1
    if-eqz v6, :cond_3

    .line 165
    return-void

    .line 168
    :cond_3
    mul-int v6, v2, v5

    mul-int v7, v4, v3

    const/high16 v8, 0x3f000000    # 0.5f

    if-le v6, v7, :cond_4

    .line 169
    int-to-float v6, v5

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 170
    .local v6, "scale":F
    int-to-float v7, v4

    int-to-float v9, v2

    mul-float v9, v9, v6

    sub-float/2addr v7, v9

    mul-float v0, v7, v8

    goto :goto_2

    .line 172
    .end local v6    # "scale":F
    :cond_4
    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 173
    .restart local v6    # "scale":F
    int-to-float v7, v5

    int-to-float v9, v3

    mul-float v9, v9, v6

    sub-float/2addr v7, v9

    mul-float v1, v7, v8

    .line 176
    :goto_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 177
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->d:Landroid/graphics/Matrix;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 264
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 269
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 272
    return-void
.end method

.method private a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c:Landroid/graphics/BitmapShader;

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v0, "source":Landroid/graphics/Bitmap;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c:Landroid/graphics/BitmapShader;

    .line 137
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c:Landroid/graphics/BitmapShader;

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b:Landroid/graphics/Paint;

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    return-void
.end method

.method private c()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 122
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->m:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 123
    .local v0, "insetWidth":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->h:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    int-to-float v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 193
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    if-gtz v0, :cond_2

    .line 194
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    return-void

    .line 198
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->i:J

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v3, v6

    .line 200
    .local v3, "change":Z
    move v3, v2

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->i:J

    .line 204
    :cond_4
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "SimpleRoundImageView"

    if-eqz v2, :cond_6

    .line 206
    if-eqz v3, :cond_5

    .line 207
    :try_start_0
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    int-to-float v5, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_4

    .line 216
    :cond_6
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_8

    .line 218
    if-eqz v3, :cond_7

    .line 219
    :try_start_1
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    .line 220
    .local v2, "color":I
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 221
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    .end local v2    # "color":I
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    int-to-float v5, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    goto :goto_4

    .line 232
    :cond_8
    const/4 v0, 0x0

    .line 234
    .local v0, "ex":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 235
    .local v2, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 238
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 239
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 241
    :cond_9
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 245
    goto :goto_3

    .line 242
    :catchall_2
    move-exception v5

    .line 243
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    const/4 v0, 0x1

    .line 246
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 248
    if-eqz v0, :cond_a

    .line 249
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 253
    .end local v0    # "ex":Z
    .end local v2    # "saveCount":I
    :cond_a
    :goto_4
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->m:I

    if-lez v0, :cond_b

    .line 255
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    int-to-float v5, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    return-void

    .line 256
    :catchall_3
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_b
    return-void

    .line 190
    .end local v3    # "change":Z
    :cond_c
    :goto_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 110
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AUImageView;->onLayout(ZIIII)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c()V

    .line 114
    :cond_1
    return-void
.end method

.method public setDefaultImageColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 102
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->j:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->j:I

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->postInvalidate()V

    .line 106
    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 94
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->l:I

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->c()V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->postInvalidate()V

    .line 99
    :cond_0
    return-void
.end method
