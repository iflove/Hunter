.class public Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;
.super Ljava/lang/Object;
.source "NwSharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$ProxySharedSwitchChangedListener;,
        Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;
    }
.end annotation


# static fields
.field public static final KEY_NET_SWITCH_ONE:Ljava/lang/String; = "netsdk_normal_switch"

.field public static final KEY_NET_SWITCH_TWO:Ljava/lang/String; = "android_network_core"

.field public static final KEY_READ_CONFIG_FROM_DB:Ljava/lang/String; = "readConfigFromDB"

.field public static final SHARED_FILE:Ljava/lang/String; = "sdkSharedSwitch.xml"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "sdkSharedSwitch"

.field private static a:Z

.field public static switchChangedObserble:Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;
    .locals 1

    .line 225
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    .line 228
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sharedPrefName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    const-string/jumbo v0, "switch from original value=["

    const-string v1, ""

    const-string v2, "NwSharedSwitchUtil"

    .line 179
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_FROM_ORIGINAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 180
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "switchValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],not hit"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v1

    .line 188
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOtherProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "it\'s not main process,return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v1

    .line 193
    :cond_1
    const-string v0, "getSharedSwitch,value is null,try get from original"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getSwitchFromOriginal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 195
    .local v4, "value":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    const-string v0, "load config from original"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$1;

    invoke-direct {v0, p0, p1, v4}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_2
    return-object v4

    .line 209
    .end local v3    # "switchValue":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "getSwitchExt exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static final a(Ljava/util/Map;)V
    .locals 3
    .param p0, "switchIdMaps"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "recv"

    const-string/jumbo v2, "rpc"

    invoke-static {v0, v1, p0, v2}, Lcom/alipay/mobile/common/transport/utils/SwitchMonitorLogUtil;->monitorLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Map;

    .line 21
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;
    .locals 1

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    return-object v0
.end method

.method public static final addSwitchChangedListener(Ljava/util/Observer;)V
    .locals 1
    .param p0, "observer"    # Ljava/util/Observer;

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;->addObserver(Ljava/util/Observer;)V

    .line 222
    return-void
.end method

.method private static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "normalSwitch"    # Ljava/lang/String;
    .param p1, "coreSwitch"    # Ljava/lang/String;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "saved":Z
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v1

    const-string/jumbo v2, "netsdk_normal_switch"

    invoke-virtual {v1, v2, p0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 383
    const/4 v0, 0x1

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v1

    const-string v2, "android_network_core"

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    const/4 v0, 0x1

    .line 389
    :cond_1
    if-nez v0, :cond_2

    .line 390
    return-void

    .line 392
    :cond_2
    const-string/jumbo v1, "rpc"

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->putSwitchSrc(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method protected static getConfigFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->isReadConfigFromDB()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 162
    return-object v1

    .line 165
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 166
    .local v2, "config":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSharedSwitch.  Get config from db. key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NwSharedSwitchUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v2

    .line 171
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getConfigFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 64
    .local v3, "config":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 65
    monitor-exit v0

    return-object v3

    .line 68
    :cond_0
    :try_start_1
    const-string/jumbo v1, "sdkSharedSwitch"

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 62
    .end local v3    # "config":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getConfigFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 143
    .local v3, "config":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 144
    monitor-exit v0

    return-object v3

    .line 147
    :cond_0
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v2, "result":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "NwSharedSwitchUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSharedSwitch.  Get config from sp. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v0

    return-object v2

    .line 155
    :cond_1
    :try_start_2
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 141
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sharedPrefName":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getSwitchSrc()Ljava/lang/String;
    .locals 3

    .line 357
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    const-string v1, "keySwitchSrc"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 358
    .local v1, "switchSrc":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 359
    return-object v1

    .line 363
    .end local v1    # "switchSrc":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "NwSharedSwitchUtil"

    const-string v2, "getSwitchSrc error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string/jumbo v0, "unknow"

    return-object v0
.end method

.method public static final init()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->regSwitchChangedListener()V

    .line 51
    return-void
.end method

.method public static final isReadConfigFromDB()Z
    .locals 8

    .line 333
    const-string v0, "NwSharedSwitchUtil"

    const/4 v1, 0x1

    .line 334
    .local v1, "readConfigFromDB":Z
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v2

    const-string/jumbo v3, "readConfigFromDB"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 335
    .local v4, "resultStr":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v1, v2

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isReadConfigFromDB.  Get config result is "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    return v1

    .line 342
    :catchall_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parseBoolean error. value:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "numberFormatException":Ljava/lang/NumberFormatException;
    move-object v3, v5

    invoke-virtual {v5, v2}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 345
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "numberFormatException":Ljava/lang/NumberFormatException;
    return v1
.end method

.method public static declared-synchronized mergeMapsharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "srcMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 104
    .local v3, "sharedSwitch":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 105
    monitor-exit v0

    return-object p3

    .line 108
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    .line 109
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_1

    .line 110
    monitor-exit v0

    return-object p3

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v2

    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 114
    .local v2, "key":Ljava/lang/String;
    move-object v2, v6

    if-eqz v6, :cond_2

    .line 117
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v5, "value":Ljava/lang/String;
    move-object v5, v6

    if-eqz v6, :cond_2

    .line 122
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 123
    invoke-interface {p3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 128
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "NwSharedSwitchUtil"

    const-string/jumbo v4, "mergeMapsharedSwitch fail"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v0

    return-object p3

    .line 102
    .end local v3    # "sharedSwitch":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sharedPrefName":Ljava/lang/String;
    .end local p2    # "switchKey":Ljava/lang/String;
    .end local p3    # "srcMap":Ljava/util/Map;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static notifySwitchUpdate()V
    .locals 1

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;->notifyObservers()V

    .line 245
    return-void
.end method

.method public static processSwitchOfSwitch(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbssValue"    # Ljava/lang/String;

    .line 413
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    .line 418
    .local v0, "readConfigFromDB":Z
    const-string v1, "-1"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 425
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "readConfigFromDB"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processSwitchOfSwitch. grayscaleUtdid readConfigFromDB:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NwSharedSwitchUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static processSwitchOfSwitch(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 404
    if-nez p0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DB_STORAGE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->processSwitchOfSwitch(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static final putSwitchSrc(Ljava/lang/String;)V
    .locals 2
    .param p0, "switchSrc"    # Ljava/lang/String;

    .line 352
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    const-string v1, "keySwitchSrc"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    return-void
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    const-string v0, "NwSharedSwitchUtil"

    .line 85
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 86
    .local v3, "spf":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    move-object v2, v1

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "refreshSharedSwitch commit success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    const-string/jumbo v1, "refreshSharedSwitch commit fail!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spf":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshSharedSwitch, sharedPrefName=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], key=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    return-void
.end method

.method public static regSwitchChangedListener()V
    .locals 9

    .line 279
    const-string v0, "NwSharedSwitchUtil"

    sget-boolean v1, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a:Z

    if-eqz v1, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a:Z

    .line 285
    :try_start_0
    const-string v2, "com.alipay.mobile.common.utils.SharedSwitchUtil"

    const-class v3, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 286
    .local v4, "realSharedSwitchUtilClass":Ljava/lang/Class;
    move-object v4, v2

    const-string v5, "addSwitchChangedListener"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/util/Observer;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 287
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$ProxySharedSwitchChangedListener;

    invoke-direct {v5, v3}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$ProxySharedSwitchChangedListener;-><init>(Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$1;)V

    aput-object v5, v1, v8

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "regSwitchChangedListener success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v4    # "realSharedSwitchUtilClass":Ljava/lang/Class;
    return-void

    .line 289
    :catchall_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "regSwitchChangedListener fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized removeSwitch(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;

    monitor-enter v0

    .line 253
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit v0

    return-void

    .line 252
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 271
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "NwSharedSwitchUtil"

    const-string/jumbo v3, "removeSwitch exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v1    # "ex":Ljava/lang/Exception;
    monitor-exit v0

    return-void

    .line 252
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static final setReadConfigFromDBIfNoExist()V
    .locals 3

    .line 371
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    const-string/jumbo v1, "readConfigFromDB"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    const-string v0, "NwSharedSwitchUtil"

    const-string v1, "Enter setReadConfigFromDB()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method
