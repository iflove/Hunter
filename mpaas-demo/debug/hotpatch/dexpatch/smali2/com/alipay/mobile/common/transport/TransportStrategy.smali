.class public Lcom/alipay/mobile/common/transport/TransportStrategy;
.super Ljava/lang/Object;
.source "TransportStrategy.java"


# static fields
.field public static final SWITCH_OPEN_STR:Ljava/lang/String; = "T"

.field public static final TAG:Ljava/lang/String; = "TransportStrategy"

.field private static a:[Ljava/lang/String;

.field private static b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:Z

.field private static e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "10.0.0.172"

    const-string v1, "10.0.0.200"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->a:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->d:Z

    .line 50
    const/4 v0, -0x2

    sput-byte v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->e:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)V
    .locals 6
    .param p0, "switchStateFromMetaData"    # Z

    .line 565
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:Landroid/util/Pair;

    .line 566
    return-void
.end method

.method private static a()Z
    .locals 3

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GZIP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 162
    const-string v0, "TransportStrategy"

    :try_start_0
    const-string v1, "RPC TRANSPORT CONFIG INIT"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p0, p2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->a()Z

    move-result v1

    iput-boolean v1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    .line 167
    iput-object p1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->setInitd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "RPC\u7f51\u7edc\u914d\u7f6e\u521d\u59cb\u65f6\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public static fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 2
    .param p0, "use"    # Z
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 58
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;-><init>()V

    const/4 v1, 0x0

    .line 59
    .local v1, "rpcReqConfig":Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;
    move-object v1, v0

    iput-boolean p0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    .line 60
    iput-object p1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    .line 61
    iput-object v1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    .line 62
    return-void
.end method

.method public static fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 214
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    .line 215
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    .line 216
    return-void
.end method

.method public static final getBeaconReportInternal()I
    .locals 2

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BEACON_REPORT_INTERNAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getBeaconReportMax()I
    .locals 2

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BEACON_REPORT_MAX:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getBeaconReportMaxInternal()I
    .locals 2

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BEACON_REPORT_MAX_INTERNAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static getBooleanFromMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaDataKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .line 594
    const-string v0, "TransportStrategy"

    if-eqz p0, :cond_1

    .line 595
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getMetaDataVO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 596
    .local v2, "metaDataSwitch":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 599
    :try_start_0
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .local v1, "switchStateFromMetaData":Z
    goto :goto_0

    .line 600
    .end local v1    # "switchStateFromMetaData":Z
    :catchall_0
    move-exception v1

    .line 601
    const/4 v1, 0x0

    .line 603
    .restart local v1    # "switchStateFromMetaData":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledAutoUpgrade. meta data switch is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 606
    .end local v1    # "switchStateFromMetaData":Z
    .end local v2    # "metaDataSwitch":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 607
    :cond_1
    const-string v1, "isEnabledAutoUpgrade. Oppps, context is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :goto_1
    return-object p2
.end method

.method public static final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getConnTimeout(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getEnableOnlyPushStatus()Ljava/lang/Boolean;
    .locals 5

    .line 504
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 507
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 510
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getHandshakTimeout()I
    .locals 2

    .line 258
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HANDSHAK_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getReadTimeout(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 76
    .local v0, "mng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    const-string v1, "TransportStrategy"

    if-nez p0, :cond_0

    .line 77
    const-string v2, "context is null. reivew code please !"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    return v1

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 84
    .local v2, "networkType":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReadTimeout networkType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    .line 100
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    return v1

    .line 94
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    return v1

    .line 92
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->THIRD_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    return v1

    .line 89
    :cond_3
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SECOND_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    return v1
.end method

.method public static final getStrategyVersion()Ljava/lang/String;
    .locals 2

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final incrementRpcErrorCount()V
    .locals 2

    .line 363
    const-string v0, "TransportStrategy"

    const-string v1, "incrementRpcErrorCount finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    .line 365
    return-void
.end method

.method public static final isAlipayHost(Ljava/lang/String;)Z
    .locals 2
    .param p0, "hostStr"    # Ljava/lang/String;

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    return v1

    .line 237
    :cond_0
    const-string v0, "alipay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    return v1

    .line 240
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlipayUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "urlStr"    # Ljava/lang/String;

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApiInList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "apiList"    # Ljava/lang/String;

    .line 429
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 434
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 435
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_2
    return v1

    .line 430
    :cond_3
    :goto_1
    return v1
.end method

.method public static isDisableBifrostRpcDowngrade()Z
    .locals 3

    .line 492
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BIFROST_DISABLSE_RPC_DOWNGRADE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .local v0, "enable":Z
    return v1

    .line 494
    .end local v0    # "enable":Z
    :catchall_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TransportStrategy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static final isDowngradeToHttps()Z
    .locals 2

    .line 375
    sget v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableBeacon()Z
    .locals 3

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->USE_IBEACON:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnableBifrost()Z
    .locals 10

    const-string v0, "TransportStrategy"

    .line 449
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->USE_BIFROST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v2

    move v3, v1

    .line 450
    .local v3, "enable":Z
    if-nez v2, :cond_0

    .line 451
    return v1

    .line 454
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BIFROST_BLACK_LIST_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    .line 455
    .local v5, "brand":Ljava/lang/String;
    move-object v5, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Brand(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "]"

    if-nez v2, :cond_1

    .line 456
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Brand is false. brandBlackList=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return v1

    .line 460
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v7, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BIFROST_BLACK_LIST_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v4

    .line 461
    .local v7, "model":Ljava/lang/String;
    move-object v7, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Model(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Model is false. modelBlackList=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v1

    .line 466
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v8, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BIFROST_BLACK_LIST_CPU:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v4

    .line 467
    .local v8, "cpuModel":Ljava/lang/String;
    move-object v8, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Hardware(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Hardware is false. cpuModelBlackList=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v1

    .line 472
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v9, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BIFROST_BLACK_LIST_SDK:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v4, "sdkVer":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4SdkVersion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "isUse4SdkVersion is false. sdkVersionBlackList=["

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    return v1

    .line 478
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 479
    .end local v3    # "enable":Z
    .end local v4    # "sdkVer":Ljava/lang/String;
    .end local v5    # "brand":Ljava/lang/String;
    .end local v7    # "model":Ljava/lang/String;
    .end local v8    # "cpuModel":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static isEnableIPv6()Z
    .locals 4

    .line 615
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->USE_IPV6:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 617
    return v0

    .line 624
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 625
    .end local v1    # "switchValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 626
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEnableIPv6 ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransportStrategy"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static final isEnableInitMergeSyncSwitch()Z
    .locals 3

    .line 342
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->INIT_MERGE_CMD:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "switchValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEnableInitMergeSyncSwitch=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportStrategy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isEnableNBNetDLSwitch()Z
    .locals 5

    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TransportStrategy"

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnabledNbnetDownloadSwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    .line 298
    .local v2, "isEnabled":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isEnableNBNetDLSwitch Setting\'s config: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 305
    .end local v2    # "isEnabled":Ljava/lang/Boolean;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const-string v0, "isEnableNBNetDLSwitch. Current users are overseas user."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NBNET_DL_OVERSEA_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "overseaSwitchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const-string v2, "isEnableNBNetDLSwitch. Oversea user disabled nbnet download!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x0

    return v1

    .line 316
    .end local v0    # "overseaSwitchValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NBNET_DL_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 318
    .local v2, "grayscaleResult":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[isEnableNBNetDLSwitch] grayscaleResult.  switchValue:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", grayscaleResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v2
.end method

.method public static final isEnableNBNetUPSwitch()Z
    .locals 5

    .line 323
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TransportStrategy"

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnabledNbnetUpSwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    .line 326
    .local v2, "isEnabled":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[isEnableNBNetUPSwitch] Setting\'s config = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 331
    .end local v2    # "isEnabled":Ljava/lang/Boolean;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NBNET_UP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 333
    .local v2, "grayscaleResult":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[isEnableNBNetUPSwitch] grayscaleResult.  switchValue:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", grayscaleResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v2
.end method

.method public static final isEnabledAmnet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 268
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getCurrentDataTunnlType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getCurrentDataTunnlType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 270
    return v1

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isEnabledAutoUpgrade()Z
    .locals 5

    .line 574
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    const-string v1, "auto_upgrade_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getBooleanFromMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v2

    .line 576
    .local v1, "switchStateFromMetaData":Ljava/lang/Boolean;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 581
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SUPPORT_AUTO_UPGRADE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 583
    .local v2, "switchStateFromGrayscale":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledAutoUpgrade. grayscale switch is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TransportStrategy"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return v2
.end method

.method public static isEnabledCacheAddress()Z
    .locals 3

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ENABLED_CACHE_ADDRESS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isEnabledDjangoSwitch()Z
    .locals 2

    .line 290
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DJG_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isEnabledOnlyPush()Z
    .locals 8

    .line 521
    const/4 v0, 0x0

    .local v0, "status":Ljava/lang/Boolean;
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getEnableOnlyPushStatus()Ljava/lang/Boolean;

    move-result-object v1

    .line 522
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 526
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/TransportStrategy;

    monitor-enter v1

    .line 527
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getEnableOnlyPushStatus()Ljava/lang/Boolean;

    move-result-object v2

    .line 528
    move-object v0, v2

    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v1

    return v2

    .line 533
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 534
    .local v4, "context":Landroid/content/Context;
    move-object v4, v2

    if-eqz v2, :cond_3

    .line 535
    const-string/jumbo v2, "only_push_switch"

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getMetaDataVO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    .local v3, "onlyPushSwitch":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v2, :cond_2

    .line 539
    :try_start_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .local v2, "switchStateFromMetaData":Z
    goto :goto_0

    .line 540
    .end local v2    # "switchStateFromMetaData":Z
    :catchall_0
    move-exception v2

    .line 541
    const/4 v2, 0x0

    .line 543
    .restart local v2    # "switchStateFromMetaData":Z
    :goto_0
    :try_start_2
    const-string v5, "TransportStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isEnabledOnlyPush. meta data switch is : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->a(Z)V

    .line 545
    monitor-exit v1

    return v2

    .line 547
    .end local v2    # "switchStateFromMetaData":Z
    .end local v3    # "onlyPushSwitch":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 548
    :cond_3
    const-string v2, "TransportStrategy"

    const-string v3, "isEnabledOnlyPush. Oppps, context is null."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SUPPORT_ONLY_PUSH_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "switchValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 554
    .local v3, "switchStateFromGrayscale":Z
    const-string v5, "TransportStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isEnabledOnlyPush. grayscale switch is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->a(Z)V

    .line 557
    monitor-exit v1

    return v3

    .line 558
    .end local v2    # "switchValue":Ljava/lang/String;
    .end local v3    # "switchStateFromGrayscale":Z
    .end local v4    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static final isEnabledRpcV2()Z
    .locals 2

    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final isEnabledTransportByLocalAmnet()Z
    .locals 4

    .line 634
    sget-boolean v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->d:Z

    const/4 v1, 0x0

    const-string v2, "TransportStrategy"

    if-nez v0, :cond_0

    .line 635
    const-string v0, "[isEnabledTransportByLocalAmnet] Cache flag be false."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return v1

    .line 639
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 640
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->TRANSPORT_LOCAL_AMNET:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "transportLocalAmnet":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnableBifrost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const-string v1, "[isEnabledTransportByLocalAmnet] result = true."

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v1, 0x1

    return v1

    .line 646
    :cond_1
    return v1
.end method

.method public static final isMobileWapProxyIp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 277
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_1
    return v2
.end method

.method public static final isOpenAmdcSwitch()Z
    .locals 5

    .line 656
    sget-byte v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->e:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 657
    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 658
    :cond_1
    const/4 v3, -0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    .line 659
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "use_amdc"

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getBooleanFromMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object v3, v4

    .line 660
    .local v3, "useAmdc":Ljava/lang/Boolean;
    move-object v4, v0

    .end local v3    # "useAmdc":Ljava/lang/Boolean;
    .local v4, "useAmdc":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->e:B

    .line 662
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 664
    :cond_2
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->e:B

    .line 667
    .end local v4    # "useAmdc":Ljava/lang/Boolean;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    .line 668
    .local v3, "dnsSwitch":Ljava/lang/String;
    const-string v4, "T"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 669
    const-string v0, "TransportStrategy"

    const-string v2, "dnsSwitch is off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return v1

    .line 672
    :cond_4
    return v2
.end method

.method public static final isOpenForceSpdyForSync()Z
    .locals 2

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SYNC_ONLY_SPDY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isRpcCdnHost(Ljava/lang/String;)Z
    .locals 3
    .param p0, "rpcCdnHost"    # Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CDN_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 245
    .local v1, "cdnUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 246
    return v2

    .line 249
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    return v2
.end method

.method public static isShortLinkOnly(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SHORTLINK_ONLY_RPCLIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isApiInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportShortLink(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;

    .line 384
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SHORTLINK_RPCLIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isApiInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportZstd(Ljava/lang/String;)Z
    .locals 6
    .param p0, "operationType"    # Ljava/lang/String;

    .line 403
    const-string v0, "TransportStrategy"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 406
    .local v2, "mng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ZSTD_BLACK_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isApiInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in zstd black list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return v1

    .line 412
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ZSTD_WHITE_LIST_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v3

    .line 413
    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 414
    return v4

    .line 418
    :cond_1
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ZSTD_WHITE_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isApiInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in zstd white list."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    return v4

    .line 424
    .end local v2    # "mng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    :cond_2
    goto :goto_0

    .line 422
    :catchall_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isSupportZstd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public static isVip()Z
    .locals 2

    .line 352
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WHITE_LIST_USER:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 353
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static loadConfig(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 183
    .local v2, "mConfigMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->isLoadedConfig()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 184
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 187
    .end local v2    # "mConfigMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TransportStrategy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static final resetRpcErrorCount()V
    .locals 2

    .line 368
    sget v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    if-lez v0, :cond_0

    .line 369
    const-string v0, "TransportStrategy"

    const-string/jumbo v1, "resetRpcErrorCount finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->c:I

    .line 372
    return-void
.end method

.method public static setEnabledLocamAmnetCacheFlag(Z)V
    .locals 0
    .param p0, "enabledLocamAmnetCacheFlag"    # Z

    .line 651
    sput-boolean p0, Lcom/alipay/mobile/common/transport/TransportStrategy;->d:Z

    .line 652
    return-void
.end method
