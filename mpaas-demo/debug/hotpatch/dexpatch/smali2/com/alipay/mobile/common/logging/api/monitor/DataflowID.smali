.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
.super Ljava/lang/Enum;
.source "DataflowID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V2:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V3:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final DEFAULT_BUNDLE:Ljava/lang/String; = "bundle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_DIAGNOSE:Ljava/lang/String; = "diagnose"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FALSE:Ljava/lang/String; = "0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TRUE:Ljava/lang/String; = "1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum H5_ASPECT:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum H5_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final HOST_NBNET:Ljava/lang/String; = "__host_nbnet__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_PUSH:Ljava/lang/String; = "__host_push__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_SYNC:Ljava/lang/String; = "__host_sync__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_MDAP:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MDAP_LOG:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MULTIMEDIA_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MULTIMEDIA_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum WEB_SOCKET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 23
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v1, "STATISTIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 27
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v3, "SAMPLE_STATS"

    const/4 v4, 0x1

    const-string v5, "STATS"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 31
    new-instance v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v5, "AMNET_SYNC"

    const/4 v6, 0x2

    const-string v7, "SYNC"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 35
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v7, "AMNET_PUSH"

    const/4 v8, 0x3

    const-string v9, "PUSH"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 39
    new-instance v7, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v9, "HTTPCLIENT_RPC"

    const/4 v10, 0x4

    const-string v11, "HC_RPC"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 43
    new-instance v9, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v11, "HTTPCLIENT_H5"

    const/4 v12, 0x5

    const-string v13, "HC_H5"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 47
    new-instance v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v13, "HTTPCLIENT_DJANGO"

    const/4 v14, 0x6

    const-string v15, "HC_DJG"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 51
    new-instance v13, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "HTTPCLIENT_NBNET"

    const/4 v14, 0x7

    const-string v12, "HC_NBN"

    invoke-direct {v13, v15, v14, v12}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 55
    new-instance v12, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "HTTPCLIENT_DOWNLOAD"

    const/16 v14, 0x8

    const-string v10, "HC_DL"

    invoke-direct {v12, v15, v14, v10}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 59
    new-instance v10, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "HTTPCLIENT_MDAP"

    const/16 v14, 0x9

    const-string v8, "HC_MDAP"

    invoke-direct {v10, v15, v14, v8}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_MDAP:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 63
    new-instance v8, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "WEB_SOCKET"

    const/16 v14, 0xa

    const-string v6, "WEB_SOC"

    invoke-direct {v8, v15, v14, v6}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->WEB_SOCKET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 67
    new-instance v6, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "H5_NATIVE"

    const/16 v14, 0xb

    const-string v4, "H5_GG"

    invoke-direct {v6, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 71
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "H5_UCCORE"

    const/16 v14, 0xc

    const-string v2, "H5_UC"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 75
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "H5_ASPECT"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "H5_AOP"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_ASPECT:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 79
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "MULTIMEDIA_DJANGO"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "MM_J"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 83
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "MULTIMEDIA_NATIVE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "MM_C"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 87
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "ASPECT_V1"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "AOP1"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 91
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "ASPECT_V2"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "AOP2"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V2:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 95
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "ASPECT_V3"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "AOP3"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V3:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 99
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "MONITOR"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "DIAG"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 103
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "MDAP_LOG"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "MDAP"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MDAP_LOG:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 107
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string v15, "UNKNOWN"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "NA"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 10
    const/16 v4, 0x16

    new-array v4, v4, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v2, v4, v0

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 140
    .local v3, "value":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v3    # "value":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1

    .line 10
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    return-object v0
.end method
