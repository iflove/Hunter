.class public Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final ANDROID_NETWORK_CLASS_2_G:I = 0x1

.field public static final ANDROID_NETWORK_CLASS_3_G:I = 0x2

.field public static final ANDROID_NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_4G:I = 0x4

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_INVALID:I = 0x0

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_WIFI:I = 0x3

.field public static final TAG:Ljava/lang/String; = "LogNetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 212
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 213
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v1

    .line 214
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActiveNetworkInfo exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogNetworkUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getMobileNetworkClass(I)I
    .locals 10
    .param p0, "networkType"    # I

    .line 268
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v5, "getNetworkClass"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 269
    .local v6, "getNetworkClassMethod":Ljava/lang/reflect/Method;
    const-class v7, Landroid/telephony/TelephonyManager;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 270
    .local v5, "networkClass":Ljava/lang/Integer;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 271
    return v3

    .line 273
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 274
    return v1

    .line 276
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 277
    return v0

    .line 279
    :cond_2
    return v2

    .line 280
    .end local v5    # "networkClass":Ljava/lang/Integer;
    .end local v6    # "getNetworkClassMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TelephonyManager#getNetworkClass exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LogNetworkUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v4    # "e":Ljava/lang/Throwable;
    const/16 v4, 0x12

    if-eq p0, v4, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 305
    return v2

    .line 303
    :pswitch_0
    return v0

    .line 290
    :pswitch_1
    return v3

    .line 301
    :cond_3
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getMobileNetworkClass(Landroid/net/NetworkInfo;)I
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 254
    if-nez p0, :cond_0

    .line 255
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getMobileNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    .local v1, "ni":Landroid/net/NetworkInfo;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, -0x1

    return v0

    .line 228
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    .local v1, "activeNetInfo":Landroid/net/NetworkInfo;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    return v2

    .line 172
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    move v3, v2

    .line 173
    .local v3, "type":I
    move v3, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 174
    const/4 v0, 0x3

    return v0

    .line 175
    :cond_1
    if-nez v3, :cond_2

    .line 176
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    .line 179
    .end local v3    # "type":I
    :cond_2
    return v2
.end method

.method public static getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    const/4 v1, 0x0

    .line 192
    .local v1, "ni":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 195
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v2

    .line 194
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 200
    .local v3, "port":I
    if-eqz v2, :cond_0

    .line 201
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v4

    .line 204
    .end local v2    # "proxyHost":Ljava/lang/String;
    .end local v3    # "port":I
    :cond_0
    return-object v0
.end method

.method public static is2GMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    return v0

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static is3GMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 127
    return v0

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static is3GMobileNetwork(Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p0, "activeNetInfo"    # Landroid/net/NetworkInfo;

    .line 140
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static is4GMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 113
    return v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static is4GMobileNetwork(Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p0, "activeNetInfo"    # Landroid/net/NetworkInfo;

    .line 96
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 239
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 240
    .local v2, "info":Landroid/net/NetworkInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 241
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAvailable exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogNetworkUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v0
.end method

.method public static isWiFiMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    return v0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
