.class public abstract Lcom/alipay/mobile/antui/basic/AUMaskImage;
.super Lcom/alipay/mobile/antui/basic/AUImageView;
.source "AUMaskImage.java"


# static fields
.field private static final MASK_XFERMODE:Landroid/graphics/Xfermode;

.field private static final defaut_matrix:Landroid/graphics/Matrix;

.field private static drawFilter:Landroid/graphics/PaintFlagsDrawFilter;


# instance fields
.field protected isCreateMask:Z

.field private mask:Landroid/graphics/Bitmap;

.field private originalHeight:I

.field private originalWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->defaut_matrix:Landroid/graphics/Matrix;

    .line 34
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->MASK_XFERMODE:Landroid/graphics/Xfermode;

    .line 35
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalWidth:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalHeight:I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalWidth:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalHeight:I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalWidth:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalHeight:I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->MaskImage:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->MaskImage_hasMask:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->paint:Landroid/graphics/Paint;

    .line 66
    return-void
.end method


# virtual methods
.method public abstract createMask(II)Landroid/graphics/Bitmap;
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 114
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    .line 116
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 119
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getWidth()I

    move-result v0

    .line 120
    .local v0, "w":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getHeight()I

    move-result v1

    .line 121
    .local v1, "h":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    return-object v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "paramCanvas"    # Landroid/graphics/Canvas;

    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 75
    .local v2, "localDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    const-string v3, "AntUI-build"

    if-nez v0, :cond_1

    .line 76
    const-string v0, "MaskImage onDraw Exception: localDrawable is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void

    .line 81
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getWidth()I

    move-result v0

    .line 82
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getHeight()I

    move-result v4

    .line 83
    .local v4, "height":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v4

    const/4 v10, 0x0

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v5

    .line 84
    .local v5, "layerId":I
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->mask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalWidth:I

    if-ne v6, v0, :cond_2

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalHeight:I

    if-eq v6, v4, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->createMask(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->mask:Landroid/graphics/Bitmap;

    .line 86
    iput v4, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalHeight:I

    .line 87
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->originalWidth:I

    .line 89
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->mask:Landroid/graphics/Bitmap;

    sget-object v7, Lcom/alipay/mobile/antui/basic/AUMaskImage;->defaut_matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->paint:Landroid/graphics/Paint;

    sget-object v7, Lcom/alipay/mobile/antui/basic/AUMaskImage;->MASK_XFERMODE:Landroid/graphics/Xfermode;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v6

    .line 93
    .local v6, "drawFilter":Landroid/graphics/DrawFilter;
    sget-object v7, Lcom/alipay/mobile/antui/basic/AUMaskImage;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaskImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 97
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "width":I
    .end local v4    # "height":I
    .end local v5    # "layerId":I
    .end local v6    # "drawFilter":Landroid/graphics/DrawFilter;
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "localException":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    const-string v1, "MaskImage onDraw Exception: "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "localException":Ljava/lang/Exception;
    return-void
.end method

.method public setNeedMask(Z)V
    .locals 0
    .param p1, "needMask"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUMaskImage;->isCreateMask:Z

    .line 56
    return-void
.end method
