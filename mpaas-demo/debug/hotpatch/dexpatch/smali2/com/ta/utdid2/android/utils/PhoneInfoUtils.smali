.class public Lcom/ta/utdid2/android/utils/PhoneInfoUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 82
    const/4 v0, 0x0

    .local v0, "lUUID":Ljava/lang/String;
    const-string v1, "ro.aliyun.clouduuid"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "ro.sys.aliyun.clouduuid"

    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->b()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    const-string v0, ""

    .line 63
    .local v0, "androidID":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "a5f5faddde9e9f02"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "8e17f7422b35fbea"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000000000000000"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    .line 75
    :goto_1
    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .line 96
    const-string v0, ""

    .line 98
    .local v0, "lUUID":Ljava/lang/String;
    :try_start_0
    const-string v1, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    const-string v2, "getCloudUUID"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 104
    :goto_0
    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "imei":Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/android/utils/BuildCompatUtils;->isAtLeastQ()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    if-eqz p0, :cond_1

    .line 36
    :try_start_0
    const-string v1, "phone"

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    .line 38
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 43
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 47
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-static {}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_4
    return-object v0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 111
    :try_start_0
    const-string v1, "phone"

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    .line 113
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 118
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 120
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_2
    return-object v0
.end method

.method public static getUniqueID()Ljava/lang/String;
    .locals 12

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 16
    .local v1, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 17
    .local v0, "t2":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 18
    .local v2, "t3":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 19
    .local v3, "t4":I
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v4

    .line 20
    .local v4, "b1":[B
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v5

    .line 21
    .local v5, "b2":[B
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v6

    .line 22
    .local v6, "b3":[B
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v7

    .line 23
    .local v7, "b4":[B
    const/16 v8, 0x10

    new-array v8, v8, [B

    .line 24
    .local v8, "bUniqueID":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v4, v9, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v5, v9, v8, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    const/16 v11, 0x8

    invoke-static {v6, v9, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    const/16 v11, 0xc

    invoke-static {v7, v9, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
