.class public Lcom/alipay/mobile/common/utils/ConnectionUtil;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# static fields
.field public static final TYPE_3GNET:Ljava/lang/String; = "3gnet"

.field public static final TYPE_3GWAP:Ljava/lang/String; = "3gwap"

.field public static final TYPE_CMNET:Ljava/lang/String; = "cmnet"

.field public static final TYPE_CMWAP:Ljava/lang/String; = "cmwap"

.field public static final TYPE_CTNET:Ljava/lang/String; = "ctnet"

.field public static final TYPE_CTWAP:Ljava/lang/String; = "ctwap"

.field public static final TYPE_UNINET:Ljava/lang/String; = "uninet"

.field public static final TYPE_UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    const-string/jumbo v1, "wifi"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "cmwap"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "cmnet"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v1, "uniwap"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "uninet"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "ctnet"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "ctwap"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "3gnet"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "3gwap"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "netType":I
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 58
    .local v3, "cm":Landroid/net/ConnectivityManager;
    move-object v3, v2

    if-eqz v2, :cond_5

    .line 59
    :try_start_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v1

    .line 60
    .local v4, "info":Landroid/net/NetworkInfo;
    move-object v4, v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v1, "typeName":Ljava/lang/String;
    move-object v1, v2

    const-string v5, "WIFI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v0, 0x0

    goto :goto_2

    .line 64
    :cond_0
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 67
    sget-object v2, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    goto :goto_2

    .line 69
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v0, -0x1

    .line 70
    const-string v2, "777"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->isWapAPN()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_2

    .line 72
    const/4 v0, 0x6

    goto :goto_2

    .line 74
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    const/4 v0, 0x5

    .line 78
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_3
    goto :goto_2

    .line 79
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_1

    .line 84
    :cond_5
    :goto_0
    goto :goto_2

    .line 82
    :catch_1
    move-exception v2

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public static getConnTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    .local v1, "netTypeEntity":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 50
    .end local v1    # "netTypeEntity":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    nop

    .line 121
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 120
    return v0
.end method

.method public static getWapIP()Ljava/lang/String;
    .locals 2

    .line 101
    const/4 v0, 0x0

    .local v0, "wapIp":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 102
    move-object v0, v1

    if-nez v1, :cond_0

    const-string v1, "10.0.0.172"

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static getWapPort()I
    .locals 3

    .line 107
    const/4 v0, 0x0

    .local v0, "port":I
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 108
    move v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x50

    return v1

    :cond_0
    return v0
.end method

.method public static isWapAPN()Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getWapIP()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "wap_proxy_ip":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getWapPort()I

    move-result v1

    .line 96
    .local v1, "wap_proxy_port":I
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
