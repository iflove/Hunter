.class public Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;
.super Ljava/lang/Object;
.source "HttpdnsStorage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_Storage"

.field private static d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->c:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    .line 53
    return-void
.end method

.method private a(I)Ljava/util/Map;
    .locals 4
    .param p1, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-object v0, v2

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getNetType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 156
    :cond_1
    return-object v1

    .line 159
    :cond_2
    return-object v1

    .line 160
    .end local v0    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllIpFromCache exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_Storage"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netType"    # I

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeIpInfoFromDB(Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "httpdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void

    .line 333
    :cond_1
    :goto_0
    const-string v0, "HTTP_DNS_Storage"

    const-string/jumbo v1, "putSingleIp2Cache param is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "httpdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .param p3, "netType"    # I

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->insertIpinfo2DB(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;I)V

    .line 345
    return-void

    .line 341
    :cond_1
    :goto_0
    const-string v0, "HTTP_DNS_Storage"

    const-string/jumbo v1, "putSingleIp2DB param is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeSingleIpInfoFromDB(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .param p1, "parseResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 264
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "HTTP_DNS_Storage"

    const-string/jumbo v2, "updateIPInfo2Cache Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void

    .line 265
    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/util/Map;I)V
    .locals 3
    .param p0, "parseResult"    # Ljava/util/Map;
    .param p1, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;I)V"
        }
    .end annotation

    .line 250
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 252
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 255
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method private b(Ljava/util/Map;I)V
    .locals 1
    .param p1, "parseResult"    # Ljava/util/Map;
    .param p2, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;I)V"
        }
    .end annotation

    .line 275
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->updateIp2DB(Ljava/util/Map;I)V

    .line 279
    return-void

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    if-nez v1, :cond_1

    .line 43
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    .line 45
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;

    return-object v0

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public deleteIpByHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 181
    .local v0, "netType":I
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public deleteSingleIpFromDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 189
    .local v0, "netType":I
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    return-void
.end method

.method public getAllIpFromDB(I)Ljava/util/Map;
    .locals 1
    .param p1, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->getAllIPFromDB(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllIpInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 132
    .local v0, "netType":I
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 133
    .local v2, "result":Ljava/util/Map;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 134
    return-object v2

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getAllIpFromDB(I)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getIpFromCache(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "netType"    # I

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    return-object v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-object v2, v1

    .line 98
    .local v2, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v2, v0

    const-string v3, "getIpFromCache netType: "

    const-string v4, "HTTP_DNS_Storage"

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",no ipinfo in cache,domain:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v1

    .line 104
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getNetType()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hit it, domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v2

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getIpFromCache ,netType is different,will get from DB, domain : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v1
.end method

.method public getIpFromDB(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "netType"    # I

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->queryIpInfoFromDB(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    return-object v0
.end method

.method public getIpInfoByHttpdns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v1, "netType":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 71
    :cond_0
    const/4 v1, 0x3

    .line 74
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getIpFromCache(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    const/4 v2, 0x0

    .line 75
    .local v2, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 76
    return-object v2

    .line 78
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->getIpFromDB(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    .line 81
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_3
    return-object v2
.end method

.method public putSingleIp2CacheAndDB(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "httpdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 324
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 325
    .local v0, "netType":I
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;I)V

    .line 329
    return-void
.end method

.method public storeIp2Cache(Ljava/util/Map;)V
    .locals 2
    .param p1, "parseResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 298
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 304
    return-void

    .line 299
    :cond_1
    :goto_0
    const-string v0, "HTTP_DNS_Storage"

    const-string/jumbo v1, "putIpInfo2Cache param is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public storeIp2CacheAndDB(Ljava/util/Map;)V
    .locals 1
    .param p1, "parseResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 288
    .local v0, "netType":I
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/util/Map;I)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->storeIp2Cache(Ljava/util/Map;)V

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->storeIp2DB(Ljava/util/Map;I)V

    .line 291
    return-void
.end method

.method public storeIp2DB(Ljava/util/Map;I)V
    .locals 2
    .param p1, "parseResult"    # Ljava/util/Map;
    .param p2, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;I)V"
        }
    .end annotation

    .line 311
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->storeIp2DB(Ljava/util/Map;I)V

    .line 316
    return-void

    .line 312
    :cond_1
    :goto_0
    const-string v0, "HTTP_DNS_Storage"

    const-string/jumbo v1, "putIpInfo2DB param is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public updateIp2CacheAndDB(Ljava/util/Map;)V
    .locals 1
    .param p1, "parseResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v0

    .line 242
    .local v0, "netType":I
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/util/Map;I)V

    .line 244
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->a(Ljava/util/Map;)V

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsStorage;->b(Ljava/util/Map;I)V

    .line 247
    return-void
.end method
