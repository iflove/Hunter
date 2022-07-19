.class public Lcom/alipay/mobile/antui/utils/AULottieFileUtils;
.super Ljava/lang/Object;
.source "AULottieFileUtils.java"


# static fields
.field private static final LOADING_FILE_NAME:Ljava/lang/String; = "lottie/antui_loading.json"

.field private static final REFRESH_BLUE:Ljava/lang/String; = "lottie/antui_refresh_blue.json"

.field private static final REFRESH_WHITE:Ljava/lang/String; = "lottie/antui_refresh_white.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoadingAnimation(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-string v0, "#108EE9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getLoadingAnimation(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public static getLoadingAnimation(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 49
    .local v0, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 50
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 51
    .local v2, "blue":I
    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getLoadingAnimation(Landroid/content/Context;III)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private static getLoadingAnimation(Landroid/content/Context;III)Lorg/json/JSONObject;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 55
    const-string v0, "lottie/antui_loading.json"

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getFileJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 56
    .local v2, "jsonString":Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_0

    const-string v2, ""

    .line 57
    :cond_0
    int-to-float v0, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 58
    .local v0, "redf":Ljava/lang/Float;
    int-to-float v4, p2

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 59
    .local v4, "greenf":Ljava/lang/Float;
    int-to-float v5, p3

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 61
    .local v3, "bluef":Ljava/lang/Float;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\"###1#\""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\"###2#\""

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\"###3#\""

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 66
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 67
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AULottieFileUtils"

    invoke-static {v7, v6}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v1
.end method

.method public static getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBlue"    # Z

    .line 22
    if-eqz p1, :cond_0

    const-string v0, "lottie/antui_refresh_blue.json"

    goto :goto_0

    :cond_0
    const-string v0, "lottie/antui_refresh_white.json"

    :goto_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getFileJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AULottieFileUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    return-object v2
.end method
