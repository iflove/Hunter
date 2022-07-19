.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;
.super Ljava/lang/Object;
.source "HttpDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAllByNameHelper"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 1126
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1268
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "original hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v0, "newException":Ljava/net/UnknownHostException;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    nop

    .line 1278
    return-object v0

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 1273
    move-object v1, p1

    check-cast v1, Ljava/net/UnknownHostException;

    throw v1

    .line 1275
    :cond_0
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p0, "future"    # Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "[",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1258
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v0

    .line 1263
    const-string v0, "HTTP_DNS"

    const-string/jumbo v1, "requestInetAddresses exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1264
    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .line 1179
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getCache(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1180
    .local v2, "inetAddrCache":[Ljava/net/InetAddress;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1181
    const-string v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAllByName. From memcache get "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IP"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    return-object v2

    .line 1185
    :cond_0
    monitor-enter p1

    .line 1186
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getCache(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1187
    .local v1, "inetAddrCache2":[Ljava/net/InetAddress;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1188
    const-string v0, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllByName. From memcache get "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    monitor-exit p1

    return-object v1

    .line 1191
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->b(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1192
    .end local v1    # "inetAddrCache2":[Ljava/net/InetAddress;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4

    .line 1218
    nop

    .line 1220
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "localdns"

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 1221
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GET_ALL_BY_NAME_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 1222
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 1223
    new-instance v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {v2, v3, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1224
    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    nop

    .line 1238
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/util/concurrent/Future;)V

    .line 1225
    return-object v1

    .line 1226
    :catchall_0
    move-exception v1

    .line 1227
    :try_start_1
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-nez v2, :cond_1

    .line 1230
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1231
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_0

    .line 1232
    invoke-static {p1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1

    .line 1234
    :cond_0
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1

    .line 1228
    :cond_1
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1238
    :catchall_1
    move-exception p1

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/util/concurrent/Future;)V

    throw p1
.end method


# virtual methods
.method public asyncLocalDns2Cache(Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    .line 1196
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    .line 1197
    .local v1, "requestFuture":Ljava/util/concurrent/Future;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GET_ALL_BY_NAME_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 1201
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    .line 1202
    .local v0, "timeout":I
    new-instance v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;Ljava/util/concurrent/Future;)V

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1215
    return-void

    .line 1198
    .end local v0    # "timeout":I
    :cond_1
    :goto_0
    return-void
.end method

.method public clearCache()V
    .locals 4

    .line 1313
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1317
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1318
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1320
    :catchall_1
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearCache error, msg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 1136
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_MODEL_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "ipRankSwitch":Ljava/lang/String;
    const-string v1, "T"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "httpdns getAllByName,use ip rank,host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP_DNS"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 1145
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 1148
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 1155
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_H5_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "ipH5Switch":Ljava/lang/String;
    const-string v1, "HTTP_DNS"

    const-string v2, "T"

    if-eqz p2, :cond_0

    iget-byte v3, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1157
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1158
    const-string v2, "H5 don\'t use ip rank"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 1164
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_MODEL_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "ipRankSwitch":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1167
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "httpdns getAllByName,use ip rank,host:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 1171
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 1174
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getCache(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    .line 1284
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;

    move-object v2, v0

    .line 1285
    .local v2, "simpleLocalDnsModel":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 1286
    return-object v0

    .line 1289
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;->isExpiration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    const-string v1, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCache. cache expire host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1292
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    monitor-exit p0

    .line 1294
    return-object v0

    .line 1293
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "host":Ljava/lang/String;
    :try_start_2
    throw v1

    .line 1297
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;->inetAddressesCache:[Ljava/net/InetAddress;

    move-object v3, v0

    .line 1298
    .local v3, "inetAddressesCache":[Ljava/net/InetAddress;
    move-object v3, v1

    if-eqz v1, :cond_3

    array-length v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    .line 1302
    :cond_2
    const-string v1, "localCacheDns"

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 1303
    const-string v1, "HTTP_DNS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCache. host="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", address len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1304
    return-object v3

    .line 1299
    :cond_3
    :goto_0
    return-object v0

    .line 1305
    .end local v2    # "simpleLocalDnsModel":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;
    .end local v3    # "inetAddressesCache":[Ljava/net/InetAddress;
    :catchall_1
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "HTTP_DNS"

    const-string v3, "getCache fail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1308
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 1327
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1331
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1332
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "host":Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1328
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1334
    :catchall_1
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeCache error, host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public store2Cache(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "inetAddresses"    # [Ljava/net/InetAddress;

    .line 1243
    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1247
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    const/4 v1, 0x0

    .line 1248
    .local v1, "simpleLocalDnsModel":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;
    move-object v1, v0

    iput-object p2, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;->inetAddressesCache:[Ljava/net/InetAddress;

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->localDnsExpire:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;->expirTime:J

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v0, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "store2Cache. host="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", inetAddresses len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1244
    .end local v1    # "simpleLocalDnsModel":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$SimpleLocalDnsModel;
    :cond_1
    :goto_0
    return-void
.end method
