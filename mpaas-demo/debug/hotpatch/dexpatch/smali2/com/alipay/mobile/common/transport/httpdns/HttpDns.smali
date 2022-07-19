.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.super Ljava/lang/Object;
.source "HttpDns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;,
        Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;
    }
.end annotation


# static fields
.field public static IP_TYPE_V4:I = 0x0

.field public static IP_TYPE_V6:I = 0x0

.field public static final REQ_STATUS_BUSY:I = 0x1

.field public static final REQ_STATUS_IDLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HTTP_DNS"

.field public static localDnsExpire:J


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

.field private d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

.field private e:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

.field private f:Landroid/content/Context;

.field public fail:Z

.field private g:I

.field private h:I

.field public hashost:Z

.field public httpServerUrl:Ljava/lang/String;

.field public httpdns_domain:Ljava/lang/String;

.field public httpdns_port:I

.field private i:J

.field private j:J

.field private k:Z

.field public path:Ljava/lang/String;

.field public final schema:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->localDnsExpire:J

    .line 82
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V4:I

    .line 83
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V6:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "http://"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->schema:Ljava/lang/String;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:J

    .line 78
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:J

    .line 80
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAmdcHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/query"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    .line 110
    const/16 v0, 0x50

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    .line 112
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 116
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    .line 119
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:J

    .line 121
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;-><init>()V

    return-void
.end method

.method private a(JLjava/util/Map;)J
    .locals 2
    .param p1, "dnsStoreTime"    # J
    .param p3, "parseResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)J"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0, p3}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->storeIp2CacheAndDB(Ljava/util/Map;)V

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long p1, v0, p1

    .line 500
    :cond_0
    return-wide p1
.end method

.method private a(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    .locals 5
    .param p1, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 367
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;-><init>()V

    .line 369
    .local v0, "requestObj":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    const-string v2, "HTTP_DNS"

    if-eq p1, v1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setS(I)V

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Request Opt:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 375
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTP_DNS_V2:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v3, "T"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 379
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getDomainGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setDg(Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_1

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getDomains()Ljava/util/List;

    move-result-object v1

    move-object v4, v3

    .line 383
    .local v4, "domains":Ljava/util/List;
    move-object v4, v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setDomains(Ljava/util/List;)V

    goto :goto_1

    .line 384
    :cond_3
    :goto_0
    const-string v1, "domains is null"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v4    # "domains":Ljava/util/List;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoUtil;->getLastUserId()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v4, "uid":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 392
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setUid(Ljava/lang/String;)V

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setClientVersion(Ljava/lang/String;)V

    .line 396
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setUtdid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    move-object v1, v3

    goto :goto_2

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getWsid()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v1, "wsid":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 402
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setWsid(Ljava/lang/String;)V

    .line 405
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v3, "configVersion":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 407
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setConfigVersion(Ljava/lang/String;)V

    .line 410
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setNetType(I)V

    .line 412
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->setIpType(I)V

    .line 414
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 6

    const-string v0, "HTTP_DNS"

    .line 249
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const-string v0, ""

    return-object v0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 255
    .local v3, "urlFromSetting":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "host":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "debug mode,url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    return-object v3

    .line 266
    .end local v2    # "host":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 267
    .end local v3    # "urlFromSetting":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 268
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .end local v2    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method private declared-synchronized a(I)Ljava/lang/String;
    .locals 3
    .param p1, "count"    # I

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    .local v1, "reqUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 138
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 146
    .end local v1    # "reqUrl":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 142
    .restart local v1    # "reqUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isUseSign()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 143
    :try_start_3
    const-string/jumbo v0, "query"

    const-string/jumbo v2, "squery"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    .line 145
    :cond_1
    nop

    .line 149
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 145
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 146
    .end local v1    # "reqUrl":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_5
    const-string v1, "HTTP_DNS"

    const-string/jumbo v2, "selectUrl ex:"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 149
    .end local v0    # "ex":Ljava/lang/Throwable;
    :try_start_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-object v0

    .line 149
    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 135
    .end local p1    # "count":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Ljava/lang/String;
    .locals 6
    .param p1, "count"    # I
    .param p2, "httpdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 216
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 217
    .local v1, "ips":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 219
    .local v3, "length":I
    move v3, v0

    if-lez v0, :cond_3

    .line 221
    const-string v0, ":"

    const-string v4, "http://"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 222
    aget-object v2, v1, v2

    .line 223
    .local v2, "ip":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0

    .line 225
    .end local v2    # "ip":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 226
    if-lt v3, v2, :cond_1

    .line 227
    aget-object v2, v1, v5

    .line 228
    .restart local v2    # "ip":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0

    .line 231
    .end local v2    # "ip":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0

    .line 237
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "length <= 0,use host "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HTTP_DNS"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 631
    const-string v0, ""

    .line 633
    .local v0, "applicationVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 634
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 635
    .local v2, "info":Landroid/content/pm/PackageInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 640
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "HTTP_DNS"

    const-string v3, "getApplicationVersion exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private a(JJLjava/lang/String;ZILjava/lang/String;)V
    .locals 7
    .param p1, "dnsRTT"    # J
    .param p3, "dnsStoreTime"    # J
    .param p5, "clientIp"    # Ljava/lang/String;
    .param p6, "oversea"    # Z
    .param p7, "ttd"    # I
    .param p8, "reqUrl"    # Ljava/lang/String;

    const-string/jumbo v0, "ms"

    const-string v1, "HTTPDNS"

    const-string v2, "HTTP_DNS"

    .line 579
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 580
    .local v5, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v5, v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 581
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 582
    const-string v1, "INFO"

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 583
    const-string v1, "http"

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "DNS_STORE_TIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "DNS_RTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "RESULT"

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    if-eqz v3, :cond_0

    const-string v3, "F"

    goto :goto_0

    :cond_0
    const-string v3, "T"

    :goto_0
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CLIENT_IP"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "OVERSEA"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "TTD"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "REQNUM"

    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "URL"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "BACKUP"

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CONFIGVER"

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    const-string v1, "GROUND"

    if-eqz v0, :cond_2

    .line 601
    :try_start_1
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "FG"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "BG"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 607
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ERROR"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getLocalIPv6Address()Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    .line 611
    .local v1, "ipv6Address":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 612
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "IPv6"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 616
    const-string v3, ""

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    .line 617
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z

    .line 618
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    .end local v1    # "ipv6Address":Ljava/lang/String;
    .end local v5    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 620
    :catchall_0
    move-exception v0

    .line 621
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "mutli_host"    # Ljava/lang/String;

    .line 305
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 306
    .local v1, "arr_host":[Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 308
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .param p1, "x1"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 7
    .param p1, "count"    # I

    const-string v0, "HTTP_DNS"

    .line 163
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 166
    .local v3, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(ILcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getWorkspaceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTP_DNS_AMDC_IP:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 178
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v2, "amdcBackIP":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0

    .line 185
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v1, "backUrl":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    .line 188
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "0.0.0.0"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 189
    if-nez v5, :cond_3

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isp break,use embedded ip,url= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-object v1

    .line 195
    :catch_0
    move-exception v5

    .line 196
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UnknownHostException,use embedded ip,url= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    return-object v1

    .line 201
    .end local v1    # "backUrl":Ljava/lang/String;
    .end local v2    # "amdcBackIP":Ljava/lang/String;
    .end local v3    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :catchall_0
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOnlieUrl ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v1    # "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 2
    .param p1, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 1062
    monitor-enter p0

    .line 1063
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1064
    const-string v0, "HTTP_DNS"

    const-string v1, "REQ_STATUS_BUSY, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    monitor-exit p0

    return-void

    .line 1067
    :cond_0
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 1068
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1071
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 1074
    return-void

    .line 1073
    :catchall_0
    move-exception v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    throw v1

    .line 1068
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private b()Z
    .locals 8

    .line 510
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isOpenAmdcSwitch()Z

    move-result v0

    const-string v1, "HTTP_DNS"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 511
    const-string v0, "dnsSwitch is off"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return v2

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    const-string/jumbo v0, "network is not available..."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return v2

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 523
    return v3

    .line 527
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 530
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->notifyPush2UpdateInfo(Landroid/content/Context;Z)V

    .line 531
    const-string/jumbo v0, "sendRequest,workMode: NO_COMPLETE, not allowed httpdns request,notify push to update..."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return v2

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRealPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 538
    const-string/jumbo v0, "not push process, ingore httpdns request"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return v2

    .line 542
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    const/16 v4, 0x14

    if-le v0, v4, :cond_6

    .line 543
    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:J

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 544
    iput v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:J

    goto :goto_0

    .line 547
    :cond_5
    const-string v0, "already request 20 an hour,return"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return v2

    .line 552
    :cond_6
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:I

    .line 553
    return v3
.end method

.method private c()V
    .locals 8

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->getLastUpdateTime()J

    move-result-wide v0

    .line 1012
    .local v0, "lastUpdateTime":J
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 1013
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTPDNS_REQUEST_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1017
    .local v2, "hdnsReqInterval":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 1018
    const-string v3, "HTTP_DNS"

    const-string/jumbo v4, "weakSyncSendRequest ,(System.currentTimeMillis() - reqLastTime) < 10m, return."

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-void

    .line 1022
    :cond_0
    monitor-enter p0

    .line 1023
    :try_start_0
    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1024
    const-string v3, "HTTP_DNS"

    const-string v4, "REQ_STATUS_BUSY, return."

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    monitor-exit p0

    return-void

    .line 1027
    :cond_1
    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 1028
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1031
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "HTTP_DNS"

    const-string/jumbo v5, "\u5f00\u59cb\u6267\u884c\u5f31\u8bf7\u6c42..."

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 1035
    return-void

    .line 1034
    :catchall_0
    move-exception v4

    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    throw v4

    .line 1028
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .locals 1

    .line 91
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    return-object v0
.end method


# virtual methods
.method public addStrongTaskToPool()V
    .locals 1

    .line 759
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addStrongTaskToPool(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 760
    return-void
.end method

.method public addStrongTaskToPool(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 1
    .param p1, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 766
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 767
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method public addTaskToPool()V
    .locals 1

    .line 702
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 703
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public declared-synchronized cleanErrorIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    monitor-enter p0

    .line 661
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->deleteSingleIpFromDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 664
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 660
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delayRequestStrong(I)V
    .locals 1
    .param p1, "delaySec"    # I

    .line 719
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(ILcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 720
    return-void
.end method

.method public delayRequestStrong(ILcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 1
    .param p1, "delaySec"    # I
    .param p2, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 731
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 733
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;ILcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 743
    return-void

    .line 728
    :cond_1
    :goto_0
    return-void
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 650
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDnsLocalManager()Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    return-object v0
.end method

.method public declared-synchronized getDomains()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "domains":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-ne v1, v2, :cond_2

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 355
    .local v2, "n":I
    move v2, v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    .local v1, "m_host":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    .end local v1    # "m_host":Ljava/lang/String;
    .end local v2    # "n":I
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 361
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 347
    .end local v0    # "domains":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    return-object v0
.end method

.method public getHosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public httpDnsRequest()V
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addTaskToPool()V

    .line 696
    :cond_0
    return-void
.end method

.method public httpDnsRequestStrong()V
    .locals 1

    .line 746
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 747
    return-void
.end method

.method public httpDnsRequestStrong(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 1
    .param p1, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 753
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addStrongTaskToPool(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 756
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    .line 101
    return-void
.end method

.method public notifyUpdateConfig(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 1
    .param p1, "coreConfig"    # Ljava/lang/String;
    .param p2, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    if-eq p2, v0, :cond_0

    .line 562
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V

    .line 574
    :cond_0
    return-void
.end method

.method public requestStrong()V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 714
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 715
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong()V

    .line 716
    return-void

    .line 711
    :cond_1
    :goto_0
    return-void
.end method

.method public requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V
    .locals 2
    .param p1, "type"    # Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 672
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 679
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    if-ne p1, v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 683
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 684
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 685
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V

    goto :goto_1

    .line 681
    :cond_2
    :goto_0
    return-void

    .line 687
    :cond_3
    :goto_1
    return-void

    .line 673
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 676
    :cond_5
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 677
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 678
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V

    return-void

    .line 674
    :cond_6
    :goto_3
    return-void
.end method

.method public sendRequest()V
    .locals 1

    .line 419
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 420
    return-void
.end method

.method public sendRequest(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 24
    .param p1, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 424
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    return-void

    .line 428
    :cond_0
    const-wide/16 v0, 0x0

    .line 429
    .local v0, "dnsRTT":J
    const-wide/16 v2, 0x0

    .line 430
    .local v2, "dnsStoreTime":J
    const-string v4, ""

    .line 431
    .local v4, "clientIp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 432
    .local v5, "oversea":Z
    const/4 v6, 0x0

    .line 433
    .local v6, "ttd":I
    iget-object v7, v15, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    .line 435
    .local v7, "urlStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v8

    .line 436
    sget-object v9, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTPDNS_RETRY_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v14

    .line 438
    .local v14, "retryCount":I
    const/4 v8, 0x1

    .local v8, "i":I
    const/4 v9, 0x0

    move-wide v10, v2

    move-object v12, v4

    move v13, v5

    move/from16 v16, v6

    move-object v3, v9

    move-object/from16 v17, v3

    move-wide v1, v0

    move v9, v8

    .end local v0    # "dnsRTT":J
    .end local v2    # "dnsStoreTime":J
    .end local v4    # "clientIp":Ljava/lang/String;
    .end local v5    # "oversea":Z
    .end local v6    # "ttd":I
    .end local v8    # "i":I
    .local v1, "dnsRTT":J
    .local v9, "i":I
    .local v10, "dnsStoreTime":J
    .local v12, "clientIp":Ljava/lang/String;
    .local v13, "oversea":Z
    .local v16, "ttd":I
    :goto_0
    if-gt v9, v14, :cond_4

    .line 441
    const/4 v4, 0x1

    const-string v5, "HTTP_DNS"

    if-eq v9, v4, :cond_1

    .line 442
    const-wide/16 v18, 0xbb8

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 480
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v15

    goto/16 :goto_2

    .line 444
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "SEND HTTP_DNS REQUEST : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;

    iget-object v6, v15, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;-><init>(Landroid/content/Context;)V

    .line 448
    .local v0, "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 451
    .end local v1    # "dnsRTT":J
    .local v18, "dnsRTT":J
    :try_start_2
    invoke-direct {v15, v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v2, v1

    .line 452
    .end local v7    # "urlStr":Ljava/lang/String;
    .local v2, "urlStr":Ljava/lang/String;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8bf7\u6c42url: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    nop

    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->getStrategyFromServer(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 455
    .local v3, "resp":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    move-object/from16 v20, v1

    .end local v3    # "resp":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .local v20, "resp":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    if-eqz v1, :cond_3

    .line 458
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v18, v6, v18

    .line 459
    const-string v1, "RECEIVED DNS INFO"

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;->getClientIp()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 462
    .end local v12    # "clientIp":Ljava/lang/String;
    .local v6, "clientIp":Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;->isOversea()Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 463
    .end local v13    # "oversea":Z
    .local v7, "oversea":Z
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;->getTtd()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 464
    .end local v16    # "ttd":I
    .local v8, "ttd":I
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;->getConf()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 466
    .local v12, "confStr":Ljava/lang/String;
    move-object/from16 v13, p1

    invoke-virtual {v15, v12, v13}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->notifyUpdateConfig(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 468
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;->getDns()Ljava/util/Map;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v3, v17

    .line 469
    .local v3, "parseResult":Ljava/util/Map;
    move-object v3, v1

    if-nez v1, :cond_2

    .line 470
    :try_start_8
    const-string/jumbo v1, "\u89e3\u6790\u7ed3\u679c\u4e3anull"

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 485
    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v4, v3

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v3    # "parseResult":Ljava/util/Map;
    .local v4, "parseResult":Ljava/util/Map;
    .local v21, "urlStr":Ljava/lang/String;
    move-wide/from16 v2, v18

    move/from16 v22, v14

    move-object v14, v4

    .end local v4    # "parseResult":Ljava/util/Map;
    .local v14, "parseResult":Ljava/util/Map;
    .local v22, "retryCount":I
    move-wide v4, v10

    move/from16 v23, v9

    .end local v9    # "i":I
    .local v23, "i":I
    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(JJLjava/lang/String;ZILjava/lang/String;)V

    .line 471
    return-void

    .line 480
    .end local v0    # "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .end local v12    # "confStr":Ljava/lang/String;
    .end local v20    # "resp":Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .local v14, "retryCount":I
    :catchall_1
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v3

    move-object v12, v6

    move v13, v7

    move/from16 v16, v8

    move-object/from16 v17, v14

    move-object v14, v15

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto/16 :goto_2

    .line 475
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v0    # "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v12    # "confStr":Ljava/lang/String;
    .restart local v14    # "retryCount":I
    :cond_2
    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v3

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    :try_start_9
    invoke-direct {v15, v10, v11, v14}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(JLjava/util/Map;)J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v3, v12

    .end local v12    # "confStr":Ljava/lang/String;
    .local v3, "confStr":Ljava/lang/String;
    move-wide v12, v1

    .line 477
    .end local v10    # "dnsStoreTime":J
    .local v12, "dnsStoreTime":J
    :try_start_a
    iget-object v1, v15, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->saveLastUpdateTime()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 485
    move-object/from16 v9, p0

    move-wide/from16 v10, v18

    move-object v1, v14

    .local v1, "parseResult":Ljava/util/Map;
    move-object v14, v6

    move-object v2, v15

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v21

    invoke-direct/range {v9 .. v17}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(JJLjava/lang/String;ZILjava/lang/String;)V

    return-void

    .line 480
    .end local v0    # "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .end local v1    # "parseResult":Ljava/util/Map;
    .end local v3    # "confStr":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v14

    move-object/from16 v17, v1

    move/from16 v16, v8

    move-wide v10, v12

    move-object v14, v15

    move-object v12, v6

    move v13, v7

    goto/16 :goto_2

    .end local v12    # "dnsStoreTime":J
    .restart local v10    # "dnsStoreTime":J
    :catchall_3
    move-exception v0

    move-object v1, v14

    move-object/from16 v17, v1

    move-object v12, v6

    move v13, v7

    move/from16 v16, v8

    move-object v14, v15

    goto/16 :goto_2

    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    :catchall_4
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v12, v6

    move v13, v7

    move/from16 v16, v8

    move-object v14, v15

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto/16 :goto_2

    .end local v8    # "ttd":I
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    .restart local v16    # "ttd":I
    :catchall_5
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v12, v6

    move v13, v7

    move-object v14, v15

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto :goto_2

    .end local v7    # "oversea":Z
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "oversea":Z
    .restart local v14    # "retryCount":I
    :catchall_6
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v12, v6

    move-object v14, v15

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto :goto_2

    .end local v6    # "clientIp":Ljava/lang/String;
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .local v12, "clientIp":Ljava/lang/String;
    .restart local v14    # "retryCount":I
    :catchall_7
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v15

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto :goto_2

    .line 455
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v0    # "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    :cond_3
    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v2, v15

    .line 485
    .end local v0    # "sDownloader":Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    move-object/from16 v1, p0

    move-object v14, v2

    goto :goto_3

    .line 480
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v2    # "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    :catchall_8
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v15

    move-object/from16 v20, v3

    .end local v2    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto :goto_2

    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .local v7, "urlStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    :catchall_9
    move-exception v0

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v15

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    goto :goto_2

    .end local v18    # "dnsRTT":J
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .local v1, "dnsRTT":J
    .restart local v9    # "i":I
    .restart local v14    # "retryCount":I
    :catchall_a
    move-exception v0

    move/from16 v23, v9

    move/from16 v22, v14

    move-object v14, v15

    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    .line 481
    .end local v1    # "dnsRTT":J
    .end local v7    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "retryCount":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v18    # "dnsRTT":J
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v22    # "retryCount":I
    .restart local v23    # "i":I
    :goto_2
    :try_start_b
    iput-boolean v4, v14, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 482
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 485
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v1, p0

    :goto_3
    move-wide/from16 v2, v18

    move-wide v4, v10

    move-object v6, v12

    move v7, v13

    move/from16 v8, v16

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(JJLjava/lang/String;ZILjava/lang/String;)V

    .line 486
    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    .line 438
    .end local v18    # "dnsRTT":J
    .end local v21    # "urlStr":Ljava/lang/String;
    .restart local v1    # "dnsRTT":J
    .restart local v7    # "urlStr":Ljava/lang/String;
    add-int/lit8 v9, v23, 0x1

    move-object v15, v14

    move/from16 v14, v22

    .end local v23    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_0

    .line 485
    .end local v1    # "dnsRTT":J
    .end local v7    # "urlStr":Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v18    # "dnsRTT":J
    .restart local v21    # "urlStr":Ljava/lang/String;
    .restart local v23    # "i":I
    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-wide v4, v10

    move-object v6, v12

    move v7, v13

    move/from16 v8, v16

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(JJLjava/lang/String;ZILjava/lang/String;)V

    throw v0

    .line 488
    .end local v18    # "dnsRTT":J
    .end local v21    # "urlStr":Ljava/lang/String;
    .end local v22    # "retryCount":I
    .end local v23    # "i":I
    .restart local v1    # "dnsRTT":J
    .restart local v7    # "urlStr":Ljava/lang/String;
    .restart local v14    # "retryCount":I
    :cond_4
    return-void
.end method

.method public setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V
    .locals 0
    .param p1, "dnsLocalManager"    # Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    .line 1111
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    .line 1112
    return-void
.end method

.method public declared-synchronized setErrorByHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 655
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->deleteIpByHost(Ljava/lang/String;)V

    .line 656
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 657
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 654
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .end local p1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 326
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cdn"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mobilegw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alipayobjects"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :cond_3
    monitor-exit p0

    return-void

    .line 324
    .end local p1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHosts(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "mutli_host"    # Ljava/lang/String;
    .param p2, "updateFromServer"    # Z

    monitor-enter p0

    .line 280
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 288
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 291
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isMainProcessRuning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->notifyPush2UpdateInfo(Landroid/content/Context;Z)V

    .line 294
    const-string v0, "HTTP_DNS"

    const-string/jumbo v1, "setHosts, workMode: NO_COMPLETE, not allowed httpdns request,notify push to update ..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 299
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    .line 300
    const-string v0, "HTTP_DNS"

    const-string v1, "Start polling everything"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_2
    monitor-exit p0

    return-void

    .line 279
    .end local p1    # "mutli_host":Ljava/lang/String;
    .end local p2    # "updateFromServer":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 281
    .restart local p1    # "mutli_host":Ljava/lang/String;
    .restart local p2    # "updateFromServer":Z
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method
