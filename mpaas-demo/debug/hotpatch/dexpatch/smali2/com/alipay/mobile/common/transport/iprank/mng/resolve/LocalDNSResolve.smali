.class public Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
.super Ljava/lang/Object;
.source "LocalDNSResolve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_DNSResolve"

.field private static a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

.field public mContext:Landroid/content/Context;

.field public storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 183
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "original hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "newException":Ljava/net/UnknownHostException;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    nop

    .line 193
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 188
    move-object v1, p1

    check-cast v1, Ljava/net/UnknownHostException;

    throw v1

    .line 190
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

.method private a(Ljava/lang/String;[Ljava/net/InetAddress;I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "inetAddresses"    # [Ljava/net/InetAddress;
    .param p3, "ttlConfig"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/net/InetAddress;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 223
    .local v1, "time":J
    array-length v3, p2

    .line 224
    .local v3, "len":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v4, "list":Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v5

    .line 228
    .local v5, "tmpLbsId":J
    iget-object v7, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v7

    .line 230
    .local v7, "curNetType":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 233
    aget-object v9, p2, v8

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-static {v9}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 238
    new-instance v9, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    invoke-direct {v9}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;-><init>()V

    .line 240
    .local v0, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v0, v9

    iput-wide v5, v9, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    .line 241
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 242
    aget-object v9, p2, v8

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    .line 243
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    .line 244
    mul-int/lit8 v9, p3, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v9, v1

    iput-wide v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    .line 245
    iput v7, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    .line 247
    const/4 v9, 0x0

    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 248
    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 249
    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 250
    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    .line 251
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    .line 252
    iput-wide v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 253
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 255
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v0    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 257
    .end local v8    # "i":I
    :cond_2
    return-object v4

    .line 219
    .end local v1    # "time":J
    .end local v3    # "len":I
    .end local v4    # "list":Ljava/util/ArrayList;
    .end local v5    # "tmpLbsId":J
    .end local v7    # "curNetType":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;I[Ljava/net/InetAddress;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ttl_config"    # I
    .param p4, "inetAddresses"    # [Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;I[",
            "Ljava/net/InetAddress;",
            ")V"
        }
    .end annotation

    .line 133
    if-eqz p4, :cond_4

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->removeNotInLocaldns(Ljava/lang/String;[Ljava/net/InetAddress;)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 141
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 142
    .local v2, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpRankManager()Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->isIpRankModelInDB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)Z

    move-result v3

    .line 143
    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    iget-object v4, v2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpRankModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-result-object v3

    .line 145
    .local v1, "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v1, v3

    if-eqz v3, :cond_2

    .line 149
    iget-wide v3, v2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    iput-wide v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    .line 150
    iget-wide v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    mul-int/lit8 v5, p3, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    .line 152
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->updateIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 153
    .end local v1    # "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    goto :goto_1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->putIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 140
    .end local v2    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->reloadIpInfoToCache(Ljava/lang/String;)V

    .line 161
    return-void

    .line 134
    :cond_4
    :goto_2
    return-void
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

    .line 123
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    const-string v0, "IPR_DNSResolve"

    const-string v1, "getAllByName\uff0cexception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 128
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;[Ljava/net/InetAddress;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/net/InetAddress;
    .param p3, "x3"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;[Ljava/net/InetAddress;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;Ljava/util/ArrayList;I[Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/net/InetAddress;

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;Ljava/util/ArrayList;I[Ljava/net/InetAddress;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    .line 55
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    return-object v0

    .line 55
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .line 79
    nop

    .line 81
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GET_ALL_BY_NAME_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 82
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 83
    new-instance v2, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;-><init>(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 84
    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    .line 86
    new-instance v2, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;-><init>(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;[Ljava/net/InetAddress;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 103
    const-string v2, "IPR_DNSResolve"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocalDNSResolve success,host="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",ips="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    nop

    .line 117
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/util/concurrent/Future;)V

    .line 104
    return-object v1

    .line 117
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    :try_start_1
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-nez v2, :cond_1

    .line 109
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_0

    .line 111
    invoke-static {p1, v2}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1

    .line 113
    :cond_0
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1

    .line 107
    :cond_1
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/util/concurrent/Future;)V

    throw p1
.end method

.method public removeNotInLocaldns(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "inetAddresses"    # [Ljava/net/InetAddress;

    .line 167
    :try_start_0
    const-string v0, "("

    .line 168
    .local v0, "ipParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->removeipsNotinLocaldns(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v0    # "ipParam":Ljava/lang/String;
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeNotInLocaldns ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPR_DNSResolve"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
