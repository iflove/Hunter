.class public Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
.super Ljava/lang/Object;
.source "AlipayHttpDnsClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_Ahds"

.field public static final WORK_MODEL_COMPLETE:B = 0x0t

.field public static final WORK_MODEL_NO_COMPLETE:B = 0x1t

.field public static alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

.field static dnsSwitch:Z


# instance fields
.field private a:I

.field private b:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

.field private c:Z

.field private d:J

.field public dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field private e:Ljava/lang/String;

.field public httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

.field public mContext:Landroid/content/Context;

.field networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:J

    .line 79
    const-string/jumbo v0, "mygw.alipay.com"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->e:Ljava/lang/String;

    .line 142
    const-string v0, "HTTP_DNS_Ahds"

    const-string v1, "AlipayHttpDnsClient create."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->init(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    .line 153
    iput p2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:I

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Z

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:J

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_PRE_LOAD:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "T"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "preload dns"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->reloadDns()V

    .line 167
    :cond_0
    return-void
.end method

.method private static a()V
    .locals 4

    .line 119
    const-string v0, "HTTP_DNS_Ahds"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isOpenAmdcSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 124
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 125
    .local v1, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH_DEBUG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "T"

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 128
    const-string v2, "AlipayHttpDnsClient init, In the closed HTTPDNS development environment"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlipayHttpDnsClient init, dnsSwitch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "httpdns switch exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d()V

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "HTTP_DNS_Ahds"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "isInHosts : host is null."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getHosts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    .line 180
    .local v3, "localHosts":Ljava/util/ArrayList;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isRpcCdnHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    return v2

    .line 183
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_3
    const-string v0, "localHosts is null."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v2
.end method

.method private static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MOBILEGW_PRE_SET_IPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 446
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 449
    .local v2, "gwIps":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    return-object v1

    .line 454
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v3, "addressList":Ljava/util/List;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v1, "ip":Ljava/lang/String;
    move-object v1, v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v1    # "ip":Ljava/lang/String;
    goto :goto_0

    .line 463
    :cond_2
    return-object v3
.end method

.method private b(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 379
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByNameFromHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v1

    .line 381
    .local v2, "inetAddresses":[Ljava/net/InetAddress;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "httpdns"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 384
    return-object v2

    .line 387
    .end local v2    # "inetAddresses":[Ljava/net/InetAddress;
    :cond_0
    return-object v1
.end method

.method private c()V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->countObservers()I

    move-result v0

    if-gtz v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$2;-><init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BLACK_LIST_DNS_HOST_NAME:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 402
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Blacklist host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "host is null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d()V
    .locals 2

    .line 707
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$3;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    .line 733
    return-void
.end method

.method private static d(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "mobilegw.alipay.com"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mobilegwspdy.alipay.com"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    return-object v0

    .line 430
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b()Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    .line 431
    .local v2, "addressList":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 432
    :cond_2
    :goto_0
    return-object v0

    .line 437
    .end local v2    # "addressList":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "ee":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllByNameFromPreset exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_Ahds"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v1    # "ee":Ljava/lang/Exception;
    return-object v0
.end method

.method public static dnsClientInit(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "hosts"    # Ljava/lang/String;
    .param p2, "pFlag"    # I

    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClientInit(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 96
    return-void
.end method

.method public static dnsClientInit(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "hosts"    # Ljava/lang/String;
    .param p2, "pFlag"    # I
    .param p3, "updateFromServer"    # Z

    .line 100
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;-><init>(Landroid/content/Context;I)V

    .line 106
    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHosts(Ljava/lang/String;Z)V

    .line 109
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a()V

    .line 112
    return-void
.end method

.method public static getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    .locals 1

    .line 91
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    return-object v0
.end method


# virtual methods
.method public addHttpDnsUpdateObserver(Ljava/util/Observer;)V
    .locals 2
    .param p1, "observer"    # Ljava/util/Observer;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addHttpDnsUpdateObserver:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_DNS_Ahds"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->addObserver(Ljava/util/Observer;)V

    .line 686
    return-void
.end method

.method public deleteIpByHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->deleteIpByHost(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public feedback(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .param p4, "rtt"    # I

    const-string v0, "HTTP_DNS_Ahds"

    .line 262
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_FEEDBACK:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 263
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 264
    .local v2, "dnsFeedback":Ljava/lang/String;
    const-string v3, "T"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    const-string/jumbo v1, "network unavailable,do nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 278
    :cond_2
    if-eqz p3, :cond_3

    .line 279
    return-void

    .line 283
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 284
    return-void

    .line 303
    .end local v2    # "dnsFeedback":Ljava/lang/String;
    :cond_4
    return-void

    .line 270
    .restart local v2    # "dnsFeedback":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void

    .line 301
    .end local v2    # "dnsFeedback":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 302
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feedback ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .line 331
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 334
    .local v2, "inetAddresses":[Ljava/net/InetAddress;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 335
    return-object v2

    .line 339
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    move-object v3, v1

    .line 340
    .local v3, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 345
    .end local v3    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 347
    .local v1, "presetInetAddresses":[Ljava/net/InetAddress;
    move-object v1, v3

    if-eqz v3, :cond_2

    .line 348
    const-string v3, "HTTP_DNS_Ahds"

    const-string v4, "getAllByNameFromPreset Success."

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object v1

    .line 351
    :cond_2
    throw v0
.end method

.method public getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 358
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 361
    .local v2, "inetAddresses":[Ljava/net/InetAddress;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 362
    return-object v2

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllByName,e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP_DNS_Ahds"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 370
    .local v1, "presetInetAddresses":[Ljava/net/InetAddress;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 371
    const-string v3, "getAllByNameFromPreset Success."

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-object v1

    .line 374
    :cond_1
    throw v0
.end method

.method public getAllByNameFromHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    const-string v0, "HTTP_DNS_Ahds"

    .line 468
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 470
    .local v3, "ips":[Ljava/lang/String;
    move-object v3, v2

    if-eqz v2, :cond_1

    array-length v2, v3

    if-lez v2, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getAllByNameFromHttpDns ,use httpdns,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    array-length v2, v3

    new-array v2, v2, [Ljava/net/InetAddress;

    .line 473
    .local v2, "inetAddresses":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 474
    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 476
    .end local v4    # "i":I
    :cond_0
    return-object v2

    .line 480
    .end local v2    # "inetAddresses":[Ljava/net/InetAddress;
    .end local v3    # "ips":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "getAllByNameFromHttpDns exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "HTTP_DNS_Ahds"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    .end local v0    # "e":Ljava/net/UnknownHostException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:I

    return v0
.end method

.method public getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;-><init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    return-object v0
.end method

.method public getInitTime()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:J

    return-wide v0
.end method

.method public getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 195
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v0, :cond_0

    .line 196
    const-string v0, "HTTP_DNS_Ahds"

    const-string v1, "getIpInfoByHost. dnsSwitch is false."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    return-object v0
.end method

.method public getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    const-string v0, "HTTP_DNS_Ahds"

    .line 493
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 494
    .local v3, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v3, v2

    const-string v4, "getIpsByHttpDns host : "

    if-nez v2, :cond_0

    .line 495
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,HttpdnsIP=[ null ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-object v1

    .line 499
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "ips":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,ips=["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    return-object v2

    .line 502
    .end local v2    # "ips":[Ljava/lang/String;
    .end local v3    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :catchall_0
    move-exception v2

    .line 503
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getIpsByHttpDns ex"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v2    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string v1, "http_dns_last_time"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 738
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 740
    :cond_0
    const-string v0, "HTTP_DNS_Ahds"

    const-string v1, "getNetworkType mContext is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v0, -0x1

    return v0
.end method

.method public isHttpdnsDie()Z
    .locals 4

    const-string v0, "HTTP_DNS_Ahds"

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getIpInfoByHttpdns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1

    const/4 v2, 0x0

    .line 763
    .local v2, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isDie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const-string v1, "httpdns die, request again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestStrong()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    const/4 v0, 0x1

    return v0

    .line 770
    .end local v2    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :cond_0
    goto :goto_0

    .line 768
    :catchall_0
    move-exception v1

    .line 769
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHttpdnsDie ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Z

    return v0
.end method

.method public putSingleHttpdnsIp(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "httpdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->putSingleIp2CacheAndDB(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    const-string v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "putSingleHttpdnsIp exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 9
    .param p1, "hostName"    # Ljava/lang/String;

    const-string v0, " , ipInfo="

    .line 511
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    const/4 v2, 0x0

    const-string v3, "HTTP_DNS_Ahds"

    if-nez v1, :cond_0

    .line 512
    const-string/jumbo v0, "queryLocalIPByHost. dnsSwitch is false."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-object v2

    .line 517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getIpInfoByHttpdns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    .line 519
    .local v4, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v4, v1

    const-string/jumbo v5, "queryLocalIPByHost hostName="

    if-nez v1, :cond_1

    .line 520
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , ipInfo=[null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-object v2

    .line 523
    :cond_1
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isDie()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    const-string/jumbo v0, "queryLocalIPByHost ,httpdns die, request again"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestStrong()V

    .line 526
    return-object v2

    .line 528
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    const-string/jumbo v1, "queryLocalIPByHost ,httpdns cache expired, request again..."

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    sget-object v5, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    .line 535
    :cond_3
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isHasIPv6()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnableIPv6()Z

    move-result v1

    if-nez v1, :cond_6

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v1, "ipEntryList":Ljava/util/List;
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v5

    .line 540
    .local v5, "orignIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_5

    .line 541
    aget-object v7, v5, v6

    iget v7, v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    sget v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V4:I

    if-ne v7, v8, :cond_4

    .line 542
    aget-object v7, v5, v6

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 545
    .end local v6    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryLocalIPByHost,switch off,filter-out ipv6,hostName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    return-object v4

    .line 550
    .end local v1    # "ipEntryList":Ljava/util/List;
    .end local v5    # "orignIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :cond_6
    return-object v4

    .line 551
    .end local v4    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :catchall_0
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryLocalIPByHost ex:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v2
.end method

.method public refreshAll()V
    .locals 2

    .line 209
    const-string v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "refreshAll ,refreshIPList and Conf..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    .line 211
    return-void
.end method

.method public refreshIPListOnly()V
    .locals 3

    .line 217
    const-string v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "refreshIPList ONLY..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(ILcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 219
    return-void
.end method

.method public reloadDns()V
    .locals 4

    const-string v0, "HTTP_DNS_Ahds"

    .line 620
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v1

    .line 621
    .local v1, "netType":I
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getAllIpFromDB(I)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 623
    .local v3, "ipMap":Ljava/util/Map;
    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->storeIp2Cache(Ljava/util/Map;)V

    .line 626
    const-string/jumbo v2, "reloadDns success..."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1    # "netType":I
    .end local v3    # "ipMap":Ljava/util/Map;
    :cond_0
    return-void

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reloadDns exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public saveLastUpdateTime()V
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "http_dns_last_time"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 676
    return-void
.end method

.method public setErrorByHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 231
    const-string v0, "HTTP_DNS_Ahds"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setErrorByHost,host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t in list,ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    const-string/jumbo v1, "network isn\'t available,do nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setErrorByHost,host=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v1

    .line 253
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setErrorByHost ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public storeIp2CacheAndDB(Ljava/util/Map;)V
    .locals 2
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 577
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->storeIp2Cache(Ljava/util/Map;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->storeIp2DB(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    const-string v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "storeIp2CacheAndDB exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 578
    :cond_1
    :goto_0
    return-void
.end method

.method public storeIp2DB(Ljava/util/Map;)V
    .locals 3
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 560
    const-string v0, "HTTP_DNS_Ahds"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v1

    .line 565
    .local v1, "netType":I
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->storeIp2DB(Ljava/util/Map;I)V

    .line 567
    const-string/jumbo v2, "storeIp2DB complete..."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v1    # "netType":I
    return-void

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "storeIp2DB exception "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void

    .line 561
    :cond_1
    :goto_0
    return-void
.end method

.method public updateDnsTtl(I)V
    .locals 7
    .param p1, "ttlUnit"    # I

    const-string v0, "HTTP_DNS_Ahds"

    .line 640
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 642
    .local v1, "time":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->reloadDns()V

    .line 646
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 648
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 649
    .local v4, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v4, v5

    invoke-virtual {v5, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 650
    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 651
    .end local v4    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    goto :goto_0

    .line 652
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getCache()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->storeIp2DB(Ljava/util/Map;)V

    .line 653
    const-string/jumbo v3, "updateDnsTtl complete..."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 655
    :cond_2
    const-string/jumbo v3, "updateDnsTtl failure..."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1    # "time":J
    return-void

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "updateDnsTtl exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public updateIp2CacheAndDB(Ljava/util/Map;)V
    .locals 1
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 593
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->httpdnsStorage:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->updateIp2CacheAndDB(Ljava/util/Map;)V

    .line 597
    return-void

    .line 594
    :cond_1
    :goto_0
    return-void
.end method
