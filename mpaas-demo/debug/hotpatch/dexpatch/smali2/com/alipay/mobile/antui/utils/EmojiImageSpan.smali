.class public Lcom/alipay/mobile/antui/utils/EmojiImageSpan;
.super Landroid/text/style/ImageSpan;
.source "EmojiImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/utils/EmojiImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 41
    .local v1, "transY":I
    sub-int v2, p8, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p6

    .line 42
    .end local v1    # "transY":I
    .local v2, "transY":I
    int-to-float v1, v2

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 17
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/utils/EmojiImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 19
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    .line 21
    .local v2, "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 22
    iget v1, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v3

    .line 23
    .local v1, "fontHeight":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 24
    .local v4, "drHeight":I
    move v4, v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v1, 0x4

    sub-int/2addr v3, v5

    .line 25
    .local v3, "top":I
    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v6, v1, 0x4

    add-int/2addr v5, v6

    .line 26
    .local v5, "bottom":I
    neg-int v6, v5

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 27
    neg-int v6, v5

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 28
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 29
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 32
    .end local v1    # "fontHeight":I
    .end local v2    # "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "top":I
    .end local v4    # "drHeight":I
    .end local v5    # "bottom":I
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    return v1
.end method
