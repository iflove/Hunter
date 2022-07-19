.class public Lcom/alipay/mobile/common/transport/context/TransportContext;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;,
        Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;
    }
.end annotation


# static fields
.field public static final BIZ_TYPE_DJG:B = 0x3t

.field public static final BIZ_TYPE_H5:B = 0x2t

.field public static final BIZ_TYPE_LOG:B = 0x5t

.field public static final BIZ_TYPE_NBNET_UP:B = 0x6t

.field public static final BIZ_TYPE_RPC:B = 0x1t

.field public static final BIZ_TYPE_RSRC:B = 0x4t

.field public static final DEFAULT_LINK:B = 0x1t

.field public static final LOCAL_AMNET_LINK:B = 0x4t

.field public static final SPDY_LINK:B = 0x2t

.field private static final a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;


# instance fields
.field public allowedRetryDuration:I

.field public api:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizLog:Ljava/lang/String;

.field public bizType:B

.field public choseExtLinkType:I

.field public context:Landroid/content/Context;

.field public currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

.field public dcList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/DataContainer;",
            ">;"
        }
    .end annotation
.end field

.field public deviceTrafficStateInfo:Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

.field public enableHttpCache:Z

.field public extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loggerLevel:Ljava/lang/String;

.field public mInitd:Z

.field public mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

.field public mRadicalStrategy:Z

.field public net0:I

.field public net1:I

.field public onlyWifiRequest:Z

.field public originRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field public perfLog:Ljava/lang/String;

.field public printUrlToMonitorLog:Z

.field public reqGzip:Z

.field public routeInfo:Ljava/lang/String;

.field public rpcUUID:Ljava/lang/String;

.field public signErrorCode:Ljava/lang/String;

.field public sslCount:I

.field public startExecutionTime:J

.field public targetSpi:Ljava/lang/String;

.field public taskFinishedTimeMillis:J

.field public taskRetryedCount:I

.field public tcpCount:I

.field public transportByLocalAmnet:Z

.field public urgentFlag:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    .line 98
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    .line 100
    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 107
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    .line 109
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->printUrlToMonitorLog:Z

    .line 111
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->targetSpi:Ljava/lang/String;

    .line 118
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mRadicalStrategy:Z

    .line 120
    iput v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->tcpCount:I

    .line 122
    iput v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->sslCount:I

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    .line 130
    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskFinishedTimeMillis:J

    .line 133
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->transportByLocalAmnet:Z

    .line 136
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->urgentFlag:Z

    .line 139
    iput v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskRetryedCount:I

    .line 145
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->onlyWifiRequest:Z

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->signErrorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExtInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    const/4 v1, 0x0

    .line 182
    .local v1, "dc":Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;-><init>()V

    move-object v1, v0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    return-object v1

    .line 177
    .end local v1    # "dc":Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    return-object v0
.end method

.method public getExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFastReturnFailure()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->originRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isFastReturnFailure()Z

    move-result v0

    return v0
.end method

.method public isInitd()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    return v0
.end method

.method public isOnlyWifiRequest()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->onlyWifiRequest:Z

    return v0
.end method

.method public isRequestByMRPC()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    const-string/jumbo v1, "mrpc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRpcBizType()Z
    .locals 2

    .line 284
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setInitd(Z)V
    .locals 0
    .param p1, "initd"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    .line 263
    return-void
.end method
