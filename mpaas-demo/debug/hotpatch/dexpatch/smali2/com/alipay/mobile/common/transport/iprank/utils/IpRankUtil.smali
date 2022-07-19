.class public Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;
.super Ljava/lang/Object;
.source "IpRankUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_IpRankUtil"

.field private static a:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-wide v0, 0x40b8ea23126e978dL    # 6378.137

    sput-wide v0, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 4
    .param p0, "d"    # D

    .line 76
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getDistance(DDDD)D
    .locals 16
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .line 89
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a(D)D

    move-result-wide v0

    .line 90
    .local v0, "radLat1":D
    invoke-static/range {p4 .. p5}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a(D)D

    move-result-wide v2

    .line 91
    .local v2, "radLat2":D
    sub-double v4, v0, v2

    .line 92
    .local v4, "a":D
    invoke-static/range {p2 .. p3}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a(D)D

    move-result-wide v6

    invoke-static/range {p6 .. p7}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 93
    .local v6, "b":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v10, v4, v8

    .line 94
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    div-double v14, v6, v8

    .line 95
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    .line 93
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    .line 96
    sget-wide v8, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->a:D

    mul-double v10, v10, v8

    .line 98
    return-wide v10
.end method

.method public static getDistance(Ljava/lang/String;Ljava/lang/String;)D
    .locals 13
    .param p0, "lbs1"    # Ljava/lang/String;
    .param p1, "lbs2"    # Ljava/lang/String;

    const-string v0, ";"

    .line 61
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 62
    .local v3, "locations1":[Ljava/lang/String;
    move-object v3, v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 63
    .local v5, "lat1":D
    const/4 v1, 0x1

    aget-object v7, v3, v1

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 64
    .local v7, "lng1":D
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v2, "locations2":[Ljava/lang/String;
    move-object v2, v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 66
    .local v9, "lat2":D
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 68
    .local v11, "lng2":D
    invoke-static/range {v5 .. v12}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getDistance(DDDD)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 69
    .end local v2    # "locations2":[Ljava/lang/String;
    .end local v3    # "locations1":[Ljava/lang/String;
    .end local v5    # "lat1":D
    .end local v7    # "lng1":D
    .end local v9    # "lat2":D
    .end local v11    # "lng2":D
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "IPR_IpRankUtil"

    const-string v2, "getDistance Throwable"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    return-wide v1
.end method

.method public static getLatLng(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, ";"

    const-string v1, ""

    const-string v2, "IPR_IpRankUtil"

    .line 34
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    return-object v1

    .line 38
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getLatitude()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .local v4, "lat":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getLongitude()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "lng":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "latlng: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    .end local v4    # "lat":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "getLatLng return null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    return-object v3

    .line 47
    .end local v5    # "lng":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    move-object v0, v3

    .line 48
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "getLatLng Throwable"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 107
    :cond_0
    const-string v0, "IPR_IpRankUtil"

    const-string v1, "getNetworkType context is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, -0x1

    return v0
.end method
