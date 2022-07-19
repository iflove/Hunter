.class public final Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;
.super Ljava/lang/Object;
.source "TinyAppCookieUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "url"    # Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    return-object p1

    .line 31
    :cond_0
    const/4 v0, 0x0

    const-string v1, "isTinyApp"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->partCookieUrlToAppDomain(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCookieDomainValuePosition(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 6
    .param p0, "cookieValue"    # Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 100
    .local v0, "position":Landroid/graphics/Point;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    return-object v0

    .line 103
    :cond_0
    const-string v2, "Domain="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 104
    .local v4, "indexOfDomain":I
    move v4, v2

    if-ne v2, v1, :cond_1

    .line 105
    const-string v2, "domain="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 107
    :cond_1
    if-ne v4, v1, :cond_2

    .line 108
    return-object v0

    .line 110
    :cond_2
    add-int/lit8 v2, v4, 0x8

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 111
    iget v2, v0, Landroid/graphics/Point;->x:I

    const-string v5, ";"

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 112
    .local v3, "endOfDomain":I
    move v3, v2

    if-ne v2, v1, :cond_3

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 115
    :cond_3
    add-int/lit8 v2, v3, -0x1

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 117
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-le v2, v5, :cond_4

    .line 118
    iput v1, v0, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 120
    :cond_4
    return-object v0
.end method

.method private static partCookieUrlToAppDomain(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "url"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    .local v1, "appId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-object p1

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->shouldCookiePart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 57
    .local v3, "schemaIndex":I
    move v3, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 58
    add-int/lit8 v0, v3, 0x3

    const-string v5, ":"

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "portIndex":I
    add-int/lit8 v5, v3, 0x3

    const-string v6, "/"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v6, v2

    .line 60
    .local v6, "domainIndex":I
    move v6, v5

    const-string v7, "."

    if-eq v5, v4, :cond_2

    .line 61
    if-eq v0, v4, :cond_1

    if-ge v0, v6, :cond_1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 64
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 70
    .end local v0    # "portIndex":I
    .end local v6    # "domainIndex":I
    :cond_3
    return-object p1

    .line 73
    .end local v3    # "schemaIndex":I
    :cond_4
    return-object p1
.end method

.method private static partCookieValueToAppDomain(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "cookieValue"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-object p1

    .line 82
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->shouldCookiePart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->getCookieDomainValuePosition(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 84
    .local v1, "domainPosition":Landroid/graphics/Point;
    move-object v1, v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-gt v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0x1

    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    return-object v3

    .line 91
    .end local v0    # "domain":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 94
    .end local v1    # "domainPosition":Landroid/graphics/Point;
    :cond_2
    return-object p1
.end method

.method public static setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    const-string v1, "isTinyApp"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->partCookieUrlToAppDomain(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppCookieUtils;->partCookieValueToAppDomain(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method private static shouldCookiePart(Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "cookiePart":Z
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 126
    .local v3, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getCookiePartWhiteList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 128
    .local v2, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "all"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 132
    .end local v2    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    return v0
.end method
