.class public Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;
.super Ljava/lang/Object;
.source "WestWoodModel.java"


# static fields
.field public static ERROR:Ljava/lang/Double;

.field private static a:I

.field private static b:D

.field private static c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a:I

    .line 34
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->ERROR:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DD)D
    .locals 7
    .param p0, "bk"    # D
    .param p2, "ts"    # D

    .line 74
    sget v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a:I

    const-wide/high16 v1, 0x3ee0000000000000L    # 7.62939453125E-6

    if-nez v0, :cond_0

    .line 75
    div-double v3, p0, p2

    mul-double v3, v3, v1

    .line 76
    sput-wide v3, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->b:D

    return-wide v3

    .line 78
    :cond_0
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    sget-wide v5, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->b:D

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double v3, v3, p0

    div-double/2addr v3, p2

    mul-double v3, v3, v1

    add-double/2addr v5, v3

    sput-wide v5, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->b:D

    return-wide v5
.end method


# virtual methods
.method public declared-synchronized calBw(DD)D
    .locals 6
    .param p1, "bk"    # D
    .param p3, "ts"    # D

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 48
    const-string v0, "WestWoodModel"

    const-string v1, "calBw error,ts can\'t small than 0.5ms"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->ERROR:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 52
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->b:D

    .line 54
    sget v2, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a:I

    if-nez v2, :cond_1

    .line 55
    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a:I

    .line 56
    div-double v0, p1, p3

    const-wide/high16 v2, 0x3ee0000000000000L    # 7.62939453125E-6

    mul-double v0, v0, v2

    .line 59
    sput-wide v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->c:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    :try_start_2
    sput v2, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->a:I

    .line 62
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    sget-wide v4, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->c:D

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    .line 66
    sput-wide v4, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->c:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v4

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "WestWoodModel"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "ex":Ljava/lang/Throwable;
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;->ERROR:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 46
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/monitor/networkqos/WestWoodModel;
    .end local p1    # "bk":D
    .end local p3    # "ts":D
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
