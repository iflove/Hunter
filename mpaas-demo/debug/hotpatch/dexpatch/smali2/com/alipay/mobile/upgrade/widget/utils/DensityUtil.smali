.class public Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static scale:F

.field private static scaledDensity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->initScale(Landroid/content/Context;)V

    .line 17
    sget p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scale:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getFontSize(F)F
    .locals 2

    .line 82
    nop

    .line 83
    const/high16 v0, 0x3f600000    # 0.875f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 84
    const/high16 p0, 0x41600000    # 14.0f

    return p0

    .line 86
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 87
    return v1

    .line 89
    :cond_1
    const/high16 v0, 0x3f900000    # 1.125f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 90
    const/high16 p0, 0x41900000    # 18.0f

    return p0

    .line 92
    :cond_2
    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    .line 93
    const/high16 p0, 0x41a00000    # 20.0f

    return p0

    .line 95
    :cond_3
    const/high16 v0, 0x3fb00000    # 1.375f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_4

    .line 96
    const/high16 p0, 0x41b00000    # 22.0f

    return p0

    .line 98
    :cond_4
    return v1
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->getRelativeLeft(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->getRelativeTop(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getScale(I)F
    .locals 2

    .line 58
    nop

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const/high16 v0, 0x3fb00000    # 1.375f

    .line 74
    goto :goto_0

    .line 70
    :cond_1
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 71
    goto :goto_0

    .line 67
    :cond_2
    const/high16 v0, 0x3f900000    # 1.125f

    .line 68
    goto :goto_0

    .line 64
    :cond_3
    nop

    .line 65
    goto :goto_0

    .line 61
    :cond_4
    const/high16 v0, 0x3f600000    # 0.875f

    .line 62
    nop

    .line 78
    :goto_0
    return v0
.end method

.method public static getTextSize(FI)F
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->getScale(I)F

    move-result p1

    .line 53
    mul-float p1, p1, p0

    .line 54
    return p1
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 2

    .line 22
    :try_start_0
    sget v0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 27
    :goto_0
    return-void
.end method

.method private static initScaledDensity(Landroid/content/Context;)V
    .locals 2

    .line 126
    :try_start_0
    sget v0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scaledDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 131
    :goto_0
    return-void
.end method

.method public static isValueEqule(FF)Z
    .locals 0

    .line 102
    float-to-int p0, p0

    .line 103
    float-to-int p1, p1

    .line 104
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->initScale(Landroid/content/Context;)V

    .line 34
    sget p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scale:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 110
    sget p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scaledDensity:F

    div-float/2addr p1, p0

    return p1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 121
    sget p0, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->scaledDensity:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
