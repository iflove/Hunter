.class public Lcom/alipay/mobile/common/transport/utils/NetworkUtils;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 12

    const-string v0, "02:00:00:00:00:00"

    .line 543
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 545
    .local v3, "all":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 546
    return-object v0

    .line 548
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

    .line 549
    .local v4, "nif":Ljava/net/NetworkInterface;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 553
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wlan0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 557
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 558
    .local v2, "macBytes":[B
    move-object v2, v1

    if-nez v1, :cond_2

    .line 559
    return-object v0

    .line 562
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_3

    aget-byte v9, v2, v7

    .line 564
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

    .line 563
    nop

    .end local v9    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 566
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 569
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 573
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    .end local v3    # "all":Ljava/util/List;
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    :cond_5
    goto :goto_1

    .line 571
    :catchall_0
    move-exception v1

    .line 574
    :goto_1
    return-object v0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 238
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 240
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 241
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v1

    .line 242
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "NetworkUtils"

    const-string v3, "getActiveNetworkInfo exception "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getDnsServer()Ljava/util/List;
    .locals 11

    .line 416
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 417
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    .line 418
    .local v2, "context":Landroid/content/Context;
    const-string v4, "connectivity"

    .line 419
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object v4, v0

    .line 420
    .local v4, "connectivityManager":Landroid/net/ConnectivityManager;
    move-object v4, v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v5, v1

    move-object v6, v0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v1, v3

    .line 421
    .local v7, "network":Landroid/net/Network;
    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 423
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 424
    nop

    .line 425
    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    move-object v3, v0

    .line 426
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 420
    .end local v3    # "linkProperties":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v7    # "network":Landroid/net/Network;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    goto :goto_2

    .line 430
    :cond_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 431
    .local v2, "SystemProperties":Ljava/lang/Class;
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 432
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v4, "dnsServers":Ljava/util/ArrayList;
    const-string/jumbo v6, "net.dns1"

    const-string/jumbo v7, "net.dns2"

    const-string/jumbo v8, "net.dns3"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    move-object v8, v0

    const/4 v7, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v7, v9, :cond_4

    aget-object v9, v6, v7

    .line 434
    .local v9, "name":Ljava/lang/String;
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v3

    invoke-virtual {v1, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 435
    .local v8, "value":Ljava/lang/String;
    move-object v8, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 436
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 439
    :cond_4
    return-object v4

    .line 441
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "SystemProperties":Ljava/lang/Class;
    .end local v4    # "dnsServers":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    .line 442
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDnsServer ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getGateWayAddress()Ljava/lang/String;
    .locals 4

    .line 496
    const-string v0, ""

    .line 498
    .local v0, "gatawayIP":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 499
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 500
    return-object v0

    .line 503
    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 504
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 505
    .local v3, "dhcpInfo":Landroid/net/DhcpInfo;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 506
    iget v2, v3, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 510
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_1
    goto :goto_0

    .line 508
    :catchall_0
    move-exception v1

    .line 509
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGateWay ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getLocalIPv4Address()Ljava/lang/String;
    .locals 7

    const-string v0, "NetworkUtils"

    .line 449
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 450
    .local v3, "niList":Ljava/util/Enumeration;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 451
    return-object v2

    .line 450
    :cond_0
    move-object v1, v2

    .line 453
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 455
    .local v2, "nif":Ljava/net/NetworkInterface;
    move-object v2, v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 456
    .local v4, "addresses":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 457
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 458
    .local v1, "addr":Ljava/net/InetAddress;
    move-object v1, v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ipv4,hostName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 462
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_1
    goto :goto_1

    .line 463
    .end local v2    # "nif":Ljava/net/NetworkInterface;
    .end local v4    # "addresses":Ljava/util/Enumeration;
    :cond_2
    goto :goto_0

    .line 466
    .end local v3    # "niList":Ljava/util/Enumeration;
    :cond_3
    goto :goto_2

    .line 464
    :catchall_0
    move-exception v1

    .line 465
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocalIPv4Address ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static getLocalIPv6Address()Ljava/lang/String;
    .locals 7

    const-string v0, "NetworkUtils"

    .line 472
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 473
    .local v3, "niList":Ljava/util/Enumeration;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 474
    return-object v2

    .line 473
    :cond_0
    move-object v1, v2

    .line 476
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 477
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 478
    .local v2, "nif":Ljava/net/NetworkInterface;
    move-object v2, v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 479
    .local v4, "addresses":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 482
    .local v1, "addr":Ljava/net/InetAddress;
    move-object v1, v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ipv6,hostName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 486
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_1
    goto :goto_1

    .line 487
    .end local v2    # "nif":Ljava/net/NetworkInterface;
    .end local v4    # "addresses":Ljava/util/Enumeration;
    :cond_2
    goto :goto_0

    .line 490
    .end local v3    # "niList":Ljava/util/Enumeration;
    :cond_3
    goto :goto_2

    .line 488
    :catchall_0
    move-exception v1

    .line 489
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocalIPv6Address ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static getMobileNetworkClass(I)I
    .locals 10
    .param p0, "networkType"    # I

    .line 335
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

    .line 336
    .local v6, "getNetworkClassMethod":Ljava/lang/reflect/Method;
    const-class v7, Landroid/telephony/TelephonyManager;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 337
    .local v5, "networkClass":Ljava/lang/Integer;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 338
    return v3

    .line 340
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 341
    return v1

    .line 343
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 344
    return v0

    .line 346
    :cond_2
    return v2

    .line 347
    .end local v5    # "networkClass":Ljava/lang/Integer;
    .end local v6    # "getNetworkClassMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    .line 348
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TelephonyManager#getNetworkClass exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkUtils"

    invoke-static {v6, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v4    # "e":Ljava/lang/Throwable;
    const/16 v4, 0x12

    if-eq p0, v4, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 372
    return v2

    .line 370
    :pswitch_0
    return v0

    .line 357
    :pswitch_1
    return v3

    .line 368
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

    .line 321
    if-nez p0, :cond_0

    .line 322
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 251
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 253
    .local v1, "ni":Landroid/net/NetworkInfo;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 254
    const/4 v0, -0x1

    return v0

    .line 256
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 179
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    .local v1, "activeNetInfo":Landroid/net/NetworkInfo;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    return v2

    .line 185
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    move v3, v2

    .line 186
    .local v3, "type":I
    move v3, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 187
    const/4 v0, 0x3

    return v0

    .line 188
    :cond_1
    if-nez v3, :cond_2

    .line 189
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    .line 192
    .end local v3    # "type":I
    :cond_2
    return v2
.end method

.method public static getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    const/4 v1, 0x0

    .line 207
    .local v1, "ni":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 210
    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v3, "NetworkUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 215
    .local v3, "port":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    const v4, 0xffff

    if-ge v3, v4, :cond_0

    .line 216
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v4

    .line 219
    .end local v2    # "proxyHost":Ljava/lang/String;
    .end local v3    # "port":I
    :cond_0
    return-object v0
.end method

.method public static getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 224
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 225
    return-object v1

    .line 227
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isMobileWapProxyIp(Ljava/lang/String;)Z

    move-result v0

    .line 228
    if-eqz v0, :cond_1

    .line 229
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " The proxy ip is wap = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], but is now wifi network !"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkUtils"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v1

    .line 233
    :cond_1
    return-object v2
.end method

.method public static getVpnNetworkInterface()Ljava/net/NetworkInterface;
    .locals 8

    const-string v0, "NetworkUtils"

    .line 383
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GET_VPN_INTER_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    .line 384
    .local v3, "on":Z
    if-nez v2, :cond_0

    .line 385
    const-string v2, "GET_VPN_INTER_SWITCH off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-object v1

    .line 389
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    move-object v4, v1

    .line 390
    .local v4, "niList":Ljava/util/Enumeration;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 391
    return-object v1

    .line 390
    :cond_1
    move-object v2, v1

    move-object v5, v2

    .line 393
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 395
    .local v2, "intf":Ljava/net/NetworkInterface;
    move-object v2, v6

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 398
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v5, "name":Ljava/lang/String;
    move-object v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    const-string/jumbo v6, "tun"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "tap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "ppp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 406
    .end local v2    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 403
    .restart local v2    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isVpnUsed. Used vpn, name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    return-object v2

    .line 409
    .end local v2    # "intf":Ljava/net/NetworkInterface;
    .end local v3    # "on":Z
    .end local v4    # "niList":Ljava/util/Enumeration;
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 407
    :catchall_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "if isVpnUsed fail"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v1
.end method

.method public static getWifiMacAddress()Ljava/lang/String;
    .locals 4

    .line 516
    const-string v0, ""

    .line 518
    .local v0, "macAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 519
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 520
    return-object v0

    .line 523
    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 524
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 526
    move-object v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 531
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    goto :goto_1

    .line 527
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 529
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 530
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiMacAddress ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public static is2GMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

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

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 140
    return v0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

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

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    return v0

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

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

    .line 125
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 126
    return v0

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

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

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return v0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

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

    .line 268
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 269
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

    .line 270
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAvailable exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v0
.end method

.method public static isVpnUsed()Z
    .locals 1

    .line 377
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getVpnNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWiFiMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 92
    const-string v1, "NetworkUtils"

    const-string v2, "[isWiFiMobileNetwork] Severe exception\uff0capplication context is null. "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v0

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
