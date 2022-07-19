.class public Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_NetManager"

.field public static final changeInterval:J = 0x36ee80L

.field public static final maxTimesLimit:J = 0xcL


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:B

.field public changeBegin:J

.field public changeCount:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field lastConnected:Ljava/lang/Boolean;

.field netSubType:I

.field netType:I

.field neverReceive:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    .line 72
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    .line 73
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    .line 75
    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c:B

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "count"    # I

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    const-string v1, "http_dns_netchangecount"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 326
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstTime"    # Z

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    .local v1, "netinfoDetail":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    return-void

    .line 170
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "netinfoDetail":Ljava/lang/String;
    return-void

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP_DNS_NetManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "netinfoDetail"    # Ljava/lang/String;
    .param p2, "firstTime"    # Z

    .line 415
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v1, 0x0

    .line 416
    .local v1, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    const-string v2, "NetChange"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 417
    const-string v0, "1.0"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v2, "NetInfo"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    .line 425
    const-string v2, "Ground"

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "Fg"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "Bg"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isVpnUsed()Z

    move-result v0

    .line 432
    const-string v2, "T"

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "VPN"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_1
    if-eqz p2, :cond_2

    .line 437
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "First"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 441
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HTTP_DNS_NetManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private a()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "HTTP_DNS_NetManager"

    const-string/jumbo v2, "wallet isn\'t at front desk,httpdns ignore netchange"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return v1

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    return v1

    .line 207
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c(Landroid/content/Context;)I

    move-result v0

    .line 120
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->clearCache()V

    .line 122
    const-string v0, "HTTP_DNS_NetManager"

    const-string v3, "NetworkManager#onReceive \u7f51\u7edc\u53d8\u5316"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    if-eqz v3, :cond_0

    .line 124
    const-string v3, "NetworkManager#onReceive first receive,ignore"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    .line 127
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$2;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)V

    const-wide/16 v3, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4, v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 134
    return v2

    .line 138
    :cond_0
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$3;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$3;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    return v2

    .line 150
    :cond_1
    const-string/jumbo v3, "\u7f51\u7edc\u5207\u6362\uff0c\u53d1\u9001\u5f3a\u8bf7\u6c42"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    .line 154
    :cond_2
    return v1
.end method

.method private a(ZII)Z
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "type"    # I
    .param p3, "subType"    # I

    .line 309
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    const-string v1, "HTTP_DNS_NetManager"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    nop

    .line 313
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    if-ne v0, p3, :cond_2

    .line 314
    const-string v0, " Old contivity broadcast\uff01"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_1
    :goto_0
    const-string v0, " New contivity broadcast\uff01"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
    .param p1, "x1"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private b()Z
    .locals 7

    .line 215
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    .line 217
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(I)V

    .line 219
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    int-to-long v2, v0

    const-string v0, "HTTP_DNS_NetManager"

    const-wide/16 v4, 0xc

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    .line 222
    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 223
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(I)V

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e()V

    .line 226
    const-string v2, "interval more than one hour,set changeCount 1"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    const-string/jumbo v1, "netchange exceeds 12 ,ignore it"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpdns network change,changeCount= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return v1
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 180
    return v0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 183
    return v0

    .line 185
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    return v0

    .line 189
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private c(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 271
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 273
    .local v1, "activeNetworkInfo":Landroid/net/NetworkInfo;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "HTTP_DNS_NetManager"

    if-nez v0, :cond_0

    .line 274
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    .line 276
    return v2

    .line 279
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 280
    .local v0, "available":Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 281
    .local v4, "connected":Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 282
    .local v5, "type":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 283
    .local v6, "subType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "extraInfo":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(ZII)Z

    move-result v8

    if-nez v8, :cond_1

    .line 286
    const/4 v2, 0x2

    return v2

    .line 290
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    .line 291
    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    .line 292
    iput v6, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " type=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] subType=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]  available=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] connected=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] detailedState=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "] extraInfo=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-static {v3, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " activeNetworkInfo hashcode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  activeNetworkInfo = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-static {v3, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    return v2

    .line 303
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private c()V
    .locals 5

    .line 243
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    .line 245
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    .line 250
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(I)V

    .line 253
    :cond_1
    return-void
.end method

.method private d()I
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    const-string v1, "http_dns_netchangecount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getIntData(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "HTTP_DNS_NetManager"

    .line 359
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v3, v2

    .line 363
    .local v3, "activeNetworkInfo":Landroid/net/NetworkInfo;
    move-object v3, v1

    const-string v4, "]"

    const/4 v5, 0x1

    if-nez v1, :cond_1

    .line 364
    :try_start_1
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c:B

    if-ne v1, v5, :cond_0

    .line 365
    const-string/jumbo v1, "network is not available,repeat broadcast,ignore"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-object v2

    .line 368
    :cond_0
    iput-byte v5, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c:B

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    .line 371
    const-string/jumbo v1, "no net"

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    .line 373
    const-string v1, "current no net"

    .local v1, "netinfoDetail":Ljava/lang/String;
    goto/16 :goto_0

    .line 375
    .end local v1    # "netinfoDetail":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c:B

    .line 377
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    .line 378
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->e:Ljava/lang/String;

    .line 379
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .restart local v1    # "netinfoDetail":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 383
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 384
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    move-object v6, v2

    .line 385
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object v6, v5

    if-eqz v5, :cond_3

    .line 386
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v2, "bssid":Ljava/lang/String;
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bssid=["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 391
    :cond_2
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "ssid":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 393
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ssid=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 399
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lastTypeName=["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 402
    :cond_4
    return-object v1

    .line 403
    .end local v1    # "netinfoDetail":Ljava/lang/String;
    .end local v3    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    .line 404
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNetinfoDetail ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "dns_netchange_begin"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 340
    return-void
.end method

.method private f()J
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    const-string v1, "dns_netchange_begin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "HTTP_DNS_NetManager"

    const-string v1, "httpdns manager close"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpdns exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 267
    :cond_0
    return-void
.end method

.method public declared-synchronized setNetworkContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->c()V

    .line 91
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 113
    .local v1, "mFilter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 81
    .end local v1    # "mFilter":Landroid/content/IntentFilter;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
