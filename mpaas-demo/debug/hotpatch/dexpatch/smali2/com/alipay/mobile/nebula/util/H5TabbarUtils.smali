.class public Lcom/alipay/mobile/nebula/util/H5TabbarUtils;
.super Ljava/lang/Object;
.source "H5TabbarUtils.java"


# static fields
.field public static final MATCH_TYPE_PARTHASH:Ljava/lang/String; = "partHash"

.field public static final MATCH_TYPE_PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "H5TabbarUtils"

.field private static tabDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .line 204
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 205
    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method

.method public static addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "normal"    # Landroid/graphics/drawable/Drawable;

    .line 209
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 210
    return-void
.end method

.method public static clearTabDataByAppId(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearTabDataByAppId do nothing"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TabbarUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static clearTabDatas()V
    .locals 2

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "H5TabbarUtils"

    const-string v1, "clearTabDatas"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 52
    :cond_0
    return-void
.end method

.method public static generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 185
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 186
    return-object v0
.end method

.method public static generateTextColor(II)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .line 190
    const/high16 v0, -0x1000000

    or-int v1, p0, v0

    .line 191
    .local v1, "normal":I
    or-int/2addr v0, p1

    .line 192
    .local v0, "pressed":I
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v5, [I

    const v7, 0x10100a1

    aput v7, v6, v8

    aput-object v6, v4, v5

    new-array v6, v8, [I

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v3, v3, [I

    aput v0, v3, v8

    aput v0, v3, v5

    aput v1, v3, v7

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 200
    return-object v2
.end method

.method public static generateTopDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .line 213
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 214
    return-object v0

    .line 216
    :cond_0
    if-nez p1, :cond_1

    .line 217
    move-object p1, p0

    .line 219
    :cond_1
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 220
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    move-object v0, v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 221
    new-array v1, v2, [I

    const v2, 0x10100a1

    aput v2, v1, v5

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 222
    new-array v1, v5, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 223
    return-object v0
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10
    .param p0, "jsonUrl"    # Ljava/lang/String;
    .param p1, "activityStartParams"    # Landroid/os/Bundle;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "finalUrl":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "entryUrl":Ljava/lang/String;
    const/4 v2, 0x1

    .line 134
    .local v2, "useNew":Z
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v4, 0x0

    move-object v5, v4

    .line 135
    .local v5, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 136
    const-string v3, "h5_tabbarUrlRule"

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 141
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAbsoluteUrl useNew "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5TabbarUtils"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v2, :cond_2

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 144
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlWithURLLib(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    invoke-static {v1, p0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 155
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->neverAddHashQuery()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    return-object v0

    .line 159
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 160
    .local v3, "entryUri":Landroid/net/Uri;
    move-object v3, v6

    if-eqz v6, :cond_5

    .line 161
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v4, "fragmentPart":Ljava/lang/String;
    move-object v4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 163
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    .line 164
    .local v8, "indexOfQuery":I
    move v8, v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .end local v4    # "fragmentPart":Ljava/lang/String;
    .end local v8    # "indexOfQuery":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "addHashQuery : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public static getTabDataByAppId(Ljava/lang/String;)[B
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTabDataByAppId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TabbarUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 92
    nop

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    return-object v1

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    const-string/jumbo v2, "path"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "H5TabbarUtils"

    if-eqz v2, :cond_1

    .line 99
    const-string v1, "getUrlWithoutQuery MATCH_TYPE_PATH"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_1
    const-string/jumbo v2, "partHash"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    const-string p1, "getUrlWithoutQuery MATCH_TYPE_PARTHASH"

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "?"

    if-eqz v1, :cond_2

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 117
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 127
    :cond_3
    move-object v1, p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static ifUrlMatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 18
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "entryUrl"    # Ljava/lang/String;
    .param p2, "startParams"    # Landroid/os/Bundle;

    .line 55
    const/4 v0, -0x1

    .line 56
    .local v0, "selectedIndex":I
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    move-object v1, v2

    :goto_0
    move-object v4, v2

    .line 57
    .local v4, "oriData":[B
    move-object v4, v1

    const-string v5, "H5TabbarUtils"

    if-eqz v1, :cond_6

    .line 58
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v1, "tmpData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ifUrlMatch tmpData "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v7, v2

    .line 61
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    const-string/jumbo v8, "matchType"

    const-string/jumbo v9, "partHash"

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "matchType":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "entryUrlWithoutQuery":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ifUrlMatch entryUrlWithoutQuery "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v10, "items"

    invoke-static {v7, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    move-object v11, v2

    .line 65
    .local v11, "items":Lcom/alibaba/fastjson/JSONArray;
    move-object v11, v10

    if-eqz v10, :cond_5

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 66
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    .line 67
    .local v10, "itemsLength":I
    const/4 v12, 0x0

    move-object v13, v2

    move v14, v12

    move-object v12, v13

    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_4

    .line 68
    const/4 v15, 0x5

    if-ge v14, v15, :cond_3

    .line 72
    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 73
    .local v2, "item":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v15

    if-eqz v15, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 74
    const-string/jumbo v15, "url"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v12, "shortUrl":Ljava/lang/String;
    move-object v12, v15

    move/from16 v16, v0

    move-object/from16 v0, p2

    .end local v0    # "selectedIndex":I
    .local v16, "selectedIndex":I
    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v13, "abUrl":Ljava/lang/String;
    move-object v13, v15

    invoke-static {v15, v6}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "abUrlWithoutQuery":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    .end local v1    # "tmpData":Ljava/lang/String;
    .local v17, "tmpData":Ljava/lang/String;
    const-string v1, "ifUrlMatch shortUrl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", abUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", abUrlWithoutQuery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    move v0, v14

    .end local v16    # "selectedIndex":I
    .restart local v0    # "selectedIndex":I
    goto :goto_2

    .line 79
    .end local v0    # "selectedIndex":I
    .restart local v16    # "selectedIndex":I
    :cond_1
    move/from16 v0, v16

    goto :goto_2

    .line 73
    .end local v12    # "shortUrl":Ljava/lang/String;
    .end local v13    # "abUrl":Ljava/lang/String;
    .end local v15    # "abUrlWithoutQuery":Ljava/lang/String;
    .end local v16    # "selectedIndex":I
    .end local v17    # "tmpData":Ljava/lang/String;
    .restart local v0    # "selectedIndex":I
    .restart local v1    # "tmpData":Ljava/lang/String;
    :cond_2
    move/from16 v16, v0

    move-object/from16 v17, v1

    .line 67
    .end local v0    # "selectedIndex":I
    .end local v1    # "tmpData":Ljava/lang/String;
    .end local v2    # "item":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "selectedIndex":I
    .restart local v17    # "tmpData":Ljava/lang/String;
    move/from16 v0, v16

    .end local v16    # "selectedIndex":I
    .restart local v0    # "selectedIndex":I
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    goto :goto_1

    .line 68
    .end local v17    # "tmpData":Ljava/lang/String;
    .restart local v1    # "tmpData":Ljava/lang/String;
    :cond_3
    move/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "selectedIndex":I
    .end local v1    # "tmpData":Ljava/lang/String;
    .restart local v16    # "selectedIndex":I
    .restart local v17    # "tmpData":Ljava/lang/String;
    goto :goto_3

    .line 67
    .end local v16    # "selectedIndex":I
    .end local v17    # "tmpData":Ljava/lang/String;
    .restart local v0    # "selectedIndex":I
    .restart local v1    # "tmpData":Ljava/lang/String;
    :cond_4
    move/from16 v16, v0

    move-object/from16 v17, v1

    .line 87
    .end local v0    # "selectedIndex":I
    .end local v1    # "tmpData":Ljava/lang/String;
    .end local v6    # "matchType":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "entryUrlWithoutQuery":Ljava/lang/String;
    .end local v10    # "itemsLength":I
    .end local v11    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v14    # "i":I
    .restart local v16    # "selectedIndex":I
    :goto_3
    move/from16 v0, v16

    goto :goto_4

    .line 65
    .end local v16    # "selectedIndex":I
    .restart local v0    # "selectedIndex":I
    .restart local v1    # "tmpData":Ljava/lang/String;
    .restart local v6    # "matchType":Ljava/lang/String;
    .restart local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "entryUrlWithoutQuery":Ljava/lang/String;
    .restart local v11    # "items":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    move-object/from16 v17, v1

    .end local v1    # "tmpData":Ljava/lang/String;
    .restart local v17    # "tmpData":Ljava/lang/String;
    goto :goto_4

    .line 57
    .end local v6    # "matchType":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "entryUrlWithoutQuery":Ljava/lang/String;
    .end local v11    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v17    # "tmpData":Ljava/lang/String;
    :cond_6
    move-object/from16 v8, p1

    .line 87
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ifUrlMatch final result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return v0
.end method

.method private static neverAddHashQuery()Z
    .locals 3

    .line 174
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 175
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "h5_neverAddHashQuery"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, 0x0

    return v2

    .line 181
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static setTabData(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 34
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setTabData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TabbarUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method
