.class public Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;
.super Ljava/lang/Object;
.source "QosInterfereHelper.java"


# static fields
.field public static final QOE_NET_INTERFERENCE:D = 100.0

.field private static b:D

.field private static c:D

.field private static d:D

.field private static i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;


# instance fields
.field private a:J

.field private e:D

.field private f:D

.field private g:D

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    const-wide v0, 0x3fe5c28f5c28f5c3L    # 0.68

    sput-wide v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->b:D

    .line 27
    const-wide v2, 0x3fd147ae147ae148L    # 0.27

    sput-wide v2, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->c:D

    .line 28
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    sub-double/2addr v4, v2

    sput-wide v4, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->d:D

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a:J

    .line 30
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->e:D

    .line 31
    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->f:D

    .line 32
    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->g:D

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I

    .line 59
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a:J

    .line 60
    return-void
.end method

.method private static a(D)D
    .locals 4
    .param p0, "d"    # D

    .line 140
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method private static a()Z
    .locals 2

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NET_QOS_INTERFER:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "interferSwitch":Ljava/lang/String;
    const-string v1, "T"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;
    .locals 2

    .line 47
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    if-nez v1, :cond_1

    .line 52
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    .line 54
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->i:Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;

    return-object v0

    .line 54
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public interferInputRtt(D)D
    .locals 13
    .param p1, "rtt"    # D

    const-string v0, "QosInterfereHelper"

    .line 65
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    return-wide p1

    .line 65
    :cond_0
    const-wide/16 v1, 0x0

    .line 71
    .local v1, "rttFinal":D
    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 72
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->g:D

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->f:D

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->e:D

    .line 76
    :cond_1
    iget-wide v5, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->f:D

    iput-wide v5, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->g:D

    .line 77
    iget-wide v7, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->e:D

    iput-wide v7, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->f:D

    .line 78
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->e:D

    .line 80
    sget-wide v9, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->b:D

    mul-double v9, v9, p1

    sget-wide v11, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->c:D

    mul-double v11, v11, v7

    add-double/2addr v9, v11

    sget-wide v7, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->d:D

    mul-double v7, v7, v5

    add-double/2addr v9, v7

    .line 81
    .end local v1    # "rttFinal":D
    .local v9, "rttFinal":D
    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a:J

    .line 83
    invoke-static {v9, v10}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a(D)D

    move-result-wide v1

    .line 84
    .end local v9    # "rttFinal":D
    .restart local v1    # "rttFinal":D
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    return-wide v1

    .line 86
    .end local v1    # "rttFinal":D
    :catchall_0
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interferInputRtt ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-wide p1
.end method

.method public interferOutputRtt(DD)V
    .locals 7
    .param p1, "input"    # D
    .param p3, "output"    # D

    const-string v0, "QosInterfereHelper"

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getRtoLevel(D)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 101
    .local v3, "rtoLevel":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    .line 102
    iput v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I

    .line 103
    return-void

    .line 106
    :cond_1
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    .line 107
    iput v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I

    .line 108
    return-void

    .line 111
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I

    .line 112
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    .line 113
    const-string v1, "it\'s time to interfereQos"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x6

    .line 115
    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimate(DB)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "after interferOutputRtt:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getRto()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/QosInterfereHelper;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v3    # "rtoLevel":I
    :cond_3
    return-void

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interferOutputRtt ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method
