.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
.super Ljava/lang/Enum;
.source "BatteryID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum AMNET_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum BLUETOOTH:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

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

.field public static final enum LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum MAP:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum MEDIA_RECORD:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum NORMAL_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum SEND_BROADCAST:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum SENSOR:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final STATS_LONG_TIME_CONSUME:Ljava/lang/String; = "longTimeCost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_WARNNING_NAME:Ljava/lang/String; = "warnName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_WARNNING_VALUE:Ljava/lang/String; = "warnVal"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WAKE_LOCK:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WEB_VIEW:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WIFI_SCAN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v1, "STATISTIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 18
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v3, "SAMPLE_STATS"

    const/4 v4, 0x1

    const-string v5, "STATS"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 22
    new-instance v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v5, "MEDIA_RECORD"

    const/4 v6, 0x2

    const-string v7, "RECORD"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MEDIA_RECORD:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 26
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v7, "LOCATION"

    const/4 v8, 0x3

    const-string v9, "LOC"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 30
    new-instance v7, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v9, "MAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MAP:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 34
    new-instance v9, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v11, "WIFI_SCAN"

    const/4 v12, 0x5

    const-string v13, "SCAN"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WIFI_SCAN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 38
    new-instance v11, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v13, "NORMAL_ALARM"

    const/4 v14, 0x6

    const-string v15, "N_ALARM"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->NORMAL_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 42
    new-instance v13, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v15, "AMNET_ALARM"

    const/4 v14, 0x7

    const-string v12, "A_ALARM"

    invoke-direct {v13, v15, v14, v12}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->AMNET_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 46
    new-instance v12, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v15, "SENSOR"

    const/16 v14, 0x8

    invoke-direct {v12, v15, v14, v15}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SENSOR:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 50
    new-instance v15, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v14, "WAKE_LOCK"

    const/16 v10, 0x9

    const-string v8, "WAKE"

    invoke-direct {v15, v14, v10, v8}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WAKE_LOCK:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 54
    new-instance v8, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v14, "WEB_VIEW"

    const/16 v10, 0xa

    const-string v6, "H5"

    invoke-direct {v8, v14, v10, v6}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WEB_VIEW:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 58
    new-instance v6, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v14, "BLUETOOTH"

    const/16 v10, 0xb

    const-string v4, "BT"

    invoke-direct {v6, v14, v10, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->BLUETOOTH:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 62
    new-instance v4, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v14, "SEND_BROADCAST"

    const/16 v10, 0xc

    const-string v2, "BROADCAST"

    invoke-direct {v4, v14, v10, v2}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SEND_BROADCAST:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 66
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string v14, "UNKNOWN"

    const/16 v10, 0xd

    move-object/from16 v16, v4

    const-string v4, "NA"

    invoke-direct {v2, v14, v10, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 9
    const/16 v4, 0xe

    new-array v4, v4, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

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

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v10

    sput-object v4, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 99
    .local v3, "value":Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v3    # "value":Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1

    .line 9
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    return-object v0
.end method
