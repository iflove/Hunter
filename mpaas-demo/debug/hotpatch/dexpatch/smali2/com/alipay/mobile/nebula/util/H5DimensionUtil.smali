.class public Lcom/alipay/mobile/nebula/util/H5DimensionUtil;
.super Ljava/lang/Object;
.source "H5DimensionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DimensionUtil"

.field private static sScale:F

.field private static sScaledDensity:F

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 28
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getFontSize(F)F
    .locals 2
    .param p0, "paramFloat"    # F

    .line 67
    const/high16 v0, 0x3f600000    # 0.875f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 68
    const/high16 v0, 0x41600000    # 14.0f

    return v0

    .line 70
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 71
    return v1

    .line 73
    :cond_1
    const/high16 v0, 0x3f900000    # 1.125f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 74
    const/high16 v0, 0x41900000    # 18.0f

    return v0

    .line 76
    :cond_2
    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    return v0

    .line 79
    :cond_3
    const/high16 v0, 0x3fb00000    # 1.375f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_4

    .line 80
    const/high16 v0, 0x41b00000    # 22.0f

    return v0

    .line 82
    :cond_4
    return v1
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getRelativeLeft(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getRelativeTop(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    if-eqz v0, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 133
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 135
    sput v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    if-eqz v0, :cond_0

    .line 120
    return v0

    .line 122
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 123
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 125
    sput v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    return v0
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    :try_start_0
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5DimensionUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static initScaledDensity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    :try_start_0
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5DimensionUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static isValueEqule(FF)Z
    .locals 3
    .param p0, "v1"    # F
    .param p1, "v2"    # F

    .line 86
    float-to-int v0, p0

    .line 87
    .local v0, "a1":I
    float-to-int v1, p1

    .line 88
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

    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 46
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

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

    .line 93
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 94
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    div-float v0, p1, v0

    return v0
.end method

.method public static resetScreenWidthHeight(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "H5DimensionUtil"

    .line 140
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 141
    .local v3, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 142
    .local v2, "display":Landroid/view/Display;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    .line 143
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reset width = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "manager":Landroid/view/WindowManager;
    return-void

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "resetScreenWidthHeight "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 105
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
