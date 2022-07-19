.class public Lcom/alipay/mobile/antui/picker/AUAddImageView;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUAddImageView.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private midLineWidth:F

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setDensity(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setDensity(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private setDensity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    .line 31
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDensity strokeWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   midLineWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDensity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#cccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->strokeWidth:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->midLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->getWidth()I

    move-result v0

    .line 57
    .local v0, "innerHeight":I
    mul-int/lit8 v1, v0, 0x36

    div-int/lit16 v1, v1, 0xe4

    int-to-float v3, v1

    div-int/lit8 v1, v0, 0x2

    int-to-float v4, v1

    mul-int/lit16 v1, v0, 0xae

    div-int/lit16 v1, v1, 0xe4

    int-to-float v5, v1

    div-int/lit8 v1, v0, 0x2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    div-int/lit8 v1, v0, 0x2

    int-to-float v3, v1

    mul-int/lit8 v1, v0, 0x36

    div-int/lit16 v1, v1, 0xe4

    int-to-float v4, v1

    div-int/lit8 v1, v0, 0x2

    int-to-float v5, v1

    mul-int/lit16 v1, v0, 0xae

    div-int/lit16 v1, v1, 0xe4

    int-to-float v6, v1

    iget-object v7, p0, Lcom/alipay/mobile/antui/picker/AUAddImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method
