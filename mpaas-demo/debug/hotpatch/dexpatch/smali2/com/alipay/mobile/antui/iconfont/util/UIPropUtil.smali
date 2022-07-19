.class public Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;
.super Ljava/lang/Object;
.source "UIPropUtil.java"


# static fields
.field private static final DP_SUFFIX:Ljava/lang/String; = "dp"

.field public static final INVALID_DIMEN:F = -1.0f

.field private static final PX_SUFFIX:Ljava/lang/String; = "px"

.field static final SPLITER:Ljava/lang/String; = " "

.field private static final SP_SUFFIX:Ljava/lang/String; = "sp"

.field private static dm:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPx(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getDensity(Landroid/content/Context;Z)F

    move-result v0

    .line 124
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method

.method public static convertSpToPx(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # F

    .line 128
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getDensity(Landroid/content/Context;Z)F

    move-result v0

    .line 129
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method

.method public static varargs genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strs"    # [Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "isEmpty":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    array-length v2, p1

    if-lez v2, :cond_5

    .line 73
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 74
    .local v3, "states":[[I
    const/4 v4, 0x4

    new-array v5, v4, [I

    .line 75
    .local v5, "colors":[I
    const/4 v6, 0x0

    move-object v7, v1

    .local v6, "i":I
    :goto_0
    array-length v8, p1

    if-ge v6, v8, :cond_4

    .line 76
    aget-object v8, p1, v6

    .line 77
    .local v7, "s":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 80
    const/4 v0, 0x0

    .line 81
    const/4 v8, 0x0

    if-eqz v6, :cond_2

    const/4 v9, 0x1

    if-eq v6, v9, :cond_1

    if-eq v6, v2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    new-array v9, v9, [I

    const v10, -0x101009e

    aput v10, v9, v8

    aput-object v9, v3, v4

    .line 101
    invoke-static {v7}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v4

    goto :goto_1

    .line 89
    :cond_1
    new-array v8, v2, [I

    fill-array-data v8, :array_1

    aput-object v8, v3, v9

    .line 91
    invoke-static {v7}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v9

    .line 92
    new-array v8, v2, [I

    fill-array-data v8, :array_2

    aput-object v8, v3, v2

    .line 94
    invoke-static {v7}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v2

    .line 95
    new-array v8, v2, [I

    fill-array-data v8, :array_3

    const/4 v9, 0x3

    aput-object v8, v3, v9

    .line 97
    invoke-static {v7}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v9

    .line 98
    goto :goto_1

    .line 83
    :cond_2
    new-array v9, v4, [I

    fill-array-data v9, :array_4

    aput-object v9, v3, v8

    .line 86
    invoke-static {v7}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    .line 75
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v6    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 108
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 109
    return-object v1

    .line 112
    .end local v3    # "states":[[I
    .end local v5    # "colors":[I
    :cond_5
    return-object v1

    :array_0
    .array-data 4
        0x5
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data

    :array_4
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
        -0x10100a1
    .end array-data
.end method

.method public static getColorByValue(Ljava/lang/String;)I
    .locals 6
    .param p0, "colorString"    # Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 40
    .local v0, "colors":[I
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 41
    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 40
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "allColor":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 45
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RGB\u683c\u5f0f\u9519\u8bef: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIPropUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    const/4 v3, 0x0

    aget v3, v0, v3

    aget v2, v0, v2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    return v2

    .line 38
    .end local v0    # "colors":[I
    .end local v1    # "allColor":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 53
    .local v0, "realColor":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_2
    move-object v0, p0

    .line 58
    :goto_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getDensity(Landroid/content/Context;Z)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scaled"    # Z

    const-class v0, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    .line 168
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 169
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    sget-object v1, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 174
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    .line 165
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "scaled":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPx(Ljava/lang/String;Landroid/content/Context;)F
    .locals 6

    .line 140
    const-string/jumbo v0, "px"

    const-string/jumbo v1, "sp"

    const-string v2, "dp"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 146
    nop

    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 146
    invoke-static {p1, p0}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->convertDipToPx(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    nop

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 149
    invoke-static {p1, p0}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->convertSpToPx(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 155
    invoke-static {p1, p0}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->convertDipToPx(Landroid/content/Context;F)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    :goto_0
    return p0

    .line 157
    :catch_0
    move-exception p0

    .line 158
    return v4

    .line 141
    :cond_4
    :goto_1
    return v4
.end method
