.class public Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;
.super Ljava/lang/Object;
.source "TinyDeviceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TinyDeviceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    const-string v0, ""

    .line 72
    .local v0, "androidId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    .line 77
    :goto_0
    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 80
    :cond_0
    return-object v0
.end method

.method public static getAndroidIdEncrypt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyEncryptUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "imei":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 40
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    .line 42
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 47
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 49
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 50
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_1

    .line 52
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    nop

    .line 55
    :goto_2
    return-object v0
.end method

.method public static getIMEIEncrypt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyEncryptUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    const-string v0, ""

    .line 102
    .local v0, "mac":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 103
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 105
    move-object v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getMacAddrCompatible()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    .line 112
    :goto_1
    return-object v0
.end method

.method private static getMacAddrCompatible()Ljava/lang/String;
    .locals 12

    const-string v0, "02:00:00:00:00:00"

    .line 123
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 125
    .local v3, "all":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 126
    return-object v0

    .line 129
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 130
    .local v4, "nif":Ljava/net/NetworkInterface;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wlan0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 139
    .local v2, "macBytes":[B
    move-object v2, v1

    if-nez v1, :cond_2

    .line 140
    return-object v0

    .line 143
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_3

    aget-byte v9, v2, v7

    .line 145
    .local v9, "b":B
    const-string v10, "%02X:"

    new-array v8, v8, [Ljava/lang/Object;

    and-int/lit16 v11, v9, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    nop

    .end local v9    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 151
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 155
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    .end local v3    # "all":Ljava/util/List;
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    :cond_5
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v1

    .line 156
    :goto_1
    return-object v0
.end method

.method public static getMacEncrypt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyEncryptUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 2

    .line 165
    const-string v0, ""

    .line 167
    .local v0, "serialNumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getSerialNumberFitQ()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 170
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    .line 171
    :goto_0
    if-nez v0, :cond_0

    .line 172
    const-string v0, ""

    .line 174
    :cond_0
    return-object v0
.end method

.method public static getSerialNumberEncrypt()Ljava/lang/String;
    .locals 1

    .line 194
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyEncryptUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSerialNumberFitQ()Ljava/lang/String;
    .locals 3

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 179
    return-object v1

    .line 180
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_2

    .line 181
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    return-object v1

    .line 189
    :cond_2
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    const-string v0, ""

    .line 200
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 202
    .local v1, "logger":Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :try_start_0
    const-string v2, "com.ut.device.UTDevice"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 203
    const-string v3, "getUtdid"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    const-string v2, "TinyDeviceUtils"

    const-string v3, "[*] UTDID error\u3002"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0
.end method

.method public static getUtdidEncrypt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyDeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyEncryptUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
