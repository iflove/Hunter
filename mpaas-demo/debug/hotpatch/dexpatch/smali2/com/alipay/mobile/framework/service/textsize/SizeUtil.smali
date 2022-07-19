.class public Lcom/alipay/mobile/framework/service/textsize/SizeUtil;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontSize(F)F
    .locals 2
    .param p0, "paramFloat"    # F

    .line 37
    const/high16 v0, 0x3f600000    # 0.875f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 38
    const/high16 v0, 0x41600000    # 14.0f

    return v0

    .line 40
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 41
    return v1

    .line 43
    :cond_1
    const/high16 v0, 0x3f900000    # 1.125f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 44
    const/high16 v0, 0x41900000    # 18.0f

    return v0

    .line 46
    :cond_2
    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    .line 47
    const/high16 v0, 0x41a00000    # 20.0f

    return v0

    .line 49
    :cond_3
    const/high16 v0, 0x3fb00000    # 1.375f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_4

    .line 50
    const/high16 v0, 0x41b00000    # 22.0f

    return v0

    .line 52
    :cond_4
    return v1
.end method

.method public static getScale(I)F
    .locals 2
    .param p0, "pos"    # I

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
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

    .line 27
    :cond_0
    const/high16 v0, 0x3fb00000    # 1.375f

    goto :goto_0

    .line 24
    :cond_1
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 25
    goto :goto_0

    .line 21
    :cond_2
    const/high16 v0, 0x3f900000    # 1.125f

    .line 22
    goto :goto_0

    .line 18
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    goto :goto_0

    .line 15
    :cond_4
    const/high16 v0, 0x3f600000    # 0.875f

    .line 16
    nop

    .line 32
    :goto_0
    return v0
.end method

.method public static getTextSize(FI)F
    .locals 1
    .param p0, "defaultSize"    # F
    .param p1, "gear"    # I

    .line 6
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/textsize/SizeUtil;->getScale(I)F

    move-result v0

    .line 7
    mul-float v0, v0, p0

    .line 8
    return v0
.end method
