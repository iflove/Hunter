.class public Lcom/alipay/mobile/antui/utils/ToolUtils;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenWidth_Height(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    nop

    .line 80
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 82
    .local v0, "display":Landroid/view/Display;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 83
    .local v2, "dis":[I
    move-object v2, v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 84
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 85
    return-object v2
.end method

.method public static isAlipayApp(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    .local v1, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.alipay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    return v0

    .line 27
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAlipayApp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTitleBar"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isConcaveScreen(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 46
    .local v0, "model":Ljava/lang/String;
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 50
    move-object v0, v2

    const-string/jumbo v3, "oppo"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->checkOppoConcave(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 52
    :cond_2
    const-string/jumbo v2, "vivo"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-static {}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->checkVivoConcave()Z

    move-result v1

    return v1

    .line 54
    :cond_3
    const-string v2, "huawei"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "honor"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 56
    :cond_4
    const-string/jumbo v2, "xiaomi"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57
    invoke-static {}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->checkXiaomiConcave()Z

    move-result v1

    return v1

    .line 59
    :cond_5
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->checkSamsungConcave(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_6
    return v1

    .line 55
    :cond_7
    :goto_0
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->checkHuaweiConcave(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 47
    :cond_8
    :goto_1
    return v1
.end method

.method public static judgeRes(I)Ljava/lang/String;
    .locals 4
    .param p0, "resId"    # I

    .line 98
    const/high16 v0, 0xff0000

    and-int v1, p0, v0

    .line 99
    .local v1, "type":I
    sget v2, Lcom/alipay/mobile/antui/R$string;->back:I

    and-int/2addr v2, v0

    .line 100
    .local v2, "stringType":I
    sget v3, Lcom/alipay/mobile/antui/R$drawable;->amount_unit:I

    and-int/2addr v0, v3

    .line 101
    .local v0, "drawableType":I
    if-ne v1, v2, :cond_0

    .line 102
    const-string/jumbo v3, "string"

    return-object v3

    .line 104
    :cond_0
    if-ne v1, v0, :cond_1

    .line 105
    const-string v3, "drawable"

    return-object v3

    .line 107
    :cond_1
    const-string v3, ""

    return-object v3
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 1
    .param p0, "color"    # Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, -0x1

    return v0
.end method

.method public static parseDimen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 70
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 71
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const/4 p0, -0x1

    return p0
.end method
