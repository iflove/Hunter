.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
.super Ljava/lang/Enum;
.source "PerformanceID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v1, "MONITORPOINT_NETWORK"

    const/4 v2, 0x0

    const-string/jumbo v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 21
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v3, "MONITORPOINT_WEBAPP"

    const/4 v4, 0x1

    const-string/jumbo v5, "webapp"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 26
    new-instance v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v5, "MONITORPOINT_H5EXCEPTION"

    const/4 v6, 0x2

    const-string v7, "H5Exception"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 31
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v7, "MONITORPOINT_SDKMONITOR"

    const/4 v8, 0x3

    const-string/jumbo v9, "sdkmonitor"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 36
    new-instance v7, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v9, "MONITORPOINT_SYNCLINK"

    const/4 v10, 0x4

    const-string/jumbo v11, "synclink"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 41
    new-instance v9, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v11, "MONITORPOINT_SYNCPROTO"

    const/4 v12, 0x5

    const-string/jumbo v13, "syncproto"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 46
    new-instance v11, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v13, "MONITORPOINT_PERFORMANCE"

    const/4 v14, 0x6

    const-string/jumbo v15, "performance"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 51
    new-instance v13, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v15, "MONITORPOINT_FOOTPRINT"

    const/4 v14, 0x7

    const-string v12, "footprint"

    invoke-direct {v13, v15, v14, v12}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 56
    new-instance v12, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string v15, "MONITORPOINT_KEYBIZTRACE"

    const/16 v14, 0x8

    const-string v10, "keybiztrace"

    invoke-direct {v12, v15, v14, v10}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 11
    const/16 v10, 0x9

    new-array v10, v10, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    .local v3, "value":Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v3    # "value":Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1

    .line 11
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    return-object v0
.end method
