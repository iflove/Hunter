.class public Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
.super Lcom/alipay/mobile/base/config/ConfigService;
.source "ConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;
    }
.end annotation


# static fields
.field private static final IS_COUNT_KEY:Ljava/lang/String; = "isCountKey"

.field private static final KEY_INTERVAL_TIME:Ljava/lang/String; = "Load_Config_Interval"

.field private static final KEY_LAST_LOAD_TIME:Ljava/lang/String; = "last_load_time"

.field private static final RESERVE_CONFIG_KEY_RESPONSE_TIME:Ljava/lang/String; = "reserveConfigKeyResponseTime"

.field private static final RESERVE_CONFIG_KEY_USERID:Ljava/lang/String; = "reserveConfigKeyUserId"

.field private static final TAG:Ljava/lang/String;

.field private static abTestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isCountKey:Ljava/lang/Boolean;

.field private static mConfigChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mLastLoadTime:J

.field private static mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static slmacSyncReceiverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final TIME_HALF_HOUR:J

.field private lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppkey:Ljava/lang/String;

.field private mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

.field private mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

.field private mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

.field private mContextWrapper:Landroid/content/ContextWrapper;

.field private mGwUrl:Ljava/lang/String;

.field private mHasUpgradeHelper:Z

.field private mLoginUserId:Ljava/lang/String;

.field private mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

.field private onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->abTestInfos:Ljava/util/HashMap;

    .line 62
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isCountKey:Ljava/lang/Boolean;

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/ConfigService;-><init>()V

    .line 67
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TIME_HALF_HOUR:J

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/base/info/SwitchListInfo;
    .param p2, "x2"    # Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    .param p3, "x3"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->saveConfigs(Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->updateOSVersion()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/base/info/SwitchListInfo;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sendConfigChangeBroadcast(Lcom/alipay/mobile/base/info/SwitchListInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigFromUserConfigAndDefConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mGwUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/ContextWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->needPull()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mHasUpgradeHelper:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->toAbMap(Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;

    move-result-object v0

    return-object v0
.end method

.method private doAbTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 1208
    .local v2, "expId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "doAbTest expId is null"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    return-void

    .line 1212
    :cond_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->abTestInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v3, v1

    .line 1214
    .local v3, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v3, v0

    const-string v4, "abtest"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 1215
    const-string v0, "abtestconfig"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 1219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doAbTest expId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " spm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method private doRefreshSharedSwitch(Landroid/content/ContextWrapper;Ljava/util/Map;)V
    .locals 2
    .param p1, "contextWrapper"    # Landroid/content/ContextWrapper;
    .param p2, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContextWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    if-eqz v0, :cond_0

    .line 1192
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Landroid/content/ContextWrapper;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1199
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V

    .line 1201
    return-void
.end method

.method private footPrint(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 979
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const/4 v1, 0x0

    .line 980
    .local v1, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 982
    return-void
.end method

.method private generateConfigChangeBroadcastIntent(Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;
    .locals 6
    .param p1, "configs"    # Ljava/util/Map;
    .param p2, "abConfigs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.mobile.client.CONFIG_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_3

    .line 295
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 296
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exp_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v2, "extra":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v1, "changedConfigs":Ljava/lang/String;
    move-object v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x78000

    const-string v5, "data_overflow"

    if-le v3, v4, :cond_2

    .line 306
    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 308
    :cond_2
    const-string v3, "changed_configs"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    .end local v1    # "changedConfigs":Ljava/lang/String;
    .end local v2    # "extra":Landroid/os/Bundle;
    :cond_3
    return-object v0
.end method

.method private getConfigByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;
    .param p3, "doAbtest"    # Z

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0

    .line 145
    :cond_0
    const-string v0, "SOCIAL_CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string v1, "ConfigArrivalCount2"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->reportBizRequest(Ljava/lang/String;)V

    .line 149
    :cond_1
    const-string v0, "ONSITEPAY_REALNAME_ALERT_SWITCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string v1, "ConfigArrivalCount3"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->reportBizRequest(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string v1, "ConfigArrivalCount4"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->reportBizRequest(Ljava/lang/String;)V

    .line 155
    :cond_2
    if-eqz p3, :cond_3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->doAbTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigFromUserConfigAndDefConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigFromUserConfigAndDefConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 164
    .local v1, "stringOnlyUser":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, p1, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyGetConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "strInCommon":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyGetConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method private getIntervalTime()J
    .locals 4

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const-string v1, "Load_Config_Interval"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method private initOSVersion()V
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_not_increment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "osVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initOSVersion osVersion = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    :cond_1
    return-void
.end method

.method private isAddConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    .locals 4
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 773
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 774
    .local v1, "softReference":Ljava/lang/ref/SoftReference;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 775
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 776
    .local v2, "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    if-ne v2, p1, :cond_0

    .line 777
    const/4 v0, 0x1

    return v0

    .line 780
    .end local v1    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v2    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :cond_0
    goto :goto_0

    .line 781
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isChangeOSVersion()Z
    .locals 5

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_not_increment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "osVersion":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "isChangeOSVersion = true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v1, 0x1

    return v1

    .line 556
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "isChangeOSVersion = false"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    return v1

    .line 559
    :catchall_0
    move-exception v2

    .line 560
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method private logCountKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 183
    const-string v0, "isCountKey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isCountKey:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->refreashIsCount()V

    .line 189
    :cond_1
    return-void
.end method

.method private needPull()Z
    .locals 7

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "isChangeProductVersion":Z
    iget-boolean v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mHasUpgradeHelper:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    .line 334
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const/4 v5, 0x0

    const-string/jumbo v6, "upgradeLoadVersion"

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 336
    :cond_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 337
    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "last_not_increment"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isChangeOSVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 339
    :cond_2
    return v2

    .line 338
    :cond_3
    :goto_1
    return v3
.end method

.method private notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1093
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyConfigChange start key is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySDK(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1100
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 1101
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    move-object v2, v5

    if-eqz v5, :cond_1

    .line 1102
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 1103
    .local v3, "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 1104
    invoke-interface {v3}, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 1105
    .local v4, "keys":Ljava/util/List;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 1107
    :try_start_2
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;->onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1110
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v5

    .line 1109
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "notifyConfigChange Exception :  tmpListener.onSyncReceiver  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error listener is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    .end local v4    # "keys":Ljava/util/List;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_0

    .line 1115
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1116
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1119
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

    if-eqz v0, :cond_3

    .line 1120
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/ConfigRegisterService;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_3
    return-void
.end method

.method private notifyGetConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "spm"    # Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

    if-nez v0, :cond_0

    .line 877
    return-void

    .line 879
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/ConfigRegisterService;->getConfigGetListener()Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/ConfigRegisterService;->getConfigGetListener()Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_1
    return-void
.end method

.method private notifyRpcRes(Ljava/util/Map;)V
    .locals 7
    .param p1, "switchMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 629
    if-nez p1, :cond_0

    .line 630
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "switchMap is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void

    .line 633
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 634
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 636
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 641
    :cond_2
    return-void
.end method

.method private notifySDK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1165
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1166
    .local v1, "map":Ljava/util/Map;
    move-object v1, v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->doRefreshSharedSwitch(Landroid/content/ContextWrapper;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v1    # "map":Ljava/util/Map;
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1126
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    return-void

    .line 1129
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifySyncArrived start key is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1133
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 1134
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    move-object v2, v5

    if-eqz v5, :cond_1

    .line 1135
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 1136
    .local v3, "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 1137
    invoke-interface {v3}, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 1138
    .local v4, "keys":Ljava/util/List;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 1140
    :try_start_2
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;->onSyncReceiver(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1143
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v5

    .line 1142
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "notifySyncArrived Exception :  tmpListener.onSyncReceiver  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error listener is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    .end local v4    # "keys":Ljava/util/List;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_0

    .line 1148
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1149
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1152
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

    if-eqz v0, :cond_3

    .line 1153
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/ConfigRegisterService;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_3
    return-void
.end method

.method private refreashIsCount()V
    .locals 2

    .line 317
    const-string v0, "isCountKey"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isCountKey:Ljava/lang/Boolean;

    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isCountKey:Ljava/lang/Boolean;

    .line 322
    return-void
.end method

.method private removeTempKeys(Lcom/alipay/mobile/base/config/model/PLData;Z)V
    .locals 6
    .param p1, "plDataTime"    # Lcom/alipay/mobile/base/config/model/PLData;
    .param p2, "onlyUser"    # Z

    .line 1085
    iget v0, p1, Lcom/alipay/mobile/base/config/model/PLData;->total:I

    .line 1086
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1087
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->removeKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1089
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private saveConfigs(Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V
    .locals 6
    .param p1, "switchListInfo"    # Lcom/alipay/mobile/base/info/SwitchListInfo;
    .param p2, "resp"    # Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    .param p3, "increment"    # Z

    const/4 v0, 0x0

    .local v0, "switchMap":Ljava/util/Map;
    const/4 v1, 0x0

    .line 585
    .local v1, "switchAbMap":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 587
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resp.switches.size() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchMap()Ljava/util/Map;

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchAbMap()Ljava/util/Map;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyRpcRes(Ljava/util/Map;)V

    .line 592
    if-eqz v0, :cond_1

    const-string v2, "apconfigDrill"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 593
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "rpc"

    invoke-virtual {v3, v2, v4}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logKeyArrived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resp.switches is empty"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->deleteKeys:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->deleteKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 601
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->deleteKeys:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->removeKeys(Ljava/util/List;)V

    .line 605
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->responseTime:Ljava/lang/String;

    const-string/jumbo v4, "reserveConfigKeyResponseTime"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resp.responseTime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->responseTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " increment = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->switches:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->doRefreshSharedSwitch(Landroid/content/ContextWrapper;Ljava/util/Map;)V

    .line 610
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->refreashIsCount()V

    .line 611
    return-void
.end method

.method private saveSplitedData(Lcom/alipay/mobile/base/config/model/PLData;Z)Ljava/lang/String;
    .locals 13
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;
    .param p2, "onlyUser"    # Z

    .line 1044
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 1046
    :try_start_0
    iget v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->total:I

    .line 1047
    .local v1, "total":I
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, p1, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putSpliteData(Lcom/alipay/mobile/base/config/model/PLData;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1048
    monitor-exit v0

    return-object v3

    .line 1050
    :cond_1
    new-array v2, v1, [Lcom/alipay/mobile/base/config/model/PLData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    .local v2, "plDatas":[Lcom/alipay/mobile/base/config/model/PLData;
    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 1053
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    iget-object v9, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v9, v3

    :goto_2
    invoke-virtual {v7, v8, v3, v9}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1054
    .local v5, "strInSp":Ljava/lang/String;
    move-object v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 1055
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 1057
    :cond_3
    :try_start_3
    const-class v7, Lcom/alipay/mobile/base/config/model/PLData;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/base/config/model/PLData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1058
    .local v6, "plDataTimeTemp":Lcom/alipay/mobile/base/config/model/PLData;
    move-object v6, v7

    if-nez v7, :cond_4

    .line 1059
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3

    .line 1061
    :cond_4
    :try_start_5
    aput-object v6, v2, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1064
    .end local v5    # "strInSp":Ljava/lang/String;
    .end local v6    # "plDataTimeTemp":Lcom/alipay/mobile/base/config/model/PLData;
    nop

    .line 1051
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1062
    :catch_0
    move-exception v6

    .line 1063
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    monitor-exit v0

    return-object v3

    .line 1067
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 1069
    aget-object v6, v2, v5

    iget-object v6, v6, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1071
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1072
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v7, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    iget-wide v9, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    iget-object v12, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    move-object v8, v5

    move v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveKeyValueWithTime(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Z

    move-result v6

    .line 1073
    .local v6, "saved":Z
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->removeTempKeys(Lcom/alipay/mobile/base/config/model/PLData;Z)V

    .line 1074
    if-eqz v6, :cond_7

    .line 1075
    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    monitor-exit v0

    return-object v5

    .line 1080
    :cond_7
    monitor-exit v0

    return-object v3

    .line 1081
    .end local v1    # "total":I
    .end local v2    # "plDatas":[Lcom/alipay/mobile/base/config/model/PLData;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "saved":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method private sendConfigChangeBroadcast(Lcom/alipay/mobile/base/info/SwitchListInfo;)V
    .locals 5
    .param p1, "listInfo"    # Lcom/alipay/mobile/base/info/SwitchListInfo;

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 617
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    if-eqz p1, :cond_0

    .line 618
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->getSwitchAbMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->generateConfigChangeBroadcastIntent(Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 620
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->generateConfigChangeBroadcastIntent(Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v1

    .line 623
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveConfigs SwitchInfoRespPb sendBroadcast error!"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private toAbMap(Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;
    .locals 7
    .param p1, "switches"    # Ljava/util/List;
    .param p2, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;",
            ">;Z)",
            "Lcom/alipay/mobile/base/info/SwitchListInfo;"
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 645
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 646
    const-string v3, "get Rpc switches is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-object v0

    .line 649
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 650
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 651
    const-string v3, "get Rpc switches switches.size() <= 0"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-object v0

    .line 654
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v0, "switchMap":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 656
    .local v1, "switchAbMap":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;

    .line 657
    .local v3, "switchInfoEntryPb":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    if-eqz p2, :cond_2

    .line 659
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_2
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 662
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    if-eqz p2, :cond_3

    .line 664
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .end local v3    # "switchInfoEntryPb":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    :cond_3
    goto :goto_0

    .line 668
    :cond_4
    new-instance v3, Lcom/alipay/mobile/base/info/SwitchListInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/base/info/SwitchListInfo;-><init>()V

    .line 669
    .local v2, "switchListInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    move-object v2, v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/base/info/SwitchListInfo;->setSwitchMap(Ljava/util/Map;)V

    .line 670
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/base/info/SwitchListInfo;->setSwitchAbMap(Ljava/util/Map;)V

    .line 671
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "switchMap.size() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " switchAbMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-object v2
.end method

.method private toMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .param p1, "switches"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 677
    if-nez p1, :cond_0

    .line 678
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 679
    const-string v2, "get Rpc switches is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x0

    return-object v0

    .line 682
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    .local v0, "switchMap":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;

    .line 684
    .local v2, "switchInfoEntryPb":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v2    # "switchInfoEntryPb":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    goto :goto_0

    .line 686
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "switchMap.size() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-object v0
.end method

.method private updateOSVersion()V
    .locals 5

    .line 569
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 570
    .local v1, "osVersion":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_not_increment"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 572
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateOSVersion = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    .locals 6
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 753
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z

    move-result v0

    return v0

    .line 756
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 757
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "configChangeListener is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return v0

    .line 760
    :cond_1
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 761
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->isAddConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " configChangeListener is alreadly is add"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    monitor-exit v1

    return v0

    .line 765
    :cond_2
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAbtestInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1032
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->abTestInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "configLoadCallBack"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    .line 693
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLmacConfig with configLoadCallBack for key in lite:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V

    .line 696
    return-void

    .line 698
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLmacConfig with configLoadCallBack for key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 735
    return-void
.end method

.method public getConfigForAB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "spm"    # Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigForAB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigSyncReporter()Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;
    .locals 1

    .line 867
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getConfigSyncReporter()Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTime()J
    .locals 5

    .line 1175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getResponseTime()J

    move-result-wide v0

    return-wide v0

    .line 1175
    :cond_0
    const-wide/16 v0, 0x0

    .line 1180
    .local v0, "lastResponseTime":J
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const-string/jumbo v3, "reserveConfigKeyResponseTime"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 1185
    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v2

    .line 1183
    .local v2, "e":Ljava/lang/Throwable;
    const-wide/16 v0, 0x0

    .line 1184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1186
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-wide v0
.end method

.method public isRegistered(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)Z
    .locals 5
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 786
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->isRegistered(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)Z

    move-result v0

    return v0

    .line 789
    :cond_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0

    .line 791
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 792
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 793
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 794
    .local v3, "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    move-object v3, v4

    if-eqz v4, :cond_1

    if-ne v3, p1, :cond_1

    .line 795
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 798
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :cond_1
    goto :goto_0

    .line 799
    :cond_2
    monitor-exit v0

    .line 800
    const/4 v0, 0x0

    return v0

    .line 799
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized loadConfig()V
    .locals 9

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->loadConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 197
    .end local p0    # "this":Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "public synchronized void loadConfig "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    .local v0, "nowTime":J
    sget-wide v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 202
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const-string v3, "last_load_time"

    const-string v6, "0"

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 204
    :try_start_3
    sput-wide v4, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    .line 207
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    sget-wide v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    sub-long v2, v0, v2

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getIntervalTime()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gtz v8, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->needPull()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mLastLoadTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v7, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " nowTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sput-wide v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    .line 212
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    invoke-direct {v3, p0, v4, v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    const-string v3, "last_load_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v5, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLastLoadTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    :cond_3
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "nowTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadConfigImmediately(J)V
    .locals 4
    .param p1, "delay"    # J

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->loadConfigImmediately(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadConfigImmediately delay = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 230
    .end local p1    # "delay":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-direct {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->setContext(Landroid/content/ContextWrapper;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "mytest"

    const-string v1, "ConfigService onCreate step 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    .line 99
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getInstance(Landroid/content/ContextWrapper;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    .line 104
    iput-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mHasUpgradeHelper:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "UpgradeHelper not found."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigRegisterService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigRegisterService;

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigRegisterService:Lcom/alipay/mobile/base/config/ConfigRegisterService;

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->initOSVersion()V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/MpaasPropertiesUtil;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/MpaasPropertiesUtil;->getMpaasapi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mGwUrl:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->onDestroy(Landroid/os/Bundle;)V

    .line 124
    :cond_0
    return-void
.end method

.method public preloadKeys(Ljava/util/List;)V
    .locals 4
    .param p1, "keys"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 886
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preloadKeys for keys in lite:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->preloadKeys(Ljava/util/List;)V

    .line 889
    return-void

    .line 891
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preloadKeys for keys:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 967
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 968
    return-void
.end method

.method public declared-synchronized refreshAfterLogin(Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->refreshAfterLogin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 245
    .end local p0    # "this":Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshAfterLogin userId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", preUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addLoginUser(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :cond_1
    monitor-exit p0

    return-void

    .line 240
    .end local p1    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 3
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 739
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V

    .line 741
    return-void

    .line 743
    :cond_0
    if-nez p1, :cond_1

    .line 744
    return-void

    .line 746
    :cond_1
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0

    .line 747
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V
    .locals 6
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 836
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V

    .line 838
    return-void

    .line 841
    :cond_0
    if-nez p1, :cond_1

    .line 842
    return-void

    .line 844
    :cond_1
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 845
    const/4 v1, 0x0

    .line 847
    .local v1, "target":Ljava/lang/ref/SoftReference;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 848
    .local v3, "softReference":Ljava/lang/ref/SoftReference;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 849
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 850
    .local v4, "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v4, v5

    if-eqz v5, :cond_2

    if-ne v4, p1, :cond_2

    .line 851
    move-object v1, v3

    .line 852
    goto :goto_1

    .line 855
    .end local v3    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v4    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :cond_2
    goto :goto_0

    .line 856
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 857
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 859
    .end local v1    # "target":Ljava/lang/ref/SoftReference;
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "configChangeListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 860
    .restart local p1    # "configChangeListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :catchall_1
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 863
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public saveConfig(Lcom/alipay/mobile/base/config/model/PLData;)Ljava/lang/String;
    .locals 1
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;

    .line 972
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->saveConfig(Lcom/alipay/mobile/base/config/model/PLData;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 975
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->saveConfig(Lcom/alipay/mobile/base/config/model/PLData;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveConfig(Lcom/alipay/mobile/base/config/model/PLData;ZZ)Ljava/lang/String;
    .locals 12
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;
    .param p2, "persist"    # Z
    .param p3, "onlyUser"    # Z

    .line 989
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->saveConfig(Lcom/alipay/mobile/base/config/model/PLData;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uiniqId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",updateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", onlyUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->footPrint(Ljava/lang/String;)V

    .line 993
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveConfig plData\u3010type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uniqId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updateTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", onlyUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1000
    return-object v0

    .line 1002
    :cond_1
    if-eqz p2, :cond_2

    .line 1003
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v2, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 1005
    :cond_2
    iget v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->total:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1008
    :try_start_0
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->saveSplitedData(Lcom/alipay/mobile/base/config/model/PLData;Z)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1010
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "plData":Lcom/alipay/mobile/base/config/model/PLData;
    .end local p2    # "persist":Z
    .end local p3    # "onlyUser":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1011
    .restart local p1    # "plData":Lcom/alipay/mobile/base/config/model/PLData;
    .restart local p2    # "persist":Z
    .restart local p3    # "onlyUser":Z
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveConfig plData.total >= 2 Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  plData\u3010type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uniqId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1017
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    iget-object v6, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    iget-wide v8, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    iget-object v11, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;

    move v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveKeyValueWithTime(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1018
    .local v2, "saved":Z
    if-eqz v1, :cond_4

    .line 1019
    iget-object v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v1, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 1025
    .end local v2    # "saved":Z
    :cond_4
    goto :goto_0

    .line 1023
    :catch_1
    move-exception v1

    .line 1024
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveConfig plData.total ==1  Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  plData\u3010type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uniqId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public saveConfigs(Ljava/util/Map;)V
    .locals 5
    .param p1, "configs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->saveConfigs(Ljava/util/Map;)V

    .line 264
    return-void

    .line 266
    :cond_0
    if-eqz p1, :cond_4

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putMap(Ljava/util/Map;)V

    .line 268
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "apconfigDrill"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "sync"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logKeyArrived(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;

    if-nez v1, :cond_3

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "mContextWrapper is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_3
    :try_start_0
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 282
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->generateConfigChangeBroadcastIntent(Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 283
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->refreashIsCount()V

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send CONFIG_CHANGE"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v0    # "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    return-void

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send CONFIG_CHANGE broadcast error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method public setConfigSyncReporter(Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;)V
    .locals 1
    .param p1, "reporter"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    .line 872
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->setConfigSyncReporter(Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;)V

    .line 873
    return-void
.end method

.method public unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 6
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 805
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigServiceLite:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V

    .line 807
    return-void

    .line 810
    :cond_0
    if-nez p1, :cond_1

    .line 811
    return-void

    .line 813
    :cond_1
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 814
    const/4 v1, 0x0

    .line 816
    .local v1, "target":Ljava/lang/ref/SoftReference;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 817
    .local v3, "softReference":Ljava/lang/ref/SoftReference;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 818
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 819
    .local v4, "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    move-object v4, v5

    if-eqz v5, :cond_2

    if-ne v4, p1, :cond_2

    .line 820
    move-object v1, v3

    .line 821
    goto :goto_1

    .line 824
    .end local v3    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v4    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :cond_2
    goto :goto_0

    .line 825
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 826
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    .end local v1    # "target":Ljava/lang/ref/SoftReference;
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "syncReceiverListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    .restart local p1    # "syncReceiverListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :catchall_1
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
