.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TinyMenuBgDrawable.java"


# instance fields
.field private mDestRect:Landroid/graphics/Rect;

.field private mHasThrowException:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSrc:Landroid/graphics/Bitmap;

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "height"    # I

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mHasThrowException:Z

    .line 25
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrc:Landroid/graphics/Bitmap;

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 29
    .local v1, "statusBarHeight":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-lez p3, :cond_0

    .line 30
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v4, p3, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 34
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mDestRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrc:Landroid/graphics/Bitmap;

    const v1, -0x11070708

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mHasThrowException:Z

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrc:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mDestRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    .line 47
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyMenuBgDrawable"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mHasThrowException:Z

    .line 53
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 71
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 67
    :cond_0
    return-void
.end method
