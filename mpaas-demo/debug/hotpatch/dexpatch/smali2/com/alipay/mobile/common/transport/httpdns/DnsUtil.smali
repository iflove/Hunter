.class public Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;
.super Ljava/lang/Object;
.source "DnsUtil.java"


# static fields
.field public static final AMDC_DOMAIN:Ljava/lang/String; = "amdc.alipay.com"

.field public static final DOMAIN_GROUP:Ljava/lang/String; = "a4"

.field public static final EGG_PAIN_IP:Ljava/lang/String; = "0.0.0.0"

.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_DnsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "requestUrl"    # Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppKeyFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppkey(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    const-string v0, ""

    const-string v1, "HTTP_DNS_DnsUtil"

    .line 408
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 409
    .local v4, "signRequest":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;
    move-object v4, v2

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->appkey:Ljava/lang/String;

    .line 410
    sget v2, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->SIGN_TYPE_HMAC_SHA1:I

    iput v2, v4, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->signType:I

    .line 411
    iput-object p1, v4, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->content:Ljava/lang/String;

    .line 413
    invoke-static {v4}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->signature(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v2

    .line 414
    .local v3, "signature":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    move-object v3, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[signature] Signed fail, requestType: HMAC_SHA1, appKey:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->appkey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-object v0

    .line 420
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[signature] Get security signed string: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->sign:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requestType: HMAC_SHA1, appKey:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->appkey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, v3, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->sign:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 423
    .end local v3    # "signature":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    .end local v4    # "signRequest":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;
    :catchall_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static a(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 6
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "address"    # [Ljava/net/InetAddress;

    const-string v0, "HTTP_DNS_DnsUtil"

    .line 367
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 368
    .local v3, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v3, v1

    const-string v4, "ISP_DNS"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 369
    const-string v1, "FATAL"

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v4, "host"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v4, "ips"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "PERF:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string v4, "BIZ_NETWORK"

    .line 377
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, p0, v5, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v3    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 378
    :catchall_0
    move-exception v1

    .line 379
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "perfLog ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "reqUrl"    # Ljava/lang/String;

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 437
    return v1

    .line 439
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    return v1

    .line 442
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static bytesToIp([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public static final getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostName"    # Ljava/lang/String;

    .line 346
    const-string v0, "localdns"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 347
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    .line 349
    .local v1, "address":[Ljava/net/InetAddress;
    move-object v1, v0

    if-eqz v0, :cond_3

    array-length v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 355
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "hostAddress":Ljava/lang/String;
    const-string v3, "0.0.0.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->a(Ljava/lang/String;[Ljava/net/InetAddress;)V

    .line 358
    goto :goto_1

    .line 354
    .end local v2    # "hostAddress":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-object v1

    .line 350
    :cond_3
    :goto_2
    return-object v1
.end method

.method public static getAmdcHost()Ljava/lang/String;
    .locals 6

    const-string v0, "amdc.alipay.com"

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 72
    .local v3, "context":Landroid/content/Context;
    move-object v3, v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 73
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 74
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "amdc.host"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v2, "amdcHost":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 77
    return-object v2

    .line 79
    :cond_0
    return-object v0

    .line 81
    .end local v2    # "amdcHost":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAmdcHost ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_DnsUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 3

    .line 447
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    .line 449
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppId ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP_DNS_DnsUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigVersion()Ljava/lang/String;
    .locals 2

    .line 467
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "httpdns_configversion"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainGroup()Ljava/lang/String;
    .locals 6

    const-string v0, "a4"

    .line 52
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 53
    .local v3, "context":Landroid/content/Context;
    move-object v3, v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 55
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "amdc.dg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v2, "domainGrouup":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 57
    return-object v2

    .line 59
    :cond_0
    return-object v0

    .line 61
    .end local v2    # "domainGrouup":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDomainGroup ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_DnsUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getFlag(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .line 273
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRealPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    return v1

    .line 277
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_1
    return v1
.end method

.method public static getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    const-string v0, "HTTP_DNS_DnsUtil"

    const/4 v1, 0x0

    .line 296
    .local v1, "serverUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 298
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const-string v0, ""

    return-object v0

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get httpdns url from setting,dnsUrl=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-object v1

    .line 306
    :cond_1
    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "getHttpdnsServerUrl exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static getSignData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "requsetBody"    # Ljava/lang/String;
    .param p2, "ts"    # Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 397
    .local v1, "signPlain":Ljava/lang/StringBuffer;
    move-object v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWsid()Ljava/lang/String;
    .locals 4

    .line 456
    const-string v0, "HTTP_DNS_DnsUtil"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getWorkspaceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "wsid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mpaas properties loaded, wsid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    return-object v1

    .line 459
    .end local v1    # "wsid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 460
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWsid ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static ipToBytesByReg(Ljava/lang/String;)[B
    .locals 5
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 240
    .local v0, "ret":[B
    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .local v1, "ipArr":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_1
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 242
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 243
    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 244
    const/4 v2, 0x3

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    return-object v0

    .line 246
    .end local v1    # "ipArr":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid IP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 13
    .param p0, "ip"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    .line 140
    .local v2, "bytes":[C
    move-object v2, v1

    array-length v1, v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 141
    return v0

    .line 144
    :cond_1
    const/4 v1, 0x0

    .line 145
    .local v1, "cntOfColon":I
    const/4 v3, 0x1

    .line 146
    .local v3, "isLastCharColon":Z
    const/4 v4, 0x0

    .line 147
    .local v4, "continuousColonAppear":Z
    const/4 v5, 0x0

    .line 149
    .local v5, "n":I
    const/4 v6, 0x0

    .line 150
    .local v6, "i":I
    aget-char v7, v2, v0

    const/16 v8, 0x3a

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    add-int/lit8 v6, v6, 0x1

    aget-char v7, v2, v9

    if-eq v7, v8, :cond_2

    .line 153
    return v0

    .line 152
    :cond_2
    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_0

    .line 150
    :cond_3
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 157
    :goto_0
    array-length v11, v2

    if-ge v6, v11, :cond_a

    .line 158
    aget-char v11, v2, v6

    .line 159
    .local v7, "c":C
    move v7, v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v10, "cval":I
    move v10, v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 161
    shl-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v10

    .line 162
    move v5, v11

    const v12, 0xffff

    if-le v11, v12, :cond_4

    .line 163
    return v0

    .line 165
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 166
    :cond_5
    if-ne v7, v8, :cond_9

    .line 167
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x7

    if-le v1, v11, :cond_6

    .line 168
    return v0

    .line 171
    :cond_6
    if-eqz v3, :cond_8

    .line 172
    if-eqz v4, :cond_7

    .line 173
    return v0

    .line 175
    :cond_7
    const/4 v4, 0x1

    .line 176
    goto :goto_1

    .line 178
    :cond_8
    const/4 v5, 0x0

    .line 179
    const/4 v3, 0x1

    .line 157
    .end local v7    # "c":C
    .end local v10    # "cval":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    :cond_9
    return v0

    .line 184
    :cond_a
    return v9

    .line 185
    .end local v1    # "cntOfColon":I
    .end local v2    # "bytes":[C
    .end local v3    # "isLastCharColon":Z
    .end local v4    # "continuousColonAppear":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    :catchall_0
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isIPv6Address ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_DnsUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static isLogicHost(Ljava/lang/String;)Z
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    return v1

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    .line 219
    .local v2, "bytes":[C
    move-object v2, v0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 220
    return v1

    .line 222
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 223
    aget-char v3, v2, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    aget-char v3, v2, v0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_5

    :cond_2
    aget-char v3, v2, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    aget-char v3, v2, v0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_5

    :cond_3
    aget-char v3, v2, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_4

    aget-char v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_4
    aget-char v3, v2, v0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    aget-char v3, v2, v0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 225
    return v1

    .line 222
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static isLogicIP(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_1
    nop

    .line 107
    const-string v0, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isLogicIPv6(Ljava/lang/String;)Z
    .locals 4
    .param p0, "ipv6"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    return v0

    .line 120
    :cond_0
    const-string v1, "^([\\dA-F]{1,4}:|((?=.*(::))(?!.*\\3.+\\3))\\3?)([\\dA-F]{1,4}(\\3|:\\b)|\\2){5}(([\\dA-F]{1,4}(\\3|:\\b|$)|\\2){2}|(((2[0-4]|1\\d|[1-9])?\\d|25[0-5])\\.?\\b){4})\\z"

    const/4 v2, 0x0

    .line 123
    .local v2, "rex":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 127
    .end local v2    # "rex":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLogicIPv6 ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_DnsUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sttl"    # Ljava/lang/String;

    .line 198
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseSign()Z
    .locals 2

    .line 384
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_USE_SIGN:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 385
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "dnsSign":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x1

    return v1

    .line 389
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static mergerHttpdnsIp(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 6
    .param p0, "httpdnsIP1"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .param p1, "httpdnsIP2"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 321
    const-string v0, "HTTP_DNS_DnsUtil"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .local v2, "list1":Ljava/util/List;
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 330
    .local v3, "list2":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 331
    .local v5, "resultList":Ljava/util/List;
    move-object v5, v4

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    nop

    .line 335
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    check-cast v4, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 336
    .local v4, "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    return-object p0

    .line 339
    .end local v2    # "list1":Ljava/util/List;
    .end local v3    # "list2":Ljava/util/List;
    .end local v4    # "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v5    # "resultList":Ljava/util/List;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    .line 340
    .local v2, "ex":Ljava/lang/Exception;
    :goto_0
    const-string/jumbo v3, "mergerHttpdnsIp exception"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-object v1

    .line 322
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v2, "HttpdnsIp is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v1
.end method

.method public static putConfigVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "configVersion"    # Ljava/lang/String;

    .line 471
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "httpdns_configversion"

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    return-void
.end method
