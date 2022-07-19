.class public Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"


# static fields
.field public static final PUBLIC_URLS:Ljava/lang/String; = "aHR0cHM6Ly9tcGFhcy1tYXMtbG9nZ3cuYWxpeXVuY3MuY29tLGh0dHBzOi8vY24taGFuZ3pob3UtY29tcG9uZW50LWd3LmNsb3VkLmFsaXBheS5jb20vbWd3Lmh0bSxodHRwczovL2NuLWhhbmd6aG91LW1hcy1sb2cuY2xvdWQuYWxpcGF5LmNvbSxodHRwczovL2NuLWhhbmd6aG91LWNvbXBvbmVudC1ndy5jbG91ZC5hbGlwYXkuY29tL21ndy5odG0="

.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 616
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 617
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    move-object v1, p1

    .line 620
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 636
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 638
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 639
    .local v1, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 640
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 641
    return-object v2
.end method

.method private static a()V
    .locals 4

    .line 533
    const/4 v0, 0x0

    .local v0, "brand":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getBrandName()Ljava/lang/String;

    move-result-object v1

    .line 534
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "brand"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 539
    .local v2, "romVersion":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v3, "romVersion"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "env"    # Ljava/lang/String;

    .line 664
    const-string v0, "ONEX_CLOUD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static baseConvertStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 624
    if-eqz p0, :cond_0

    .line 626
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 628
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized bind(Landroid/content/Context;)V
    .locals 30

    const-class v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-boolean v2, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a:Z

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "LoggerFactory"

    const-string v3, "bind repeated."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    .line 85
    monitor-exit v1

    return-void

    .line 87
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a:Z

    .line 88
    if-eqz p0, :cond_1

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v3, p0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->setContext(Landroid/content/Context;)V

    .line 96
    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "mpl_delete_anytime"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 98
    const-string v4, ""

    .line 99
    const-string v5, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    .line 101
    const/4 v7, 0x0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "mpaas_crypto_plus"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 102
    const-string v9, "last_check_license_time"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 105
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-nez v5, :cond_2

    .line 110
    :try_start_3
    const-string v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_16

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2d

    .line 106
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 107
    :try_start_4
    const-string/jumbo v9, "mPaaSConfigLicense"

    const-string v10, "license fatigue error."

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    :cond_2
    nop

    .line 114
    :goto_1
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    if-nez v6, :cond_14

    if-nez v8, :cond_14

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->isDebuggable()Z

    move-result v14

    .line 125
    nop

    .line 126
    const-string v15, "PRIVATE_CLOUD"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "baseline="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "debuggable="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    .line 130
    :try_start_6
    const-string/jumbo v2, "mpaasConfigVersion"

    const-string v7, ""

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string/jumbo v7, "mobilegw.appid"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    move-object/from16 v17, v15

    :try_start_7
    const-string v15, ""

    invoke-static {v7, v15}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    const-string/jumbo v15, "workspaceId"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    move/from16 v18, v8

    :try_start_8
    const-string v8, ""

    invoke-static {v15, v8}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    .line 134
    move-object/from16 v19, v3

    :try_start_9
    const-string v3, ""
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_11

    .line 135
    move/from16 v20, v6

    :try_start_a
    const-string v6, "logging.gateway"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    move-object/from16 v21, v5

    :try_start_b
    const-string v5, ""

    invoke-static {v6, v5}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string/jumbo v6, "mpaasapi"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    move-wide/from16 v22, v9

    :try_start_c
    const-string v9, ""

    invoke-static {v6, v9}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    const-string/jumbo v9, "mpaasConfigEnv"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    const-string/jumbo v10, "mpaasConfigPluginExpired"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    move-object/from16 v24, v12

    :try_start_d
    const-string v12, ""

    invoke-static {v10, v12}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 139
    const-string/jumbo v12, "mpaasConfigLicense"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    move-object/from16 v25, v4

    :try_start_e
    const-string v4, ""

    invoke-static {v12, v4}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v26, v4

    const-string/jumbo v4, "version="

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "appId="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "workspaceId="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "packageName="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "logGW="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mpaasapi="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "env="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "pluginExpired="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    if-eqz v4, :cond_3

    if-eqz v14, :cond_3

    .line 151
    :try_start_f
    new-instance v4, Ljava/lang/Thread;

    new-instance v12, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;

    invoke-direct {v12}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;-><init>()V

    invoke-direct {v4, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_6

    .line 260
    :catchall_1
    move-exception v0

    move-object v4, v0

    move/from16 v27, v14

    :goto_2
    move-object/from16 v15, v17

    :goto_3
    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_20

    .line 255
    :catch_1
    move-exception v0

    move-object v4, v0

    move/from16 v27, v14

    :goto_4
    move-object/from16 v15, v17

    :goto_5
    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_21

    .line 173
    :cond_3
    :goto_6
    :try_start_10
    const-string v4, "aHR0cHM6Ly9tcGFhcy1tYXMtbG9nZ3cuYWxpeXVuY3MuY29tLGh0dHBzOi8vY24taGFuZ3pob3UtY29tcG9uZW50LWd3LmNsb3VkLmFsaXBheS5jb20vbWd3Lmh0bSxodHRwczovL2NuLWhhbmd6aG91LW1hcy1sb2cuY2xvdWQuYWxpcGF5LmNvbSxodHRwczovL2NuLWhhbmd6aG91LWNvbXBvbmVudC1ndy5jbG91ZC5hbGlwYXkuY29tL21ndy5odG0="

    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->baseConvertStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    const-string v12, ""
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    move/from16 v27, v14

    :try_start_11
    const-string v14, ""

    move-object/from16 v28, v8

    const-string v8, ""

    move-object/from16 v29, v10

    const-string v10, ""

    filled-new-array {v12, v14, v8, v10}, [Ljava/lang/String;

    .line 175
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-nez v8, :cond_4

    .line 176
    nop

    .line 177
    :try_start_12
    const-string v4, "calEnvProcess=useConfig^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object v4, v9

    goto/16 :goto_8

    .line 260
    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v15, v9

    goto :goto_3

    .line 255
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v15, v9

    goto :goto_5

    .line 179
    :cond_4
    :try_start_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-nez v8, :cond_5

    :try_start_14
    const-string v8, "ONEX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x11

    if-ne v8, v10, :cond_5

    .line 180
    const-string v4, "ONEX_CLOUD"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 181
    :try_start_15
    const-string v8, "calEnvProcess=startWithOnex_Public^"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_8

    .line 260
    :catchall_3
    move-exception v0

    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_13

    .line 255
    :catch_3
    move-exception v0

    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_15

    .line 260
    :catchall_4
    move-exception v0

    move-object v4, v0

    goto :goto_2

    .line 255
    :catch_4
    move-exception v0

    move-object v4, v0

    goto :goto_4

    .line 183
    :cond_5
    :try_start_16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-nez v8, :cond_8

    :try_start_17
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_6

    goto :goto_7

    .line 187
    :cond_6
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 189
    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x3

    aget-object v4, v4, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    const-string v4, "ANT_CLOUD"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 191
    :try_start_18
    const-string v8, "calEnvProcess=startWithoutOnex_Public^"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_8

    .line 193
    :cond_7
    :try_start_19
    const-string v4, "PRIVATE_CLOUD"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 194
    :try_start_1a
    const-string v8, "calEnvProcess=startWithoutOnex_Private^"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_8

    .line 185
    :cond_8
    :goto_7
    :try_start_1b
    const-string v4, "calEnvProcess=base64Error^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object/from16 v4, v17

    .line 199
    :goto_8
    :try_start_1c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "calEnv="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "^"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    if-nez v8, :cond_d

    .line 205
    :try_start_1d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "V_1.0"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move-object/from16 v5, v25

    goto/16 :goto_c

    .line 210
    :cond_9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    const-string v10, "PRIVATE_CLOUD"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    const/16 v12, 0x2c

    if-eqz v10, :cond_a

    .line 213
    :try_start_1e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    move-object/from16 v10, v29

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0VwrpV6ux/gYVyJqRH14BVRn8fnAs4gSi3UI83/AQFVVtchNmxh5oqlsUbLYyUbL5kBrKOizoDG0l4NCnkGkzDz02QL+rgbDU4vqtqjqT40iJwUfC1sRGLj26nDQJ/Qafb0qgMkynZWoTI807tz51RnNNxYf/TDlxSxnNwbWOt1Jevv9qv/J7l+0FCwGqnfyq+p9vKMkVYRvVf4bsZoWGneZMNhEKjAGzh/0/adfU3/FgQxEWGmQSGV8PHP26zRfqCJ7dfTRs02fTcTM3EPHcmIZ2GVo0f8+qRrCXf+cEG+dT0CPKMwTQW5XU+16IIRzsgbGMfSM9AB+ut02iKHVOQIDAQAB"

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 221
    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 222
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/security/Signature;->update([B)V

    .line 224
    invoke-static/range {v26 .. v26}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 225
    :try_start_1f
    const-string v3, "digestProcess=PRIVATE_CLOUD^"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 226
    goto/16 :goto_9

    .line 260
    :catchall_5
    move-exception v0

    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_26

    .line 255
    :catch_5
    move-exception v0

    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_16

    .line 227
    :cond_a
    move-object/from16 v10, v29

    :try_start_20
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    move-object/from16 v2, v28

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0VwrpV6ux/gYVyJqRH14BVRn8fnAs4gSi3UI83/AQFVVtchNmxh5oqlsUbLYyUbL5kBrKOizoDG0l4NCnkGkzDz02QL+rgbDU4vqtqjqT40iJwUfC1sRGLj26nDQJ/Qafb0qgMkynZWoTI807tz51RnNNxYf/TDlxSxnNwbWOt1Jevv9qv/J7l+0FCwGqnfyq+p9vKMkVYRvVf4bsZoWGneZMNhEKjAGzh/0/adfU3/FgQxEWGmQSGV8PHP26zRfqCJ7dfTRs02fTcTM3EPHcmIZ2GVo0f8+qRrCXf+cEG+dT0CPKMwTQW5XU+16IIRzsgbGMfSM9AB+ut02iKHVOQIDAQAB"

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 238
    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 239
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/security/Signature;->update([B)V

    .line 241
    invoke-static/range {v26 .. v26}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 242
    :try_start_21
    const-string v3, "digestProcess=PUBLIC_CLOUD^"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :goto_9
    if-nez v2, :cond_b

    .line 245
    const-string/jumbo v3, "\u60a8\u7684 mPaaS Config License \u9a8c\u8bc1\u5931\u8d25\n\u8bf7\u786e\u8ba4\u60a8\u7684 packageName \u548c\u60a8\u8fd0\u884c\u65f6\u7684\u5305\u540d\u4e00\u81f4\uff0c\u4e14 Config \u5185\u5bb9\u6ca1\u6709\u4eba\u4e3a\u4fee\u6539\uff0c\u8bf7\u4ece\u540e\u53f0\u914d\u7f6e\u4e2d\u5fc3\u4ece\u65b0\u4e0b\u8f7d Config\uff0c\u5e76\u5c06 \'com.android.boost.easyconfig:easyconfig\' \u5347\u7ea7\u81f3 2.4.3 \u53ca\u4ee5\u4e0a\u7248\u672c\u3002"
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move-object/from16 v5, v25

    :try_start_22
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v3, "result=verify_false^"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 260
    :catchall_6
    move-exception v0

    move-object/from16 v5, v25

    goto :goto_a

    .line 255
    :catch_6
    move-exception v0

    move-object/from16 v5, v25

    goto :goto_b

    .line 249
    :cond_b
    move-object/from16 v5, v25

    const-string/jumbo v3, "result=success^"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 251
    goto :goto_10

    .line 260
    :catchall_7
    move-exception v0

    :goto_a
    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto/16 :goto_26

    .line 255
    :catch_7
    move-exception v0

    :goto_b
    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto/16 :goto_16

    .line 205
    :cond_c
    move-object/from16 v5, v25

    .line 206
    :goto_c
    :try_start_23
    const-string/jumbo v3, "\u60a8\u7684 mPaaS Config \u7248\u672c\u4e0d\u6b63\u786e\uff0c\u8bf7\u4ece\u540e\u53f0\u914d\u7f6e\u4e2d\u5fc3\u4ece\u65b0\u4e0b\u8f7d Config\uff0c\u5e76\u5c06 \'com.android.boost.easyconfig:easyconfig\' \u5347\u7ea7\u81f3 2.4.3 \u53ca\u4ee5\u4e0a\u7248\u672c\u3002"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result=version_not_match_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    goto :goto_f

    .line 260
    :catchall_8
    move-exception v0

    goto :goto_d

    .line 255
    :catch_8
    move-exception v0

    goto :goto_e

    .line 260
    :catchall_9
    move-exception v0

    move-object/from16 v5, v25

    :goto_d
    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto/16 :goto_13

    .line 255
    :catch_9
    move-exception v0

    move-object/from16 v5, v25

    :goto_e
    move-object v15, v4

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto/16 :goto_15

    .line 253
    :cond_d
    move-object/from16 v5, v25

    :try_start_24
    const-string/jumbo v2, "result=skip^"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 260
    :goto_f
    const/4 v2, 0x0

    :goto_10
    :try_start_25
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v2, :cond_e

    if-eqz v27, :cond_e

    const/4 v2, 0x1

    goto :goto_11

    :cond_e
    const/4 v2, 0x0

    .line 261
    :goto_11
    if-eqz v2, :cond_f

    .line 262
    const-string v2, "\n\n\u60a8\u53ef\u4ee5\u901a\u8fc7\u5de5\u5355\u6216\u52a0\u5165\u9489\u9489\u7fa4\uff1a33214637 \u6765\u83b7\u53d6\u5e2e\u52a9"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    invoke-direct {v3, v5}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 290
    :cond_f
    const-string v2, "cost="

    move-object/from16 v3, v24

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v2, "mPaaSConfigLicense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "param4:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v2, "mPaaSConfigLicense"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    .line 294
    :try_start_26
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "mpaas_crypto_plus"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 295
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_check_license_time"

    move-object/from16 v6, v21

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_a
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    goto/16 :goto_24

    .line 296
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 297
    :try_start_27
    const-string/jumbo v4, "mPaaSConfigLicense"

    const-string v5, "license fatigue2 error."
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    goto/16 :goto_25

    .line 260
    :catchall_a
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto :goto_12

    .line 255
    :catch_b
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto :goto_14

    .line 260
    :catchall_b
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    :goto_12
    move-object v15, v4

    :goto_13
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 255
    :catch_c
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    :goto_14
    move-object v15, v4

    :goto_15
    const/4 v2, 0x0

    :goto_16
    move-object v4, v0

    goto/16 :goto_22

    .line 260
    :catchall_c
    move-exception v0

    goto :goto_17

    .line 255
    :catch_d
    move-exception v0

    goto :goto_18

    .line 260
    :catchall_d
    move-exception v0

    move/from16 v27, v14

    :goto_17
    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_1c

    .line 255
    :catch_e
    move-exception v0

    move/from16 v27, v14

    :goto_18
    move-object/from16 v6, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_1f

    .line 260
    :catchall_e
    move-exception v0

    move-object v5, v4

    move/from16 v27, v14

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto :goto_1c

    .line 255
    :catch_f
    move-exception v0

    move-object v5, v4

    move/from16 v27, v14

    move-object/from16 v6, v21

    move-object/from16 v3, v24

    goto/16 :goto_1f

    .line 260
    :catchall_f
    move-exception v0

    move-object v5, v4

    goto :goto_19

    .line 255
    :catch_10
    move-exception v0

    move-object v5, v4

    goto :goto_1a

    .line 260
    :catchall_10
    move-exception v0

    move-object v5, v4

    move-wide/from16 v22, v9

    :goto_19
    move-object v3, v12

    move/from16 v27, v14

    move-object/from16 v6, v21

    goto :goto_1c

    .line 255
    :catch_11
    move-exception v0

    move-object v5, v4

    move-wide/from16 v22, v9

    :goto_1a
    move-object v3, v12

    move/from16 v27, v14

    move-object/from16 v6, v21

    goto :goto_1f

    :catch_12
    move-exception v0

    move-object v6, v5

    move-wide/from16 v22, v9

    move-object v3, v12

    move/from16 v27, v14

    goto :goto_1e

    :catch_13
    move-exception v0

    goto :goto_1b

    :catch_14
    move-exception v0

    move-object/from16 v19, v3

    :goto_1b
    move/from16 v20, v6

    goto :goto_1d

    .line 260
    :catchall_11
    move-exception v0

    move-object v6, v5

    move-wide/from16 v22, v9

    move-object v3, v12

    move/from16 v27, v14

    move-object v5, v4

    :goto_1c
    move-object v4, v0

    move-object/from16 v15, v17

    goto :goto_20

    .line 255
    :catch_15
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v6

    move/from16 v18, v8

    :goto_1d
    move-wide/from16 v22, v9

    move-object v3, v12

    move/from16 v27, v14

    move-object v6, v5

    :goto_1e
    move-object v5, v4

    :goto_1f
    move-object v4, v0

    move-object/from16 v15, v17

    goto :goto_21

    .line 260
    :catchall_12
    move-exception v0

    move-object v6, v5

    move-wide/from16 v22, v9

    move-object v3, v12

    move/from16 v27, v14

    move-object/from16 v17, v15

    move-object v5, v4

    move-object v4, v0

    :goto_20
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 255
    :catch_16
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v6

    move/from16 v18, v8

    move-wide/from16 v22, v9

    move-object v3, v12

    move/from16 v27, v14

    move-object/from16 v17, v15

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    :goto_21
    const/4 v2, 0x0

    .line 256
    :goto_22
    :try_start_28
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u60a8\u7684 mPaaS Config License \u9a8c\u8bc1\u8fc7\u7a0b\u4e2d\u53d1\u751f\u610f\u5916"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\uff0c\u8bf7\u4ece\u540e\u53f0\u914d\u7f6e\u4e2d\u5fc3\u4ece\u65b0\u4e0b\u8f7d Config\uff0c\u5e76\u5c06 \'com.android.boost.easyconfig:easyconfig\' \u5347\u7ea7\u81f3 2.4.3 \u53ca\u4ee5\u4e0a\u7248\u672c\u3002"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "result=catch_error_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    .line 260
    :try_start_29
    invoke-static {v15}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    if-nez v2, :cond_10

    if-eqz v27, :cond_10

    const/4 v2, 0x1

    goto :goto_23

    :cond_10
    const/4 v2, 0x0

    .line 261
    :goto_23
    if-eqz v2, :cond_11

    .line 262
    const-string v2, "\n\n\u60a8\u53ef\u4ee5\u901a\u8fc7\u5de5\u5355\u6216\u52a0\u5165\u9489\u9489\u7fa4\uff1a33214637 \u6765\u83b7\u53d6\u5e2e\u52a9"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 290
    :cond_11
    const-string v2, "cost="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v2, "mPaaSConfigLicense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "param4:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v2, "mPaaSConfigLicense"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    .line 294
    :try_start_2a
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "mpaas_crypto_plus"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 295
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_check_license_time"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 298
    :goto_24
    move/from16 v7, v18

    move/from16 v6, v20

    goto/16 :goto_2a

    .line 296
    :catch_17
    move-exception v0

    move-object v2, v0

    .line 297
    :try_start_2b
    const-string/jumbo v4, "mPaaSConfigLicense"

    const-string v5, "license fatigue2 error."

    :goto_25
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    move/from16 v7, v18

    move/from16 v6, v20

    goto/16 :goto_2a

    .line 260
    :catchall_13
    move-exception v0

    :goto_26
    move-object v4, v0

    :goto_27
    invoke-static {v15}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    if-nez v2, :cond_12

    if-eqz v27, :cond_12

    const/4 v2, 0x1

    goto :goto_28

    :cond_12
    const/4 v2, 0x0

    .line 261
    :goto_28
    if-eqz v2, :cond_13

    .line 262
    const-string v2, "\n\n\u60a8\u53ef\u4ee5\u901a\u8fc7\u5de5\u5355\u6216\u52a0\u5165\u9489\u9489\u7fa4\uff1a33214637 \u6765\u83b7\u53d6\u5e2e\u52a9"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v2, Ljava/lang/Thread;

    new-instance v7, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    invoke-direct {v7, v5}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 290
    :cond_13
    const-string v2, "cost="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v22

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v2, "mPaaSConfigLicense"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "param4:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v2, "mPaaSConfigLicense"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 294
    :try_start_2c
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mpaas_crypto_plus"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 295
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_check_license_time"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_18
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    .line 298
    goto :goto_29

    .line 296
    :catch_18
    move-exception v0

    move-object v2, v0

    .line 297
    :try_start_2d
    const-string/jumbo v3, "mPaaSConfigLicense"

    const-string v5, "license fatigue2 error."

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    :goto_29
    throw v4

    .line 122
    :cond_14
    move-object/from16 v19, v3

    move/from16 v20, v6

    move/from16 v18, v8

    move-object v3, v12

    .line 302
    const-string/jumbo v2, "mPaaSConfigLicense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "do not check license, deleteAnytime: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v6, v20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fatigue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v18

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_2a
    new-instance v2, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;

    move-object/from16 v12, v19

    invoke-direct {v2, v12}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->attachProcessInfo(Lcom/alipay/mobile/common/logging/api/ProcessInfo;)V

    .line 307
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->prepareStartupReason()V

    .line 308
    new-instance v4, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;

    invoke-direct {v4, v12}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->bindImpls(Lcom/alipay/mobile/common/logging/api/DeviceProperty;)V

    .line 311
    invoke-static {}, Lcom/alipay/mobile/common/logging/CrashBridge;->bind()V

    .line 313
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    .line 314
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/CrashBridge;->createExceptionHandler(Landroid/content/Context;)V

    .line 315
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    .line 329
    new-instance v4, Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {v4, v12}, Lcom/alipay/mobile/common/logging/LogContextImpl;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->attachLogContext(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 331
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()V

    .line 334
    new-instance v5, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;

    invoke-direct {v5, v4}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 335
    new-instance v8, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;

    invoke-direct {v8, v4}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 336
    new-instance v9, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;

    invoke-direct {v9, v4}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 337
    new-instance v10, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;

    invoke-direct {v10, v4}, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 338
    new-instance v14, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;

    invoke-direct {v14, v4}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 339
    invoke-static {v5, v8, v9, v10, v14}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->bind(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;)V

    .line 362
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/CrashBridge;->initExceptionHandler(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->addStartupReasonParams()V

    .line 366
    const-string/jumbo v5, "processSetupTimestamp"

    .line 367
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v8

    iget-wide v8, v8, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 366
    invoke-static {v5, v8}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a()V

    .line 372
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/Judge;

    .line 374
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isPushProcess()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 375
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/Judge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->judgeForNoneUIProcess()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    .line 379
    :cond_15
    const/4 v5, 0x0

    :try_start_2e
    const-string v8, "com.alipay.mobile.tianyanadapter.logging.LoggingReflectedEntry"

    const-string/jumbo v9, "onSetupLogging"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v12, v15, v17

    invoke-static {v8, v9, v14, v5, v15}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    .line 383
    goto :goto_2b

    .line 381
    :catchall_14
    move-exception v0

    move-object v8, v0

    .line 382
    :try_start_2f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "LoggerFactory"

    invoke-interface {v9, v10, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    :goto_2b
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isMainProcess()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isLiteProcess()Z

    move-result v8
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    if-eqz v8, :cond_18

    .line 387
    :cond_16
    :try_start_30
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 388
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v9, "perf_test"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 389
    const-string v8, "com.alipay.loginterceptor.LogInterceptManager"

    const-string v9, "init"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v12, v10, v16

    invoke-static {v8, v9, v14, v5, v10}, Lcom/alipay/mobile/common/logging/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    .line 394
    :cond_17
    goto :goto_2c

    .line 392
    :catchall_15
    move-exception v0

    .line 397
    :cond_18
    :goto_2c
    nop

    .line 399
    :try_start_31
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getMpaasBaseline()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v8, "LoggerFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mPaaS baseline: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v8, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->refreshSessionId()V

    .line 405
    new-instance v2, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;

    move-object v4, v2

    move-object v5, v12

    move-object v8, v13

    move-object v9, v11

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;-><init>(Landroid/content/Context;ZZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 481
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 482
    new-instance v2, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$4;

    invoke-direct {v2, v12}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$4;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 498
    :cond_19
    invoke-static {v12}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->isPrintTraceLogRelease()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 499
    :cond_1a
    new-instance v2, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$5;

    invoke-direct {v2, v12}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$5;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    .line 512
    :cond_1b
    monitor-exit v1

    return-void

    .line 110
    :goto_2d
    :try_start_32
    throw v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    .line 82
    :catchall_16
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method

.method public static native linkEndTransaction(Ljava/lang/String;)I
.end method

.method public static native linkRecordTransaction(Ljava/lang/String;J[BLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[B",
            "Ljava/util/List<",
            "Lcom/alipay/fulllink/msg/FieldInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native linkRollbackTransaction(Ljava/lang/String;)I
.end method

.method public static native linkStartTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static mergeCalledByJni(Ljava/lang/String;I)V
    .locals 2
    .param p0, "mergeMsg"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mergeCalledByJni,msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoggerFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mergeLog(Ljava/lang/String;I)V

    .line 613
    return-void
.end method

.method public static native nativeFree()I
.end method

.method public static native nativeInit()I
.end method

.method public static write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prio"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 558
    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    .line 595
    const-string v0, "LoggerFactory"

    const-string/jumbo v1, "native log with error prio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 587
    :cond_1
    if-nez p3, :cond_2

    .line 588
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 590
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    return-void

    .line 579
    :cond_3
    if-nez p3, :cond_4

    .line 580
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 582
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    return-void

    .line 575
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    .line 571
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void

    .line 567
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void

    .line 564
    :cond_8
    return-void

    .line 559
    :cond_9
    :goto_0
    return-void
.end method
