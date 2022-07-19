.class public Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;
.super Ljava/lang/Object;
.source "AlipaySpdyDowngrade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlipaySpdyDowngrade"

.field private static sMainDocSpdyTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMemoryDowngradeRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMemoryDowngradeRules:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDiskDowngradeRule(Ljava/lang/String;JI)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "seconds"    # J
    .param p3, "domainLevel"    # I

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_spdydowngrade"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDiskDowngradeRule value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlipaySpdyDowngrade"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->convertUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "rule":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    move-result v4

    .line 59
    .local v4, "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addDiskDowngradeRule commit status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "rule":Ljava/lang/String;
    .end local v4    # "status":Z
    :cond_0
    return-void
.end method

.method public static addMemoryDowngradeRule(Ljava/lang/String;I)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "domainLevel"    # I

    .line 25
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->convertUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "rule":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMemoryDowngradeRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public static addSMainDocSpdyTable(Ljava/lang/String;)V
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    return-void
.end method

.method private static convertUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "domainLevel"    # I

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "rule":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 104
    if-nez p1, :cond_2

    .line 105
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "query":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    move-object v0, p0

    goto :goto_0

    .line 109
    :cond_0
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 112
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getSwitchControl()Z
    .locals 4

    .line 132
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_switchcontrol"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const/4 v1, 0x1

    const-string v2, "AlipaySpdyDowngrade"

    if-eqz v0, :cond_0

    .line 135
    const-string v3, "getSwitchControl preferences != null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "enableSPDY"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 138
    :cond_0
    const-string v3, "getSwitchControl preferences == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v1
.end method

.method private static handleQuery(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, "urlWithoutQuery":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    move-object v1, p0

    goto :goto_0

    .line 124
    :cond_0
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1
.end method

.method public static isExistDiskDowngradeRule(Ljava/lang/String;)Z
    .locals 18
    .param p0, "url"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_spdydowngrade"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const-string v1, "AlipaySpdyDowngrade"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 70
    const-string v3, "isExistDiskDowngradeRule preferences == null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v2

    .line 73
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 75
    return v2

    .line 77
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "host":Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->handleQuery(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "urlWithoutPath":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v0, v4, v7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 81
    invoke-virtual {v0, v6, v7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    return v2

    .line 86
    :cond_3
    const-string v7, "\\|"

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "ruleArray":[Ljava/lang/String;
    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 88
    .local v9, "ruleStartTime":J
    const/4 v11, 0x1

    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 89
    .local v12, "seconds":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 90
    .local v14, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isExistDiskDowngradeRule duration is "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", seconds is "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    cmp-long v1, v14, v12

    if-gtz v1, :cond_4

    .line 93
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public static isExistMemoryDowngradeRule(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return v1

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "host":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->handleQuery(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "urlWithoutQuery":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMemoryDowngradeRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 39
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMemoryDowngradeRules:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMemoryDowngradeRules:Ljava/util/List;

    .line 40
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1

    .line 42
    :cond_3
    return v1
.end method

.method public static isInsMainDocSpdyTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->sMainDocSpdyTable:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
