.class public Lcom/alipay/mobile/monitor/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field public static final TYPE_GSM:Ljava/lang/String; = "GSM"

.field public static final TYPE_TDS_HSDPSA:Ljava/lang/String; = "TDS-HSDPSA"

.field public static final TYPE_TDS_HSUPA:Ljava/lang/String; = "TDS-HSUPA"

.field public static final TYPE_TD_CDMA:Ljava/lang/String; = "TD-CDMA"

.field public static final TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field private static a:J

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatParamStringForGET(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "paramData"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "params":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 131
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v6, "keyValue":Lorg/apache/http/message/BasicNameValuePair;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "keyValue":Lorg/apache/http/message/BasicNameValuePair;
    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 139
    .end local v1    # "params":Ljava/util/List;
    :catchall_0
    move-exception v1

    .line 140
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MonitorNetUtils"

    const-string v3, "formatParamStringForGET"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-object v0

    .line 125
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .line 34
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    move-object v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 36
    return-object v2

    .line 39
    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object v3, v2

    .line 41
    .local v3, "connectivityMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 43
    .end local v3    # "connectivityMgr":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "MonitorNetUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    return-object v2
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 70
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 71
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WIFI"

    if-ne v1, v2, :cond_1

    .line 75
    return-object v3

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    return-object v3

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 84
    .local v2, "mobileType":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    .line 85
    .local v4, "subtypeName":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    move-object v2, v4

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4

    .line 89
    const-string v2, "GSM"

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/16 v5, 0x11

    if-ne v3, v5, :cond_5

    .line 91
    const-string v2, "TD-CDMA"

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_6

    .line 93
    const-string v2, "TDS-HSDPSA"

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/16 v5, 0x13

    if-ne v3, v5, :cond_7

    .line 95
    const-string v2, "TDS-HSUPA"

    .line 98
    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    .line 99
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v0, "extraInfo":Ljava/lang/String;
    move-object v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .end local v0    # "extraInfo":Ljava/lang/String;
    :cond_8
    return-object v2
.end method

.method public static getNetworkTypeOptimized()Ljava/lang/String;
    .locals 7

    .line 56
    const-wide/16 v0, 0x0

    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    move-wide v0, v2

    sget-wide v4, Lcom/alipay/mobile/monitor/util/NetUtils;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 59
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 60
    .local v4, "networkType":Ljava/lang/String;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 61
    return-object v3

    .line 63
    :cond_0
    sput-object v4, Lcom/alipay/mobile/monitor/util/NetUtils;->b:Ljava/lang/String;

    .line 64
    sput-wide v0, Lcom/alipay/mobile/monitor/util/NetUtils;->a:J

    .line 66
    .end local v4    # "networkType":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/alipay/mobile/monitor/util/NetUtils;->b:Ljava/lang/String;

    return-object v2
.end method

.method public static isNetworkConnected()Z
    .locals 3

    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 117
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    .line 118
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MonitorNetUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return v0
.end method

.method public static isNetworkUseWifi()Z
    .locals 2

    .line 108
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "networkType":Ljava/lang/String;
    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
