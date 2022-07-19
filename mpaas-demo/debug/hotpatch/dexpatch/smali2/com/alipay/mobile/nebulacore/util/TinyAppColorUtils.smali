.class public final Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils;
.super Ljava/lang/Object;
.source "TinyAppColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .locals 4
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    .local v1, "color":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-object v0

    .line 20
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TinyAppColorUtils"

    const-string v3, "parse color error"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-object v2
.end method
