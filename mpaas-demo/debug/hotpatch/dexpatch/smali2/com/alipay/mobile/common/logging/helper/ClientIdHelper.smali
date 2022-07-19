.class public Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;
.super Ljava/lang/Object;
.source "ClientIdHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "imei"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(B)Z
    .locals 1
    .param p0, "c"    # B

    .line 185
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "imsiOrimei"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    .local v2, "trimS":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "[0]+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    return v0

    .line 121
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_3

    .line 122
    return v0

    .line 124
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_4
    :goto_0
    return v0

    .line 112
    .end local v2    # "trimS":Ljava/lang/String;
    :cond_5
    :goto_1
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "clientID"    # Ljava/lang/String;

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    const-string v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "imeiOrImsi"    # Ljava/lang/String;

    .line 156
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object p0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "imei"    # Ljava/lang/String;

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 172
    .local v0, "byteClientId":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 173
    aget-byte v2, v0, v1

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public initClientId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imeiSwitchOff"    # Z

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string v1, "clientID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "savedClientId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    const-string v4, "clientIMEI"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "imei":Ljava/lang/String;
    const-string v5, ""

    .line 36
    .local v5, "imsi":Ljava/lang/String;
    sput-object v3, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->sysImei:Ljava/lang/String;

    .line 39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_1

    .line 42
    :try_start_0
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    move-object v7, v2

    .line 43
    .local v7, "hasPermission":I
    if-nez v6, :cond_0

    if-nez p2, :cond_0

    .line 45
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    const-string/jumbo v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    move-object v8, v2

    .line 47
    .local v8, "telMgr":Landroid/telephony/TelephonyManager;
    move-object v8, v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 48
    move-object v5, v6

    sput-object v6, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->sysImsi:Ljava/lang/String;

    .line 49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 51
    move-object v3, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    sput-object v3, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->sysImei:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putStringApply(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v7    # "hasPermission":I
    .end local v8    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    move-object v4, v7

    .local v4, "newClientId":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v4    # "newClientId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 58
    .local v4, "t":Ljava/lang/Throwable;
    const-string v6, "ClientIdHelper"

    const-string v7, "initClientId"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .local v4, "newClientId":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v4    # "newClientId":Ljava/lang/String;
    :cond_1
    move-object v4, v2

    .line 63
    .restart local v4    # "newClientId":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 64
    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "savedImsi":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    invoke-static {v5}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    .line 67
    .local v10, "imsiT":Ljava/lang/String;
    move-object v10, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_2

    .line 68
    invoke-virtual {v10, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 70
    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 71
    move-object v8, v5

    .line 75
    .end local v10    # "imsiT":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "savedImei":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 77
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v2, "imeiT":Ljava/lang/String;
    move-object v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v7, :cond_4

    .line 79
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_4
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 82
    move-object v9, v3

    .line 85
    .end local v2    # "imeiT":Ljava/lang/String;
    :cond_5
    invoke-static {v8, v9}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .end local v4    # "newClientId":Ljava/lang/String;
    .local v2, "newClientId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putStringApply(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v8    # "savedImsi":Ljava/lang/String;
    .end local v9    # "savedImei":Ljava/lang/String;
    goto :goto_1

    .line 89
    .end local v2    # "newClientId":Ljava/lang/String;
    .restart local v4    # "newClientId":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_7
    invoke-static {v5}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object v5

    .line 93
    :cond_8
    invoke-static {v5, v3}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .end local v4    # "newClientId":Ljava/lang/String;
    .restart local v2    # "newClientId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putStringApply(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_1
    return-object v2
.end method
