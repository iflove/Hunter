.class public Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;
.super Ljava/lang/Object;
.source "H5EmbedViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5EmbedViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertRGBAColor(Ljava/lang/String;)I
    .locals 1
    .param p0, "ori"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->convertRGBAColor(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static convertRGBAColor(Ljava/lang/String;I)I
    .locals 4
    .param p0, "ori"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    return p1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->rgba2argb(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error, ori="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5EmbedViewUtil"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v0    # "th":Ljava/lang/Throwable;
    return p1
.end method

.method public static generateBackgroundDrawable(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;I)Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "defaultColor"    # I

    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;-><init>()V

    .line 46
    .local v0, "borderDrawable":Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->convertRGBAColor(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, "bgColor":I
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->setBackgroundColor(I)V

    .line 49
    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 50
    .local v2, "borderWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 51
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 52
    .local v3, "borderWidthInPX":F
    const-string v4, "borderColor"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->convertRGBAColor(Ljava/lang/String;)I

    move-result v4

    .line 53
    .local v4, "borderColor":I
    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->setBorder(FI)V

    .line 55
    const-string v5, "borderRadius"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 56
    .local v5, "borderRadius":F
    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 57
    .local v6, "borderRadiusInPX":F
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->setBorderRadius(F)V

    .line 59
    const-string v7, "borderStyle"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "borderStyle":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 62
    .end local v3    # "borderWidthInPX":F
    .end local v4    # "borderColor":I
    .end local v5    # "borderRadius":F
    .end local v6    # "borderRadiusInPX":F
    .end local v7    # "borderStyle":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static rgba2argb(I)I
    .locals 3
    .param p0, "rgba"    # I

    .line 37
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
