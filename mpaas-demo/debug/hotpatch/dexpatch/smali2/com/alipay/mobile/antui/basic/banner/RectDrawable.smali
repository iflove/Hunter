.class public Lcom/alipay/mobile/antui/basic/banner/RectDrawable;
.super Ljava/lang/Object;
.source "RectDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBigRectDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "color"    # I
    .param p1, "mHeight"    # I
    .param p2, "mBigWidth"    # I

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 32
    .local v2, "path":Landroid/graphics/Path;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    int-to-float v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    int-to-float v0, p2

    int-to-float v4, p1

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    int-to-float v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 38
    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    int-to-float v3, p2

    int-to-float v4, p1

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 39
    .local v0, "shape":Landroid/graphics/drawable/shapes/PathShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 40
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    move-object v1, v3

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    return-object v1
.end method

.method public static createSmallRectDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "unSelectColor"    # I
    .param p1, "mHeight"    # I
    .param p2, "mSmallWidth"    # I

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 16
    .local v2, "path":Landroid/graphics/Path;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    int-to-float v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    int-to-float v0, p2

    int-to-float v4, p1

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    int-to-float v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 22
    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    int-to-float v3, p2

    int-to-float v4, p1

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 23
    .local v0, "shape":Landroid/graphics/drawable/shapes/PathShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 25
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    move-object v1, v3

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    return-object v1
.end method
