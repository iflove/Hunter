.class public Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;
.super Ljava/lang/Object;
.source "AndroidH2Watchdog.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;


# instance fields
.field private b:I

.field private c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    .line 27
    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->d:I

    .line 44
    return-void
.end method

.method private a()V
    .locals 1

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    .line 185
    return-void
.end method

.method private declared-synchronized a(BLjava/lang/String;Z)V
    .locals 4
    .param p1, "bizType"    # B
    .param p2, "errmsg"    # Ljava/lang/String;
    .param p3, "downgradeRightNow"    # Z

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    .local v1, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->H2_DOWNGRADE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v2, "T"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "AndroidH2Watchdog"

    const-string v2, "h2DownSwitch off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    :try_start_1
    invoke-direct {p0, p2, v1, p3}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, v1, p3}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v1    # "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "AndroidH2Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkIfDowngrade ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .end local v0    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 98
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;
    .end local p1    # "bizType":B
    .end local p2    # "errmsg":Ljava/lang/String;
    .end local p3    # "downgradeRightNow":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Z)V
    .locals 5
    .param p1, "errmsg"    # Ljava/lang/String;
    .param p2, "configureManager"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .param p3, "downgradeRightNow"    # Z

    .line 119
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    const-string v0, "AndroidH2Watchdog"

    const-string/jumbo v1, "rsrcGoH2Switch is off"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 126
    :cond_0
    if-eqz p3, :cond_1

    .line 127
    const-string v0, "AndroidH2Watchdog"

    const-string/jumbo v1, "rsrc fatal error,downgrade right now"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    .line 131
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 132
    return-void

    .line 135
    :cond_2
    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "oriRsrcH2Switch":Ljava/lang/String;
    const-string v2, "AndroidH2Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RSRC tunnel downgrade to http1.1,original RSRC H2 SWTICH:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "0"

    invoke-virtual {p2, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLatestVersion()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 142
    .local v2, "oldVersion":I
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b()V

    .line 145
    const-string v3, "RSRC"

    invoke-static {v3, p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v1    # "oriRsrcH2Switch":Ljava/lang/String;
    .end local v2    # "oldVersion":I
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "bizType"    # Ljava/lang/String;
    .param p1, "errmsg"    # Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v1, 0x0

    .line 195
    .local v1, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    const-string v2, "H2"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 196
    const-string v0, "RPC"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 197
    const-string v0, "downgrade"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v2, "bizType"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v2, "errmsg"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dumping perfLog:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidH2Watchdog"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 4
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 207
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 208
    .local v3, "rootCause":Ljava/lang/Throwable;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v2, "s":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    return v0

    .line 215
    :cond_1
    const-string/jumbo v1, "stream was reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 216
    const/4 v0, 0x1

    return v0

    .line 220
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "rootCause":Ljava/lang/Throwable;
    :cond_2
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    .line 219
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFatalError ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidH2Watchdog"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private b()V
    .locals 1

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    .line 189
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Z)V
    .locals 6
    .param p1, "errmsg"    # Ljava/lang/String;
    .param p2, "configureManager"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .param p3, "downgradeRightNow"    # Z

    .line 150
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_GO_H2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "rpcGoH2Switch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "AndroidH2Watchdog"

    const-string/jumbo v2, "rpcGoH2Switch is off"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_0
    if-eqz p3, :cond_1

    .line 158
    const-string v1, "AndroidH2Watchdog"

    const-string/jumbo v2, "rpc fatal error,downgrade right now"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    .line 162
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 163
    return-void

    .line 166
    :cond_2
    const-class v1, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_GO_H2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "oriRpcH2Switch":Ljava/lang/String;
    const-string v3, "AndroidH2Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RPC tunnel downgrade to http1.1, original RPC H2 SWTICH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_GO_H2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "0"

    invoke-virtual {p2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLatestVersion()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 174
    .local v3, "oldVersion":I
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a()V

    .line 177
    const-string v4, "RPC"

    invoke-static {v4, p1}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v2    # "oriRpcH2Switch":Ljava/lang/String;
    .end local v3    # "oldVersion":I
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;
    .locals 2

    .line 32
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    if-eqz v0, :cond_0

    .line 33
    return-object v0

    .line 35
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    .line 39
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;

    return-object v0

    .line 39
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized reportH2Error(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "bizType"    # B
    .param p2, "errcode"    # Ljava/lang/String;
    .param p3, "errmsg"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(Ljava/lang/Throwable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1, p3, v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(BLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 72
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    if-ne p1, v1, :cond_2

    .line 76
    :try_start_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    goto :goto_0

    .line 78
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    .line 81
    :goto_0
    const-string v0, "AndroidH2Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportH2Error bizType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",errmsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",rpcFailureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rsrcFailureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a(BLjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "AndroidH2Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportH2Error ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v0    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;
    .end local p1    # "bizType":B
    .end local p2    # "errcode":Ljava/lang/String;
    .end local p3    # "errmsg":Ljava/lang/String;
    .end local p4    # "exception":Ljava/lang/Throwable;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetFailCount(B)V
    .locals 2
    .param p1, "bizType"    # B

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resetFailCount,bizType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidH2Watchdog"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->a()V

    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/AndroidH2Watchdog;->b()V

    .line 56
    return-void
.end method
