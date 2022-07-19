.class public Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
.super Ljava/lang/Object;
.source "SignalStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;
    }
.end annotation


# static fields
.field private static e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

.field private static g:J


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/PhoneStateListener;

.field private c:I

.field private d:I

.field private f:Landroid/os/HandlerThread;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->g:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I

    .line 52
    iput v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I

    .line 60
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->h:J

    .line 76
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v0    # "context":Landroid/content/Context;
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "SSMonitor"

    const-string v2, "SignalStateHelper constructor exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "wifiSingal"    # Ljava/lang/String;
    .param p1, "mobileSignalInfo"    # Ljava/lang/String;
    .param p2, "cellInfo"    # Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v1, 0x0

    .line 273
    .local v1, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    const-string v2, "SignalState"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 274
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 275
    const-string v0, "INFO"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v2, "CELL"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "SIGNAL"

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getQosLevel()I

    move-result v0

    .line 290
    .local v0, "qosLevel":I
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QOS"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSMonitor"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 294
    return-void
.end method

.method private a()Z
    .locals 5

    .line 90
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SSMonitor"

    const-string/jumbo v2, "startMonitor"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "SSMonitor"

    const-string/jumbo v2, "there is a task working still"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v0

    .line 96
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "SSMonitor"

    const-string/jumbo v2, "there is a task working still"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    monitor-exit p0

    return v0

    .line 101
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SignalThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;

    .line 102
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 103
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p0

    .line 106
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;-><init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    const/4 v0, 0x1

    return v0

    .line 103
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :catchall_1
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "SSMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startMonitor,ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
    .param p1, "x1"    # Landroid/telephony/PhoneStateListener;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 41
    iget v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 41
    iget v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 41
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 125
    const-string v0, "SSMonitor"

    :try_start_0
    const-string/jumbo v1, "stopMonitor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->f:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_1
    return-void

    .line 133
    :catchall_0
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopMonitor,ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
    .locals 2

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 66
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 70
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->e:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    return-object v0

    .line 70
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCellInfo()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "SSMonitor"

    .line 172
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManagerFactory;->getInstance()Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/transport/sys/telephone/NetTelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 173
    .local v4, "cellLocation":Landroid/telephony/CellLocation;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 174
    const-string v2, "getCellInfo. cellLocation is null."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0

    .line 178
    :cond_0
    instance-of v2, v4, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_2

    .line 179
    move-object v2, v4

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 180
    .local v3, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "CDMA CELL info"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    .end local v3    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    goto :goto_0

    .line 185
    :cond_2
    move-object v2, v4

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 186
    .local v3, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    move-object v3, v2

    if-eqz v2, :cond_3

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "GSM CELL info"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 193
    .end local v3    # "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v4    # "cellLocation":Landroid/telephony/CellLocation;
    :cond_3
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v2

    .line 192
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCellInfo exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public getMobileSignalInfo()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Dbm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SignalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiSignalLevel()Ljava/lang/String;
    .locals 9

    const-string v0, "_"

    const-string v1, "0"

    const-string v2, "SSMonitor"

    .line 144
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 145
    .local v5, "context":Landroid/content/Context;
    const-string/jumbo v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    move-object v6, v4

    .line 147
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object v6, v3

    if-nez v3, :cond_0

    .line 148
    return-object v1

    .line 150
    :cond_0
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    .line 151
    .local v3, "level":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v4, "wifiSignalInfo":Ljava/lang/StringBuilder;
    move-object v4, v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 156
    .end local v3    # "level":I
    .end local v4    # "wifiSignalInfo":Ljava/lang/StringBuilder;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method public reportNetStateInfo()V
    .locals 10

    const-string v0, "SSMonitor"

    .line 225
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SINGAL_STATE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 226
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 227
    .local v2, "switchVal":Ljava/lang/String;
    const-string v3, "T"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const-string/jumbo v1, "singal state is off"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 232
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 233
    .local v5, "curTime":J
    move-wide v5, v3

    sget-wide v7, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->g:J

    sub-long/2addr v3, v7

    iget-wide v7, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->h:J

    cmp-long v1, v3, v7

    if-gez v1, :cond_1

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "lastReportTime: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->g:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",ignore this time"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void

    .line 237
    :cond_1
    sput-wide v5, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->g:J

    .line 240
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->getCellInfo()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "cellInfo":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    .line 243
    .local v4, "netType":I
    move v4, v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->getWifiSignalLevel()Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v7, ""

    invoke-static {v3, v7, v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    :cond_2
    if-eqz v4, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a()Z

    move-result v3

    .line 251
    if-nez v3, :cond_3

    .line 252
    return-void

    .line 254
    :cond_3
    new-instance v3, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;-><init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Ljava/lang/String;)V

    const-wide/16 v7, 0x2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v7, v8, v9}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v1    # "cellInfo":Ljava/lang/String;
    .end local v2    # "switchVal":Ljava/lang/String;
    .end local v4    # "netType":I
    .end local v5    # "curTime":J
    :cond_4
    return-void

    .line 266
    :catchall_0
    move-exception v1

    .line 267
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportNetStateInfo exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method
