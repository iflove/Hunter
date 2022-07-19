.class public Lcom/alipay/mobile/antui/iconfont/util/IconUtils;
.super Ljava/lang/Object;
.source "IconUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalColor"    # I
    .param p2, "pressedColor"    # I
    .param p3, "resId"    # I

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconListDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalColor"    # I
    .param p2, "pressedColor"    # I
    .param p3, "disabledColor"    # I
    .param p4, "resId"    # I

    .line 76
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;IIIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconListDrawable(Landroid/content/Context;IIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSize"    # I
    .param p2, "normalColor"    # I
    .param p3, "pressedColor"    # I
    .param p4, "disabledColor"    # I
    .param p5, "resId"    # I

    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;IIIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconListDrawable(Landroid/content/Context;IIIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSize"    # I
    .param p2, "normalColor"    # I
    .param p3, "pressedColor"    # I
    .param p4, "disabledColor"    # I
    .param p5, "selectedColor"    # I
    .param p6, "resId"    # I

    .line 85
    if-nez p2, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 91
    :cond_1
    new-instance v0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v1, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    invoke-direct {v1, p2, p1, p6}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    .line 93
    .local v0, "normalDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    const/4 v1, 0x0

    .local v1, "pressedDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    const/4 v2, 0x0

    .local v2, "disabledDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    const/4 v3, 0x0

    .line 94
    .local v3, "selectedDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    if-eqz p3, :cond_2

    .line 95
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v5, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    invoke-direct {v5, p3, p1, p6}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    move-object v1, v4

    .line 97
    :cond_2
    if-eqz p4, :cond_3

    .line 98
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v5, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    invoke-direct {v5, p4, p1, p6}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    move-object v2, v4

    .line 100
    :cond_3
    if-eqz p5, :cond_4

    .line 101
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v5, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    invoke-direct {v5, p5, p1, p6}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    move-object v3, v4

    .line 104
    :cond_4
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/utils/StateListUtils;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    return-object v4
.end method

.method public static getIconListDrawable(Landroid/content/Context;ILandroid/content/res/ColorStateList;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSize"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "resId"    # I

    .line 51
    if-nez p2, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 55
    .local v0, "normalColor":I
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    .line 56
    .local v8, "pressedColor":I
    new-array v2, v1, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 57
    .local v9, "selectedColor":I
    new-array v1, v1, [I

    const v2, -0x101009e

    aput v2, v1, v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 58
    .local v10, "disabledColor":I
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v8

    move v5, v10

    move v6, v9

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;IIIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getIconListDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p2, "resId"    # I

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;ILandroid/content/res/ColorStateList;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleIcon(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "normalColor"    # I

    .line 32
    const v0, 0x66ffffff

    and-int/2addr v0, p2

    .line 33
    .local v0, "pressed":I
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lcom/alipay/mobile/antui/utils/StateListUtils;->getColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;ILandroid/content/res/ColorStateList;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getTitleIcon_Blue(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    .local v0, "normalColor":I
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getTitleIcon(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getTitleIcon_White(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_UNIVERSAL_BG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 22
    .local v0, "normalColor":I
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getTitleIcon(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method
