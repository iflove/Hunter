.class public Lcom/alipay/mobile/antui/basic/AURoundImageView;
.super Lcom/alipay/mobile/antui/basic/AUMaskImage;
.source "AURoundImageView.java"


# static fields
.field private static final FILTER:Landroid/graphics/DrawFilter;

.field private static final SCALE_TO_FIT:Landroid/graphics/Matrix$ScaleToFit;


# instance fields
.field private mCornerRectF:Landroid/graphics/RectF;

.field private mDiff:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadiusBottomLeft:I

.field private mRadiusBottomRight:I

.field private mRadiusTopLeft:I

.field private mRadiusTopRight:I

.field private mRoundHeight:I

.field private mRoundWidth:I

.field private mShader:Landroid/graphics/BitmapShader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    sput-object v0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->SCALE_TO_FIT:Landroid/graphics/Matrix$ScaleToFit;

    .line 31
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->FILTER:Landroid/graphics/DrawFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUMaskImage;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 42
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    .line 44
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    .line 46
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 47
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 52
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUMaskImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 42
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    .line 44
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    .line 46
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 47
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 52
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUMaskImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 42
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    .line 44
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    .line 46
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 47
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 52
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private createMaskPath(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, p1

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v3, v6

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-virtual {v0, v3, v1, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    int-to-float v1, v1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v6, p2

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v4, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mCornerRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 149
    return-void
.end method

.method private drawOnNote2(Landroid/graphics/Canvas;)Z
    .locals 10
    .param p1, "paramCanvas"    # Landroid/graphics/Canvas;

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    .local v1, "localDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 172
    const-string v0, "AntUI-build"

    const-string v3, "drawOnNote2: localDrawable is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v2

    .line 175
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "localBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mShader:Landroid/graphics/BitmapShader;

    .line 178
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 180
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 181
    .local v5, "height":I
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-direct {v7, v6, v6, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v7

    .line 182
    .local v6, "src":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v8, Lcom/alipay/mobile/antui/basic/AURoundImageView;->SCALE_TO_FIT:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v6, v3, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 183
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mShader:Landroid/graphics/BitmapShader;

    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 184
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 185
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getHeight()I

    move-result v7

    invoke-direct {p0, v2, v7}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->createMaskPath(II)V

    .line 189
    sget-object v2, Lcom/alipay/mobile/antui/basic/AURoundImageView;->FILTER:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 190
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    const/4 v2, 0x0

    return v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->RoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->RoundImageView_roundWidth:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 76
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->RoundImageView_roundHeight:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    .local v0, "density":F
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 82
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 84
    .end local v0    # "density":F
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 85
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    .line 86
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    return-void
.end method


# virtual methods
.method public createMask(II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 124
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 125
    .local v0, "localConfig":Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, "localBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v2, "localCanvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->createMaskPath(II)V

    .line 129
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "paramCanvas"    # Landroid/graphics/Canvas;

    .line 157
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Redmi Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->isCreateMask:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->drawOnNote2(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 162
    :cond_0
    return-void

    .line 165
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->onDraw(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method public setRadiusBottomLeft(I)V
    .locals 1
    .param p1, "radiusBottomLeft"    # I

    .line 115
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    .line 116
    return-void
.end method

.method public setRadiusBottomRight(I)V
    .locals 1
    .param p1, "radiusBottomRight"    # I

    .line 119
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    .line 120
    return-void
.end method

.method public setRadiusTopLeft(I)V
    .locals 1
    .param p1, "radiusTopLeft"    # I

    .line 107
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 108
    return-void
.end method

.method public setRadiusTopRight(I)V
    .locals 1
    .param p1, "radiusTopRight"    # I

    .line 111
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    .line 112
    return-void
.end method

.method public setRoundSize(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 98
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 99
    return-void
.end method

.method public setRoundSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 90
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundWidth:I

    .line 91
    if-ltz p2, :cond_1

    move v0, p2

    :cond_1
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRoundHeight:I

    .line 93
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomLeft:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusBottomRight:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopRight:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mRadiusTopLeft:I

    .line 94
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AURoundImageView;->mDiff:I

    .line 95
    return-void
.end method

.method public setRounded(Z)V
    .locals 0
    .param p1, "hasRound"    # Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setNeedMask(Z)V

    .line 104
    return-void
.end method
