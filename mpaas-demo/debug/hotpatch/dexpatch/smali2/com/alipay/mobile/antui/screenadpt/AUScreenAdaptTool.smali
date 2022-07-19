.class public Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;
.super Ljava/lang/Object;
.source "AUScreenAdaptTool.java"


# static fields
.field public static final PREFIX_ID:Ljava/lang/String; = "@"

.field private static final SUFFIX_DIP:Ljava/lang/String; = "dip"

.field private static final SUFFIX_DP:Ljava/lang/String; = "dp"

.field private static final SUFFIX_PX:Ljava/lang/String; = "px"

.field private static final SUFFIX_SP:Ljava/lang/String; = "sp"

.field private static final TAG:Ljava/lang/String; = "AUScreenAdaptTool"

.field public static final WIDTH_BASE:I = 0x168

.field public static widthBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/16 v0, 0x168

    sput v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->widthBase:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePxToDp(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .line 65
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getDensity(Landroid/content/Context;)F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method public static getAPDensity(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 107
    int-to-float v0, v0

    sget v1, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->widthBase:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrValue"    # Ljava/lang/String;

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, -0x1

    return v0

    .line 34
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getDpFromDimension(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v0

    return v0

    .line 37
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getApFromDimen(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    .local v0, "dimen":I
    int-to-float v1, v0

    invoke-static {p0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method public static getApFromDp(Landroid/content/Context;F)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getAPDensity(Landroid/content/Context;)F

    move-result v0

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getApFromPx(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .line 56
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->changePxToDp(Landroid/content/Context;F)F

    move-result v0

    .line 57
    .local v0, "dp":F
    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method public static getApFromString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrValue"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromString(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getApFromString(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    const-string/jumbo v0, "px"

    const-string/jumbo v1, "sp"

    const-string v2, "dip"

    const-string v3, "dp"

    const-string v4, "AUScreenAdaptTool"

    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 71
    .local v6, "attrValueStr":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    const-string v0, "attrValue\u4e3a\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v4, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return p2

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getAPDensity(Landroid/content/Context;)F

    move-result v5

    .line 76
    .local v5, "scale":F
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-string v10, ""

    if-eqz v7, :cond_1

    .line 77
    :try_start_1
    invoke-virtual {v6, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v5

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-int v0, v0

    return v0

    .line 79
    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v6, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v5

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-int v0, v0

    return v0

    .line 82
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {v6, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getScaledDensity(Landroid/content/Context;)F

    move-result v1

    mul-float v0, v0, v1

    .line 85
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getDensity(Landroid/content/Context;)F

    move-result v1

    div-float/2addr v0, v1

    .line 86
    mul-float v0, v0, v5

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-int v0, v0

    return v0

    .line 87
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v6, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    float-to-int v0, v0

    return v0

    .line 91
    :cond_4
    return p2

    .line 94
    .end local v5    # "scale":F
    .end local v6    # "attrValueStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attrValue\u6570\u5b57\u89e3\u6790\u5f02\u5e38: e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return p2
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDpFromDimension(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 129
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getPxFromResourceId(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getDensity(Landroid/content/Context;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getIdStr(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "id":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :try_start_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8d44\u6e90ID\u9519\u8bef:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUScreenAdaptTool"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method

.method public static getPxFromResourceId(Landroid/content/Context;Ljava/lang/String;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getIdStr(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getScaledDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object v1, v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_0

    .line 114
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 116
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
