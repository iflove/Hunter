.class public Lcom/alipay/mobile/antui/utils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static scale:F

.field private static scaledDensity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 19
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->initScale(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v0

    return v0

    .line 23
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scale:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getFontSize(F)F
    .locals 2
    .param p0, "paramFloat"    # F

    .line 90
    const/high16 v0, 0x3f600000    # 0.875f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 91
    const/high16 v0, 0x41600000    # 14.0f

    return v0

    .line 93
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 94
    return v1

    .line 96
    :cond_1
    const/high16 v0, 0x3f900000    # 1.125f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 97
    const/high16 v0, 0x41900000    # 18.0f

    return v0

    .line 99
    :cond_2
    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    .line 100
    const/high16 v0, 0x41a00000    # 20.0f

    return v0

    .line 102
    :cond_3
    const/high16 v0, 0x3fb00000    # 1.375f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_4

    .line 103
    const/high16 v0, 0x41b00000    # 22.0f

    return v0

    .line 105
    :cond_4
    return v1
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getRelativeLeft(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getRelativeTop(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getScale(I)F
    .locals 2
    .param p0, "pos"    # I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    .local v0, "scale":F
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

    .line 80
    :cond_0
    const/high16 v0, 0x3fb00000    # 1.375f

    goto :goto_0

    .line 77
    :cond_1
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 78
    goto :goto_0

    .line 74
    :cond_2
    const/high16 v0, 0x3f900000    # 1.125f

    .line 75
    goto :goto_0

    .line 71
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    goto :goto_0

    .line 68
    :cond_4
    const/high16 v0, 0x3f600000    # 0.875f

    .line 69
    nop

    .line 85
    :goto_0
    return v0
.end method

.method public static getTextSize(FI)F
    .locals 1
    .param p0, "defaultSize"    # F
    .param p1, "gear"    # I

    .line 59
    invoke-static {p1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getScale(I)F

    move-result v0

    .line 60
    mul-float v0, v0, p0

    .line 61
    return v0
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    :try_start_0
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 34
    return-void
.end method

.method private static initScaledDensity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    :try_start_0
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scaledDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    return-void

    .line 136
    :catchall_0
    move-exception v0

    .line 138
    return-void
.end method

.method public static isValueEqule(FF)Z
    .locals 3
    .param p0, "v1"    # F
    .param p1, "v2"    # F

    .line 109
    float-to-int v0, p0

    .line 110
    .local v0, "a1":I
    float-to-int v1, p1

    .line 111
    .local v1, "a2":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 40
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->initScale(Landroid/content/Context;)V

    .line 41
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scale:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 116
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 117
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scaledDensity:F

    div-float v0, p1, v0

    return v0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .line 127
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 128
    sget v0, Lcom/alipay/mobile/antui/utils/DensityUtil;->scaledDensity:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
