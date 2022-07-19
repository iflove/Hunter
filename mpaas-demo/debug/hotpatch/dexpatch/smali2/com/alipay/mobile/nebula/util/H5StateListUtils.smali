.class public Lcom/alipay/mobile/nebula/util/H5StateListUtils;
.super Ljava/lang/Object;
.source "H5StateListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I
    .param p2, "disableColor"    # I

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    if-nez p1, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    move p1, v0

    .line 30
    if-nez p2, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    move p2, v0

    .line 31
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, -0x101009e

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v4, v6, [I

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v1, v1, [I

    aput p1, v1, v6

    aput p2, v1, v3

    aput p0, v1, v5

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 39
    return-object v0
.end method

.method public static getStateColor(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "normalColor"    # I

    .line 43
    const v0, 0x66ffffff

    and-int/2addr v0, p0

    .line 44
    .local v0, "pressed":I
    invoke-static {p0, v0, v0}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public static getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;
    .param p2, "disabled"    # Landroid/graphics/drawable/Drawable;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    move-object p1, v1

    .line 17
    if-nez p2, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    move-object p2, v1

    .line 18
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 19
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    move-object v0, v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    new-array v1, v2, [I

    const v2, -0x101009e

    aput v2, v1, v5

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 21
    new-array v1, v5, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 22
    return-object v0
.end method
