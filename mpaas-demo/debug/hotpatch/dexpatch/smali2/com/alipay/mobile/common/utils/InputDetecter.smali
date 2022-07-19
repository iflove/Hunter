.class public Lcom/alipay/mobile/common/utils/InputDetecter;
.super Ljava/lang/Object;
.source "InputDetecter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdbClickFeature(Landroid/view/View;Landroid/view/MotionEvent;)I
    .locals 4

    .line 28
    nop

    .line 31
    const/4 p0, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getRange()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    nop

    .line 35
    const/4 v1, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    const/4 v1, 0x0

    .line 39
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    .line 40
    mul-float v2, v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    nop

    .line 47
    const/4 v2, 0x1

    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 45
    :catch_1
    move-exception v2

    const/4 v2, 0x1

    .line 51
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    goto :goto_3

    .line 54
    :cond_2
    nop

    .line 58
    goto :goto_4

    .line 52
    :cond_3
    :goto_3
    const/4 p0, 0x1

    goto :goto_4

    .line 56
    :catch_2
    move-exception p1

    .line 64
    :goto_4
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    shl-int/lit8 p1, v2, 0x1

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x2

    or-int/2addr p0, p1

    return p0
.end method

.method public static isAdbClick(I)Z
    .locals 1
    .param p0, "adbFeature"    # I

    .line 20
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
