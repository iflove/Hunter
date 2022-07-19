.class public Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
.super Ljava/lang/Object;
.source "LogStrategyManager.java"


# static fields
.field public static final ACTION_TYPE_BOOT:Ljava/lang/String; = "boot"

.field public static final ACTION_TYPE_FEEDBACK:Ljava/lang/String; = "feedback"

.field public static final ACTION_TYPE_LEAVEHINT:Ljava/lang/String; = "leavehint"

.field public static final ACTION_TYPE_LOGIN:Ljava/lang/String; = "login"

.field public static final ACTION_TYPE_MDAPUPLOAD:Ljava/lang/String; = "mdapupload"

.field public static final ACTION_TYPE_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static CURRENT_REQUEST_TIME_SPAN:J = 0x0L

.field private static final DEFAULT_REQUEST_TIME_SPAN:J

.field private static final DISABLE_TOOLS_PROCESS_NO:I = 0x1

.field private static final DISABLE_TOOLS_PROCESS_YES:I = 0x2

.field private static final ENABLE_NOLOCK_LOG_NO:I = 0x2

.field private static final ENABLE_NOLOCK_LOG_YES:I = 0x1

.field private static final ENABLE_TRAFFIC_LIMIT_NO:I = 0x2

.field private static final ENABLE_TRAFFIC_LIMIT_YES:I = 0x1

.field private static INSTANCE:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager; = null

.field private static final JSON_DATA_CONTENT:Ljava/lang/String; = "content"

.field private static final JSON_DATA_DIAGNOSE:Ljava/lang/String; = "diagnose"

.field private static final KEY_BACKGROUND_TIMESTAMP:Ljava/lang/String; = "backgroundTimestamp"

.field private static final KEY_CURRENT_REQUEST_TIMESPAN:Ljava/lang/String; = "CurrentRequestTimeSpan"

.field private static final KEY_CUR_CRASH_HOUR:Ljava/lang/String; = "curCrashHour"

.field private static final KEY_CUR_CRASH_HOUR_COUNT:Ljava/lang/String; = "curCrashHourCount"

.field private static final KEY_CUR_CRASH_MINUTE:Ljava/lang/String; = "curCrashMinute"

.field private static final KEY_CUR_CRASH_MINUTE_COUNT:Ljava/lang/String; = "curCrashMinuteCount"

.field private static final KEY_CUR_KEYBIZ_DAY:Ljava/lang/String; = "curKeyBizDay"

.field private static final KEY_CUR_KEYBIZ_DAY_COUNT:Ljava/lang/String; = "curKeyBizDayCount"

.field private static final KEY_DISABLE_TOOLS_PROCESS:Ljava/lang/String; = "DisableToolsProcess"

.field private static final KEY_ENABLE_NOLOCK_LOG:Ljava/lang/String; = "Disable_NoLock_Log"

.field private static final KEY_ENABLE_TRAFFIC_LIMIT:Ljava/lang/String; = "EnableTrafficLimit"

.field private static final KEY_POSITIVE_DIAGNOSE:Ljava/lang/String; = "PositiveDiagnose"

.field private static final KEY_PREVIOUS_REQUEST_TIME:Ljava/lang/String; = "PreviousRequestTime"

.field private static final KEY_STRATEG_CONFIG_CONTENT:Ljava/lang/String; = "StrategConfigContent2nd"

.field private static final KEY_ZIP_AND_SEVENZIP:Ljava/lang/String; = "ZipAndSevenZip"

.field private static final MAXIMAL_REQUEST_TIME_SPAN:J

.field private static final MAX_CRASH_HOUR_COUNT:I = 0x32

.field private static final MAX_CRASH_MINUTE_COUNT:I = 0x2

.field private static final MAX_KEYBIZ_DAY_COUNT:I = 0xc8

.field public static final MINIMUM_REQUEST_TIME_SPAN:J

.field private static final POSITIVE_DIAGNOSE_ALL:I = 0x3

.field private static final POSITIVE_DIAGNOSE_NO:I = 0x1

.field private static final POSITIVE_DIAGNOSE_WIFI:I = 0x2

.field private static final REQUEST_TWICE_SPAN:J

.field private static final REQUEST_URL_SUFFIX:Ljava/lang/String; = "/loggw/logConfig.do"

.field private static final SP_NAME_CRASHCOUNT_INFO:Ljava/lang/String; = "CrashCountInfo"

.field private static final SP_NAME_KEYBIZ_INFO:Ljava/lang/String; = "KeyBizInfo"

.field private static final SP_NAME_LOGSTRATEGY_CONFIG:Ljava/lang/String; = "LogStrategyConfig"

.field public static final SP_STRATEGY_KEY_NETWORK:Ljava/lang/String; = "Network"

.field public static final SP_STRATEGY_KEY_THRESHOLD:Ljava/lang/String; = "Threshold"

.field public static final SP_STRATEGY_KEY_TRIGGER:Ljava/lang/String; = "Trigger"

.field private static final TAG:Ljava/lang/String; = "LogStrategyManager"

.field private static final ZIP_AND_SEVENZIP_NO:I = 0x1

.field private static final ZIP_AND_SEVENZIP_YES:I = 0x2


# instance fields
.field private categoryThresholdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private contextInfo:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private dataChangeBroadCastReceiver:Lcom/alipay/mobile/common/logging/strategy/DataChangeBroadCastReceiver;

.field private disableNoLockLog:I

.field private disableToolsProcessTag:I

.field private enableTrafficLimitTag:I

.field private intervalEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isReadAndParseStrategy:Z

.field private positiveDiagnoseTag:I

.field private previousRequestTime:J

.field private realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

.field private strategyDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uploadTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zipAndSevenZipTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->REQUEST_TWICE_SPAN:J

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->DEFAULT_REQUEST_TIME_SPAN:J

    .line 112
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->MAXIMAL_REQUEST_TIME_SPAN:J

    .line 114
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->MINIMUM_REQUEST_TIME_SPAN:J

    .line 116
    sput-wide v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextInfo"    # Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->uploadTimeMap:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->intervalEventMap:Ljava/util/Map;

    .line 129
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->contextInfo:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 155
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->initCategoryThreshold()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->syncRequestLogConfig(Ljava/lang/String;Z)V

    return-void
.end method

.method private asyncRequestLogConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "isForceRequest"    # Z

    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->saveRequestTimeAndRevertRequestSpanToNormal()V

    .line 756
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;-><init>(Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contextInfo"    # Lcom/alipay/mobile/common/logging/ContextInfo;

    const-class v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->INSTANCE:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->INSTANCE:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    .line 142
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->INSTANCE:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 138
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "contextInfo":Lcom/alipay/mobile/common/logging/ContextInfo;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getCategoryThreshold(Ljava/lang/String;)I
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 1611
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->categoryThresholdMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->categoryThresholdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1614
    :cond_0
    const/16 v0, 0x32

    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    .locals 2

    .line 146
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->INSTANCE:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    if-eqz v0, :cond_0

    .line 149
    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUploadRateByLevel(Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;I)I
    .locals 2
    .param p1, "logStrategyInfo"    # Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .param p2, "level"    # I

    .line 1535
    const/4 v0, -0x1

    .line 1536
    .local v0, "targetRate":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1544
    :cond_0
    iget v0, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I

    goto :goto_0

    .line 1541
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I

    .line 1542
    goto :goto_0

    .line 1538
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I

    .line 1539
    nop

    .line 1549
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1550
    iget v0, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I

    .line 1552
    :cond_3
    return v0
.end method

.method private initCategoryThreshold()V
    .locals 7

    .line 1604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->categoryThresholdMap:Ljava/util/Map;

    .line 1605
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/BizType;->values()[Lcom/alipay/mobile/common/logging/api/BizType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1606
    .local v3, "bizType":Lcom/alipay/mobile/common/logging/api/BizType;
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->categoryThresholdMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/BizType;->getThreshold()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    .end local v3    # "bizType":Lcom/alipay/mobile/common/logging/api/BizType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1608
    :cond_0
    return-void
.end method

.method private isHitTest(Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z
    .locals 7
    .param p1, "logStrategyInfo"    # Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .param p2, "level"    # Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 1511
    iget v0, p2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    .line 1512
    .local v0, "logLevel":I
    iget-object v1, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelHits:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 1516
    .local v2, "isLevelHit":Ljava/lang/Integer;
    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_INIT:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 1526
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_HIT:I

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    .line 1527
    return v5

    .line 1528
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_UNHIT:I

    if-ne v1, v4, :cond_2

    .line 1529
    return v3

    .line 1531
    :cond_2
    return v5

    .line 1517
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1518
    .local v1, "deviceId":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getUploadRateByLevel(Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;I)I

    move-result v4

    .line 1519
    invoke-static {v4, v1}, Lcom/alipay/mobile/common/logging/strategy/SimplingUtils;->isHitTest(ILjava/lang/String;)Z

    move-result v4

    .line 1520
    .local v3, "isHit":Z
    move v3, v4

    if-eqz v4, :cond_4

    .line 1521
    iget-object v4, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelHits:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_HIT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1523
    :cond_4
    iget-object v4, p1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelHits:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_UNHIT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :goto_1
    return v3
.end method

.method private declared-synchronized notifyLiteProcessToUpdateLogStrategy(Ljava/lang/String;)V
    .locals 8
    .param p1, "strategyConfig"    # Ljava/lang/String;

    monitor-enter p0

    .line 1013
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 1014
    monitor-exit p0

    return-void

    .line 1016
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1018
    .local v0, "processMap":Ljava/util/Map;
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object v3, v1

    .line 1019
    .local v3, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    move-object v4, v1

    .line 1020
    .local v4, "processes":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1021
    .local v2, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1022
    nop

    .end local v2    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    goto :goto_0

    .line 1025
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "processes":Ljava/util/List;
    :cond_1
    goto :goto_1

    .line 1023
    :catchall_0
    move-exception v2

    .line 1024
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "LogStrategyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProcessIdByName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_4

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.alipay.mobile.common.logging.process.LogServiceInlite"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "liteProcessName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1029
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1030
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v4

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string/jumbo v4, "strategy"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1034
    :try_start_4
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1037
    goto :goto_3

    .line 1035
    :catchall_1
    move-exception v4

    .line 1039
    :goto_3
    :try_start_5
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1040
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LogStrategyManager"

    const-string/jumbo v6, "notifyLiteProcessToUpdateLogStrategy: start service occured error"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1045
    :cond_2
    goto :goto_4

    .line 1043
    :catchall_2
    move-exception v4

    .line 1044
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "LogStrategyManager"

    const-string/jumbo v7, "notifyLiteProcessToUpdateLogStrategy"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1026
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "liteProcessName":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1048
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    return-void

    .line 1012
    .end local v0    # "processMap":Ljava/util/Map;
    .end local p1    # "strategyConfig":Ljava/lang/String;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyOtherProcessToUpdateLogStrategy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serviceClassName"    # Ljava/lang/String;
    .param p2, "strategyConfig"    # Ljava/lang/String;

    const-string v0, "LogStrategyManager"

    .line 954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 958
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string/jumbo v1, "strategy"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    goto :goto_0

    .line 963
    :catchall_0
    move-exception v1

    .line 967
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 968
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "notifyOtherProcessToUpdateLogStrategy: start service occured error"

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 973
    :cond_1
    return-void

    .line 971
    :catchall_1
    move-exception v1

    .line 972
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "notifyOtherProcessToUpdateLogStrategy"

    invoke-interface {v3, v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 974
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void

    .line 955
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void
.end method

.method private notifyToolProcessToUpdateLogStrategy(Ljava/lang/String;)V
    .locals 8
    .param p1, "strategyConfig"    # Ljava/lang/String;

    const-string v0, "LogStrategyManager"

    .line 977
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 982
    .local v1, "processMap":Ljava/util/Map;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    move-object v4, v3

    .line 983
    .local v4, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 984
    .local v3, "processes":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 985
    .local v5, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    nop

    .end local v5    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    goto :goto_0

    .line 989
    .end local v3    # "processes":Ljava/util/List;
    .end local v4    # "manager":Landroid/app/ActivityManager;
    :cond_1
    goto :goto_1

    .line 987
    :catchall_0
    move-exception v2

    move-object v4, v2

    .line 988
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcessIdByName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    const-string v2, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 991
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 992
    .local v4, "intent":Landroid/content/Intent;
    move-object v4, v3

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string/jumbo v2, "strategy"

    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 999
    goto :goto_2

    .line 997
    :catchall_1
    move-exception v2

    .line 1001
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1002
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "notifyToolProcessToUpdateLogStrategy: start service occured error"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1007
    :cond_2
    return-void

    .line 1005
    :catchall_2
    move-exception v2

    .line 1006
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "notifyToolProcessToUpdateLogStrategy"

    invoke-interface {v3, v0, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1009
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private parseLogStrategy(Ljava/lang/String;)V
    .locals 30
    .param p1, "strategyConfig"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "upInterval"

    const-string/jumbo v4, "yes"

    .line 1084
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    return-void

    .line 1088
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const-string v5, "LogStrategyManager"

    if-eqz v0, :cond_1

    .line 1089
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parseLogStrategy: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, v6

    .line 1094
    .local v7, "datas":Lorg/json/JSONObject;
    move-object v7, v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1095
    .local v8, "keyIterator":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 1096
    .local v0, "hasPositiveDiagnoseLog":Z
    const/4 v9, 0x0

    .line 1097
    .local v9, "hasPositiveUpInterval":Z
    const/4 v10, 0x0

    .line 1098
    .local v10, "hasZipAndSevenZip":Z
    const/4 v11, 0x0

    .line 1099
    .local v11, "hasDisableToolsProcess":Z
    const/4 v12, 0x0

    .line 1100
    .local v12, "hasEnableTrafficLimit":Z
    const/4 v13, 0x0

    move v14, v12

    move v15, v13

    move v12, v10

    move v13, v11

    move-object v10, v6

    move v11, v9

    move-object v9, v10

    move v6, v0

    move-object v0, v9

    .line 1102
    .end local v0    # "hasPositiveDiagnoseLog":Z
    .end local v9    # "hasPositiveUpInterval":Z
    .end local v10    # "hasZipAndSevenZip":Z
    .local v6, "hasPositiveDiagnoseLog":Z
    .local v11, "hasPositiveUpInterval":Z
    .local v12, "hasZipAndSevenZip":Z
    .local v13, "hasDisableToolsProcess":Z
    .local v14, "hasEnableTrafficLimit":Z
    .local v15, "hasDisableNoLockLog":Z
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string/jumbo v2, "parseLogStrategy"

    move-object/from16 v17, v10

    if-eqz v16, :cond_1d

    .line 1104
    :try_start_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2e

    move-object v9, v0

    .line 1105
    .local v9, "key":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1108
    .local v16, "dataItem":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    .end local v16    # "dataItem":Lorg/json/JSONObject;
    .local v0, "dataItem":Lorg/json/JSONObject;
    move-object v10, v0

    goto :goto_1

    .line 1109
    .end local v0    # "dataItem":Lorg/json/JSONObject;
    .restart local v16    # "dataItem":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    move-object/from16 v10, v16

    .line 1112
    .end local v16    # "dataItem":Lorg/json/JSONObject;
    .local v10, "dataItem":Lorg/json/JSONObject;
    :goto_1
    if-nez v10, :cond_2

    .line 1113
    move-object/from16 v24, v3

    move-object/from16 v16, v7

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move/from16 v21, v14

    move/from16 v22, v15

    goto/16 :goto_2c

    .line 1116
    :cond_2
    :try_start_2
    const-string/jumbo v0, "positiveDiagnoseLog"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2d

    move-object/from16 v16, v7

    .end local v7    # "datas":Lorg/json/JSONObject;
    .local v16, "datas":Lorg/json/JSONObject;
    const-string v7, "event"

    move-object/from16 v20, v8

    .end local v8    # "keyIterator":Ljava/util/Iterator;
    .local v20, "keyIterator":Ljava/util/Iterator;
    const-string/jumbo v8, "send"

    if-eqz v0, :cond_c

    .line 1117
    :try_start_3
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1118
    const/4 v0, 0x3

    iput v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1121
    :try_start_4
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1122
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1123
    .local v0, "networks":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1124
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1126
    .local v8, "network":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "networks":Lorg/json/JSONArray;
    .local v21, "networks":Lorg/json/JSONArray;
    const-string/jumbo v0, "none"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_3

    .line 1127
    move/from16 v22, v15

    const/4 v15, 0x1

    .end local v15    # "hasDisableNoLockLog":Z
    .local v22, "hasDisableNoLockLog":Z
    :try_start_5
    iput v15, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    .line 1128
    goto :goto_5

    .line 1130
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_3
    move/from16 v22, v15

    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1131
    const/4 v15, 0x2

    iput v15, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1123
    .end local v8    # "network":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    move/from16 v15, v22

    goto :goto_2

    .line 1136
    .end local v7    # "index":I
    .end local v21    # "networks":Lorg/json/JSONArray;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1123
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v0    # "networks":Lorg/json/JSONArray;
    .restart local v7    # "index":I
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_5
    move-object/from16 v21, v0

    move/from16 v22, v15

    .end local v0    # "networks":Lorg/json/JSONArray;
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v21    # "networks":Lorg/json/JSONArray;
    .restart local v22    # "hasDisableNoLockLog":Z
    goto :goto_3

    .line 1121
    .end local v7    # "index":I
    .end local v21    # "networks":Lorg/json/JSONArray;
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_6
    move/from16 v22, v15

    .line 1138
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    :goto_3
    goto :goto_5

    .line 1136
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :catchall_2
    move-exception v0

    move/from16 v22, v15

    .line 1137
    .end local v15    # "hasDisableNoLockLog":Z
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v22    # "hasDisableNoLockLog":Z
    :goto_4
    :try_start_6
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1141
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5
    :try_start_7
    iget v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_a

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1142
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v21, v14

    .end local v14    # "hasEnableTrafficLimit":Z
    .local v21, "hasEnableTrafficLimit":Z
    const-wide/16 v14, 0x1

    :try_start_8
    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    mul-long v7, v7, v14

    .line 1143
    sput-wide v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    const-wide/16 v14, 0x0

    cmp-long v0, v7, v14

    if-gtz v0, :cond_7

    .line 1144
    sget-wide v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->DEFAULT_REQUEST_TIME_SPAN:J

    sput-wide v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    goto :goto_6

    .line 1145
    :cond_7
    sget-wide v14, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->MINIMUM_REQUEST_TIME_SPAN:J

    cmp-long v0, v7, v14

    if-gez v0, :cond_8

    .line 1146
    sput-wide v14, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    goto :goto_6

    .line 1147
    :cond_8
    sget-wide v14, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->MAXIMAL_REQUEST_TIME_SPAN:J

    cmp-long v0, v7, v14

    if-lez v0, :cond_9

    .line 1148
    sput-wide v14, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1150
    :cond_9
    :goto_6
    const/4 v11, 0x1

    goto :goto_7

    .line 1152
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 1141
    .end local v21    # "hasEnableTrafficLimit":Z
    .restart local v14    # "hasEnableTrafficLimit":Z
    :cond_a
    move/from16 v21, v14

    .line 1154
    .end local v14    # "hasEnableTrafficLimit":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    :goto_7
    goto :goto_9

    .line 1152
    .end local v21    # "hasEnableTrafficLimit":Z
    .restart local v14    # "hasEnableTrafficLimit":Z
    :catchall_4
    move-exception v0

    move/from16 v21, v14

    .line 1153
    .end local v14    # "hasEnableTrafficLimit":Z
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v21    # "hasEnableTrafficLimit":Z
    :goto_8
    :try_start_9
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_9

    .line 1389
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .end local v21    # "hasEnableTrafficLimit":Z
    .restart local v14    # "hasEnableTrafficLimit":Z
    :catchall_5
    move-exception v0

    move/from16 v21, v14

    move-object/from16 v24, v3

    move-object v9, v10

    move-object/from16 v10, v17

    .end local v14    # "hasEnableTrafficLimit":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    goto/16 :goto_2d

    .line 1157
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v14    # "hasEnableTrafficLimit":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_b
    move/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    const/4 v7, 0x1

    iput v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1159
    :goto_9
    const/4 v6, 0x1

    .line 1160
    move-object/from16 v2, p1

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_0

    .line 1389
    .end local v9    # "key":Ljava/lang/String;
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v14    # "hasEnableTrafficLimit":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :catchall_6
    move-exception v0

    move/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v24, v3

    move-object v9, v10

    move-object/from16 v10, v17

    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    goto/16 :goto_2d

    .line 1163
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v14    # "hasEnableTrafficLimit":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_c
    move/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    :try_start_a
    const-string/jumbo v0, "zipAndSevenZip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2c

    if-eqz v0, :cond_d

    .line 1164
    const/4 v7, 0x2

    :try_start_b
    iput v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1165
    const/4 v12, 0x1

    .line 1166
    move-object/from16 v2, p1

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_0

    .line 1389
    .end local v9    # "key":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v24, v3

    move-object v9, v10

    move-object/from16 v10, v17

    goto/16 :goto_2d

    .line 1169
    .restart local v9    # "key":Ljava/lang/String;
    :cond_d
    :try_start_c
    const-string v0, "disableToolsProcess"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2c

    if-eqz v0, :cond_e

    .line 1170
    const/4 v7, 0x2

    :try_start_d
    iput v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1171
    const/4 v13, 0x1

    .line 1172
    move-object/from16 v2, p1

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_0

    .line 1175
    :cond_e
    :try_start_e
    const-string v0, "enableTrafficLimit"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2c

    if-eqz v0, :cond_f

    .line 1176
    const/4 v7, 0x1

    :try_start_f
    iput v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1177
    const/4 v14, 0x1

    .line 1178
    .end local v21    # "hasEnableTrafficLimit":Z
    .restart local v14    # "hasEnableTrafficLimit":Z
    move-object/from16 v2, p1

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v15, v22

    goto/16 :goto_0

    .line 1181
    .end local v14    # "hasEnableTrafficLimit":Z
    .restart local v21    # "hasEnableTrafficLimit":Z
    :cond_f
    :try_start_10
    const-string v0, "disable_nolock_log"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2c

    if-eqz v0, :cond_10

    .line 1182
    const/4 v7, 0x1

    :try_start_11
    iput v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1183
    const/4 v15, 0x1

    .line 1184
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    move-object/from16 v2, p1

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    goto/16 :goto_0

    .line 1187
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    :cond_10
    :try_start_12
    const-string/jumbo v0, "realtimeConfig"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2c

    const/4 v14, 0x0

    if-eqz v0, :cond_13

    .line 1189
    :try_start_13
    const-string v0, "interval"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1190
    .local v0, "interval":I
    iget-object v2, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->setInterval(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1193
    .end local v0    # "interval":I
    goto :goto_a

    .line 1191
    :catchall_8
    move-exception v0

    .line 1196
    :goto_a
    :try_start_14
    const-string v0, "enable"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_b

    .line 1200
    :cond_11
    iget-object v2, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->setEnable(Z)V

    .line 1204
    .end local v0    # "value":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    goto/16 :goto_2c

    .line 1198
    .restart local v0    # "value":Ljava/lang/String;
    :cond_12
    :goto_b
    iget-object v2, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-virtual {v2, v14}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->setEnable(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    goto/16 :goto_2c

    .line 1202
    .end local v0    # "value":Ljava/lang/String;
    :catchall_9
    move-exception v0

    .line 1206
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    goto/16 :goto_2c

    .line 1209
    :cond_13
    :try_start_15
    const-string v0, "delayConfig"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2c

    if-eqz v0, :cond_15

    .line 1211
    :try_start_16
    const-string/jumbo v0, "tStart"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1212
    .local v0, "tStart":Lorg/json/JSONArray;
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->c()V

    .line 1213
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_14

    .line 1214
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    .line 1215
    .local v7, "value":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v14

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(Ljava/lang/Long;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 1213
    .end local v7    # "value":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1218
    .end local v0    # "tStart":Lorg/json/JSONArray;
    .end local v2    # "index":I
    :cond_14
    goto :goto_d

    .line 1217
    :catchall_a
    move-exception v0

    .line 1220
    :goto_d
    :try_start_17
    const-string/jumbo v0, "minDelay"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1221
    .local v0, "minDelay":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 1223
    .end local v0    # "minDelay":I
    goto :goto_e

    .line 1222
    :catchall_b
    move-exception v0

    .line 1225
    :goto_e
    :try_start_18
    const-string/jumbo v0, "maxDelay"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1226
    .local v0, "maxDelay":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b(I)V

    .line 1227
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1229
    .end local v0    # "maxDelay":I
    goto :goto_f

    .line 1228
    :catchall_c
    move-exception v0

    .line 1231
    :goto_f
    :try_start_19
    const-string v0, "delayDesc"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "delayDesc":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 1234
    .end local v0    # "delayDesc":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    goto/16 :goto_2c

    .line 1233
    :catchall_d
    move-exception v0

    .line 1236
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    goto/16 :goto_2c

    .line 1239
    :cond_15
    :try_start_1a
    const-string v0, "config"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1240
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    move-object v15, v0

    .line 1241
    .local v15, "configKeyIterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2c

    if-eqz v0, :cond_1b

    .line 1244
    :try_start_1b
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2b

    move-object/from16 v18, v0

    .line 1245
    .local v18, "configkey":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1247
    .local v23, "configItem":Lorg/json/JSONObject;
    move-object/from16 v14, v18

    .end local v18    # "configkey":Ljava/lang/String;
    .local v14, "configkey":Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    move-object/from16 v23, v0

    .line 1250
    move-object/from16 v24, v3

    move-object/from16 v3, v23

    goto :goto_11

    .line 1248
    :catchall_e
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v3, v23

    .line 1251
    .end local v23    # "configItem":Lorg/json/JSONObject;
    .local v3, "configItem":Lorg/json/JSONObject;
    :goto_11
    if-nez v3, :cond_16

    .line 1252
    move-object/from16 v3, v24

    const/4 v14, 0x0

    goto :goto_10

    .line 1255
    :cond_16
    :try_start_1d
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1256
    .local v18, "configItemIterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2a

    if-eqz v0, :cond_1a

    .line 1258
    :try_start_1e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_29

    move-object/from16 v23, v0

    .line 1259
    .local v23, "header":Ljava/lang/String;
    move-object/from16 v25, v9

    move-object/from16 v9, v23

    .end local v23    # "header":Ljava/lang/String;
    .local v9, "header":Ljava/lang/String;
    .local v25, "key":Ljava/lang/String;
    :try_start_1f
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v23, v0

    .line 1261
    .local v23, "item":Lorg/json/JSONObject;
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;-><init>()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_28

    move-object/from16 v26, v0

    .line 1263
    .local v26, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    :try_start_20
    const-string/jumbo v0, "write"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_27

    move-object/from16 v27, v3

    move-object/from16 v3, v23

    .end local v23    # "item":Lorg/json/JSONObject;
    .local v3, "item":Lorg/json/JSONObject;
    .local v27, "configItem":Lorg/json/JSONObject;
    :try_start_21
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_26

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    .end local v26    # "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .local v10, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .local v23, "dataItem":Lorg/json/JSONObject;
    :try_start_22
    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isWrite:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_25

    .line 1266
    nop

    .line 1269
    :try_start_23
    const-string v0, "level"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    .line 1273
    goto :goto_13

    .line 1270
    :catchall_f
    move-exception v0

    .line 1276
    :goto_13
    :try_start_24
    const-string/jumbo v0, "realtime"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->realtime:Z

    .line 1277
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->getRealtimeCategory()Ljava/util/Map;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    move-object/from16 v26, v14

    const/16 v19, 0x1

    .end local v14    # "configkey":Ljava/lang/String;
    .local v26, "configkey":Ljava/lang/String;
    :try_start_25
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v0, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    .line 1281
    goto :goto_15

    .line 1278
    :catchall_10
    move-exception v0

    goto :goto_14

    .end local v26    # "configkey":Ljava/lang/String;
    .restart local v14    # "configkey":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object/from16 v26, v14

    .line 1279
    .end local v14    # "configkey":Ljava/lang/String;
    .local v17, "e":Ljava/lang/Throwable;
    .restart local v26    # "configkey":Ljava/lang/String;
    :goto_14
    const/4 v14, 0x0

    :try_start_26
    iput-boolean v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->realtime:Z

    .line 1280
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->getRealtimeCategory()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_24

    .line 1284
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_15
    const/4 v14, -0x1

    :try_start_27
    const-string/jumbo v0, "uploadRate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 1287
    goto :goto_16

    .line 1285
    :catchall_12
    move-exception v0

    .line 1286
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_28
    iput v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_24

    .line 1290
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_16
    :try_start_29
    const-string v0, "levelRate1"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    .line 1293
    goto :goto_17

    .line 1291
    :catchall_13
    move-exception v0

    .line 1292
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_2a
    iput v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_24

    .line 1296
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_17
    :try_start_2b
    const-string v0, "levelRate2"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    .line 1299
    goto :goto_18

    .line 1297
    :catchall_14
    move-exception v0

    .line 1298
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_2c
    iput v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_24

    .line 1302
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_18
    :try_start_2d
    const-string v0, "levelRate3"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_15

    .line 1305
    goto :goto_19

    .line 1303
    :catchall_15
    move-exception v0

    .line 1304
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_2e
    iput v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_24

    .line 1308
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_19
    :try_start_2f
    const-string/jumbo v0, "uploadInterval"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    .line 1311
    goto :goto_1a

    .line 1309
    :catchall_16
    move-exception v0

    .line 1310
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_30
    iput v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_24

    .line 1314
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_1a
    :try_start_31
    const-string v0, "encrypt"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isEncrypt:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    .line 1317
    goto :goto_1b

    .line 1315
    :catchall_17
    move-exception v0

    .line 1316
    .restart local v17    # "e":Ljava/lang/Throwable;
    const/4 v14, 0x0

    :try_start_32
    iput-boolean v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isEncrypt:Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_24

    .line 1321
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_1b
    :try_start_33
    const-string/jumbo v0, "usemetds"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->usemetds:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_18

    .line 1324
    goto :goto_1c

    .line 1322
    :catchall_18
    move-exception v0

    .line 1323
    .restart local v17    # "e":Ljava/lang/Throwable;
    const/4 v14, 0x0

    :try_start_34
    iput-boolean v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->usemetds:Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_24

    .line 1327
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_1c
    :try_start_35
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    move-object v14, v0

    .line 1328
    .local v14, "events":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1d
    move-object/from16 v28, v7

    :try_start_36
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_17

    .line 1329
    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    .line 1330
    .local v7, "event":Ljava/lang/String;
    move-object/from16 v17, v14

    .end local v14    # "events":Lorg/json/JSONArray;
    .local v17, "events":Lorg/json/JSONArray;
    :try_start_37
    iget-object v14, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadEvents:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_19

    .line 1328
    nop

    .end local v7    # "event":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v14, v17

    move-object/from16 v7, v28

    goto :goto_1d

    .line 1332
    .end local v0    # "index":I
    .end local v17    # "events":Lorg/json/JSONArray;
    :catchall_19
    move-exception v0

    goto :goto_1e

    .line 1328
    .restart local v0    # "index":I
    :cond_17
    move-object/from16 v17, v14

    .line 1334
    .end local v0    # "index":I
    goto :goto_1f

    .line 1332
    :catchall_1a
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_1e

    :catchall_1b
    move-exception v0

    move-object/from16 v28, v7

    :goto_1e
    move-object/from16 v14, v17

    .line 1337
    :goto_1f
    :try_start_38
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v7, v14

    .line 1338
    .local v7, "sendConditions":Lorg/json/JSONArray;
    move-object v14, v0

    .end local v7    # "sendConditions":Lorg/json/JSONArray;
    .local v14, "sendConditions":Lorg/json/JSONArray;
    if-eqz v0, :cond_19

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 1339
    const/4 v7, 0x1

    iput-boolean v7, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->hasSendCondition:Z

    .line 1340
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_20
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_18

    .line 1341
    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    .line 1342
    .local v7, "condition":Ljava/lang/String;
    move-object/from16 v29, v8

    :try_start_39
    iget-object v8, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 1340
    nop

    .end local v7    # "condition":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v29

    goto :goto_20

    .line 1345
    .end local v0    # "index":I
    .end local v14    # "sendConditions":Lorg/json/JSONArray;
    :catchall_1c
    move-exception v0

    goto :goto_21

    .line 1340
    .restart local v0    # "index":I
    :cond_18
    move-object/from16 v29, v8

    goto :goto_21

    .line 1345
    .end local v0    # "index":I
    :catchall_1d
    move-exception v0

    move-object/from16 v29, v8

    goto :goto_21

    .line 1338
    :cond_19
    move-object/from16 v29, v8

    .line 1351
    :goto_21
    :try_start_3a
    const-string/jumbo v0, "maxLogCount"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->threshold:I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1e

    .line 1354
    goto :goto_22

    .line 1352
    :catchall_1e
    move-exception v0

    .line 1357
    :goto_22
    :try_start_3b
    const-string/jumbo v0, "periodInterval"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->periodInterval:I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1f

    .line 1360
    goto :goto_23

    .line 1358
    :catchall_1f
    move-exception v0

    .line 1363
    :goto_23
    :try_start_3c
    const-string v0, "delayUpload"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->delayUpload:Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    .line 1366
    goto :goto_24

    .line 1364
    :catchall_20
    move-exception v0

    move-object/from16 v17, v14

    .line 1365
    .local v17, "e":Ljava/lang/Throwable;
    const/4 v7, 0x0

    :try_start_3d
    iput-boolean v7, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->delayUpload:Z
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_23

    move-object/from16 v14, v17

    .line 1369
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_24
    :try_start_3e
    const-string v0, "floodRate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    .line 1370
    const/4 v7, 0x1

    iput-boolean v7, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_21

    .line 1374
    move-object/from16 v17, v14

    const/4 v7, 0x0

    goto :goto_25

    .line 1371
    :catchall_21
    move-exception v0

    move-object/from16 v17, v14

    .line 1372
    .local v17, "ex":Ljava/lang/Throwable;
    const/4 v7, -0x1

    :try_start_3f
    iput v7, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    .line 1373
    const/4 v7, 0x0

    :try_start_40
    iput-boolean v7, v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z

    .line 1376
    .end local v17    # "ex":Ljava/lang/Throwable;
    :goto_25
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_23

    .line 1379
    move-object/from16 v10, v23

    move-object/from16 v9, v25

    move-object/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v9    # "header":Ljava/lang/String;
    .end local v10    # "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    goto/16 :goto_12

    .line 1377
    :catchall_22
    move-exception v0

    goto :goto_26

    :catchall_23
    move-exception v0

    goto/16 :goto_28

    :catchall_24
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    :goto_26
    const/4 v7, 0x0

    goto :goto_28

    .line 1264
    .end local v26    # "configkey":Ljava/lang/String;
    .restart local v3    # "item":Lorg/json/JSONObject;
    .restart local v9    # "header":Ljava/lang/String;
    .restart local v10    # "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .local v14, "configkey":Ljava/lang/String;
    :catchall_25
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v26, v14

    const/4 v7, 0x0

    .end local v14    # "configkey":Ljava/lang/String;
    .restart local v26    # "configkey":Ljava/lang/String;
    goto :goto_27

    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .local v10, "dataItem":Lorg/json/JSONObject;
    .restart local v14    # "configkey":Ljava/lang/String;
    .local v26, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    :catchall_26
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    const/4 v7, 0x0

    move-object/from16 v26, v14

    .end local v14    # "configkey":Ljava/lang/String;
    .local v10, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .local v26, "configkey":Ljava/lang/String;
    goto :goto_27

    .end local v27    # "configItem":Lorg/json/JSONObject;
    .local v3, "configItem":Lorg/json/JSONObject;
    .local v10, "dataItem":Lorg/json/JSONObject;
    .restart local v14    # "configkey":Ljava/lang/String;
    .local v23, "item":Lorg/json/JSONObject;
    .local v26, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    :catchall_27
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v3, v23

    const/4 v7, 0x0

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    move-object/from16 v26, v14

    .line 1265
    .end local v14    # "configkey":Ljava/lang/String;
    .local v3, "item":Lorg/json/JSONObject;
    .local v10, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .local v17, "e":Ljava/lang/Throwable;
    .local v23, "dataItem":Lorg/json/JSONObject;
    .local v26, "configkey":Ljava/lang/String;
    .restart local v27    # "configItem":Lorg/json/JSONObject;
    :goto_27
    move-object/from16 v10, v23

    move-object/from16 v9, v25

    move-object/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_12

    .line 1377
    .end local v9    # "header":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Throwable;
    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v26    # "configkey":Ljava/lang/String;
    .end local v27    # "configItem":Lorg/json/JSONObject;
    .local v3, "configItem":Lorg/json/JSONObject;
    .local v10, "dataItem":Lorg/json/JSONObject;
    .restart local v14    # "configkey":Ljava/lang/String;
    :catchall_28
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v23, v10

    move-object/from16 v26, v14

    const/4 v7, 0x0

    .end local v3    # "configItem":Lorg/json/JSONObject;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .end local v14    # "configkey":Ljava/lang/String;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v26    # "configkey":Ljava/lang/String;
    .restart local v27    # "configItem":Lorg/json/JSONObject;
    goto :goto_28

    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .end local v26    # "configkey":Ljava/lang/String;
    .end local v27    # "configItem":Lorg/json/JSONObject;
    .restart local v3    # "configItem":Lorg/json/JSONObject;
    .local v9, "key":Ljava/lang/String;
    .restart local v10    # "dataItem":Lorg/json/JSONObject;
    .restart local v14    # "configkey":Ljava/lang/String;
    :catchall_29
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v14

    const/4 v7, 0x0

    .line 1379
    .end local v3    # "configItem":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .end local v14    # "configkey":Ljava/lang/String;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v25    # "key":Ljava/lang/String;
    .restart local v26    # "configkey":Ljava/lang/String;
    .restart local v27    # "configItem":Lorg/json/JSONObject;
    :goto_28
    move-object/from16 v10, v23

    move-object/from16 v9, v25

    move-object/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_12

    .line 1256
    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .end local v26    # "configkey":Ljava/lang/String;
    .end local v27    # "configItem":Lorg/json/JSONObject;
    .restart local v3    # "configItem":Lorg/json/JSONObject;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "dataItem":Lorg/json/JSONObject;
    .restart local v14    # "configkey":Ljava/lang/String;
    :cond_1a
    move-object/from16 v27, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v14

    const/4 v7, 0x0

    .line 1384
    .end local v3    # "configItem":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .end local v14    # "configkey":Ljava/lang/String;
    .end local v18    # "configItemIterator":Ljava/util/Iterator;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v25    # "key":Ljava/lang/String;
    move-object/from16 v3, v24

    move-object/from16 v7, v28

    goto :goto_2b

    .line 1382
    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "dataItem":Lorg/json/JSONObject;
    :catchall_2a
    move-exception v0

    :goto_29
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    const/4 v7, 0x0

    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v25    # "key":Ljava/lang/String;
    goto :goto_2a

    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "dataItem":Lorg/json/JSONObject;
    :catchall_2b
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_29

    .line 1384
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v25    # "key":Ljava/lang/String;
    :goto_2a
    move-object/from16 v10, v23

    move-object/from16 v3, v24

    move-object/from16 v9, v25

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    :goto_2b
    const/4 v14, 0x0

    goto/16 :goto_10

    .line 1386
    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "dataItem":Lorg/json/JSONObject;
    :cond_1b
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "dataItem":Lorg/json/JSONObject;
    .restart local v23    # "dataItem":Lorg/json/JSONObject;
    .restart local v25    # "key":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v9, v23

    move-object/from16 v0, v25

    goto/16 :goto_0

    .line 1239
    .end local v15    # "configKeyIterator":Ljava/util/Iterator;
    .end local v23    # "dataItem":Lorg/json/JSONObject;
    .end local v25    # "key":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_1c
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    .line 1391
    .end local v9    # "key":Ljava/lang/String;
    nop

    .line 1102
    .end local v16    # "datas":Lorg/json/JSONObject;
    .end local v20    # "keyIterator":Ljava/util/Iterator;
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .local v7, "datas":Lorg/json/JSONObject;
    .local v8, "keyIterator":Ljava/util/Iterator;
    .local v14, "hasEnableTrafficLimit":Z
    .local v15, "hasDisableNoLockLog":Z
    :goto_2c
    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v9, v23

    move-object/from16 v3, v24

    move-object/from16 v0, v25

    .end local v7    # "datas":Lorg/json/JSONObject;
    .end local v8    # "keyIterator":Ljava/util/Iterator;
    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v16    # "datas":Lorg/json/JSONObject;
    .restart local v20    # "keyIterator":Ljava/util/Iterator;
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    goto/16 :goto_0

    .line 1389
    :catchall_2c
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v23, v10

    move-object/from16 v10, v17

    move-object/from16 v9, v23

    goto :goto_2d

    .end local v16    # "datas":Lorg/json/JSONObject;
    .end local v20    # "keyIterator":Ljava/util/Iterator;
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v7    # "datas":Lorg/json/JSONObject;
    .restart local v8    # "keyIterator":Ljava/util/Iterator;
    .restart local v14    # "hasEnableTrafficLimit":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :catchall_2d
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v16, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v10, v17

    move-object/from16 v9, v23

    goto :goto_2d

    :catchall_2e
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v16, v7

    move-object/from16 v20, v8

    move/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v10, v17

    .line 1390
    .end local v7    # "datas":Lorg/json/JSONObject;
    .end local v8    # "keyIterator":Ljava/util/Iterator;
    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v16    # "datas":Lorg/json/JSONObject;
    .restart local v20    # "keyIterator":Ljava/util/Iterator;
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    :goto_2d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1391
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move-object/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 1394
    .end local v16    # "datas":Lorg/json/JSONObject;
    .end local v20    # "keyIterator":Ljava/util/Iterator;
    .end local v21    # "hasEnableTrafficLimit":Z
    .end local v22    # "hasDisableNoLockLog":Z
    .restart local v7    # "datas":Lorg/json/JSONObject;
    .restart local v8    # "keyIterator":Ljava/util/Iterator;
    .restart local v14    # "hasEnableTrafficLimit":Z
    .restart local v15    # "hasDisableNoLockLog":Z
    :cond_1d
    move-object/from16 v16, v7

    move-object/from16 v20, v8

    move/from16 v21, v14

    move/from16 v22, v15

    .end local v7    # "datas":Lorg/json/JSONObject;
    .end local v8    # "keyIterator":Ljava/util/Iterator;
    .end local v14    # "hasEnableTrafficLimit":Z
    .end local v15    # "hasDisableNoLockLog":Z
    .restart local v16    # "datas":Lorg/json/JSONObject;
    .restart local v20    # "keyIterator":Ljava/util/Iterator;
    .restart local v21    # "hasEnableTrafficLimit":Z
    .restart local v22    # "hasDisableNoLockLog":Z
    if-nez v6, :cond_1e

    .line 1395
    const/4 v3, 0x1

    iput v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    goto :goto_2e

    .line 1394
    :cond_1e
    const/4 v3, 0x1

    .line 1397
    :goto_2e
    iget v4, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    if-eq v4, v3, :cond_1f

    if-nez v11, :cond_20

    .line 1398
    :cond_1f
    sget-wide v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->DEFAULT_REQUEST_TIME_SPAN:J

    sput-wide v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    .line 1400
    :cond_20
    if-nez v12, :cond_21

    .line 1401
    const/4 v3, 0x1

    iput v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    goto :goto_2f

    .line 1400
    :cond_21
    const/4 v3, 0x1

    .line 1403
    :goto_2f
    if-nez v13, :cond_22

    .line 1404
    iput v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    .line 1406
    :cond_22
    if-nez v21, :cond_23

    .line 1407
    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    goto :goto_30

    .line 1406
    :cond_23
    const/4 v3, 0x2

    .line 1409
    :goto_30
    if-nez v22, :cond_24

    .line 1410
    iput v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    .line 1413
    :cond_24
    iget-object v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v4, 0x4

    const-string v7, "LogStrategyConfig"

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v0, v3

    iget v4, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    const-string v7, "PositiveDiagnose"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1415
    sget-wide v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    const-string v7, "CurrentRequestTimeSpan"

    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1416
    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    const-string v4, "ZipAndSevenZip"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1417
    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    const-string v4, "DisableToolsProcess"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1418
    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    const-string v4, "EnableTrafficLimit"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1419
    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    const-string v4, "Disable_NoLock_Log"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 1423
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v2, v3

    const-string v4, ", positiveDiagnoseTag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1424
    const-string v3, ", CURRENT_REQUEST_TIME_SPAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1425
    const-string v3, ", zipAndSevenZipTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1426
    const-string v3, ", disableToolsProcessTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1427
    const-string v3, ", enableTrafficLimitTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1428
    const-string v3, ", disableNoLockLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1429
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private readAndParseStrategy()V
    .locals 7

    .line 170
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isReadAndParseStrategy:Z

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isReadAndParseStrategy:Z

    if-eqz v2, :cond_1

    .line 178
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    const/4 v2, -0x1

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 184
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v4, "LogStrategyConfig"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 191
    const-string v4, "StrategConfigContent2nd"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->parseLogStrategy(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v3

    .line 194
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LogStrategyManager"

    const-string/jumbo v6, "readAndParseStrategy"

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isReadAndParseStrategy:Z

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 202
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LogStrategyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " readAndParseStrategy END. spend: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 202
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private saveRequestTimeAndRevertRequestSpanToNormal()V
    .locals 4

    .line 1498
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v1, "LogStrategyConfig"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1499
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1500
    .local v1, "time":J
    const-string v3, "PreviousRequestTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1502
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->revertRequestSpanToNormal()V

    .line 1503
    return-void
.end method

.method private syncRequestLogConfig(Ljava/lang/String;Z)V
    .locals 20
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "isForceRequest"    # Z

    move-object/from16 v1, p0

    const-string v2, ""

    .line 768
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncRequestLogConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isForceRequest: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "LogStrategyManager"

    invoke-interface {v0, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v7, "syncRequestLogConfig: is not main process"

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    const-string v0, "LogStrategy_request_in_bg_disable"

    invoke-static {v0, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syncRequestLogConfig: background and disable "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 780
    return-void

    .line 776
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .line 784
    :cond_2
    iget-object v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 785
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v7, "syncRequestLogConfig return,cause user has not agreed."

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    return-void

    .line 790
    :cond_3
    goto :goto_0

    .line 788
    :catchall_0
    move-exception v0

    .line 789
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 793
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v0, "logHost":Ljava/lang/String;
    move-object v8, v7

    .end local v0    # "logHost":Ljava/lang/String;
    .local v8, "logHost":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 795
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "syncRequestLogConfig: host is none"

    invoke-interface {v0, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void

    .line 799
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v3

    .line 802
    .local v7, "params":Ljava/util/Map;
    move-object v7, v0

    const-string/jumbo v9, "productId"

    iget-object v10, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->contextInfo:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v0, "productVersion"

    iget-object v9, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->contextInfo:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/ContextInfo;->f()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string/jumbo v0, "templateId"

    const-string v9, "2.0"

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/loggw/logConfig.do"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 809
    .local v15, "url":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/common/logging/http/HttpClient;

    iget-object v9, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v15, v9}, Lcom/alipay/mobile/common/logging/http/HttpClient;-><init>(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    .line 811
    .local v10, "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    const/4 v9, 0x0

    .line 812
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    nop

    .line 814
    .local v2, "errorMessage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v10, v7}, Lcom/alipay/mobile/common/logging/http/HttpClient;->synchronousRequestByGET(Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v0

    .line 817
    move-object v0, v9

    goto :goto_1

    .line 816
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v0, v3

    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v0, v9

    .line 819
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_1
    if-nez v0, :cond_5

    .line 820
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 821
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syncRequestLogConfig: response is NULL, network error: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void

    .line 825
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->saveRequestTimeAndRevertRequestSpanToNormal()V

    .line 828
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/http/HttpClient;->getResponseCode()I

    move-result v3

    .line 829
    .local v3, "responseCode":I
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/http/HttpClient;->getResponseContent()Ljava/lang/String;

    move-result-object v9

    .line 832
    .local v9, "responseContent":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/http/HttpClient;->getRequestLength()J

    move-result-wide v11

    .line 833
    .local v11, "requestLength":J
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/http/HttpClient;->getResponseLength()J

    move-result-wide v13

    .line 834
    .local v13, "responseLength":J
    sget-object v16, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MDAP_LOG:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v17, "strategy"

    move-object/from16 v18, v9

    .end local v9    # "responseContent":Ljava/lang/String;
    .local v18, "responseContent":Ljava/lang/String;
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10    # "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    .local v16, "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    move-object v10, v15

    move-object/from16 v19, v15

    .end local v15    # "url":Ljava/lang/String;
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v15, v17

    invoke-static/range {v9 .. v15}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    .line 837
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/http/HttpClient;->closeStreamForNextExecute()V

    .line 839
    const/16 v9, 0xc8

    if-ne v3, v9, :cond_7

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v9, v18

    goto :goto_2

    .line 845
    :cond_6
    move-object/from16 v9, v18

    .end local v18    # "responseContent":Ljava/lang/String;
    .restart local v9    # "responseContent":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->syncLogConfig(Ljava/lang/String;)V

    .line 848
    .end local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v7    # "params":Ljava/util/Map;
    .end local v8    # "logHost":Ljava/lang/String;
    .end local v9    # "responseContent":Ljava/lang/String;
    .end local v11    # "requestLength":J
    .end local v13    # "responseLength":J
    .end local v16    # "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    .end local v19    # "url":Ljava/lang/String;
    return-void

    .line 839
    .restart local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v2    # "errorMessage":Ljava/lang/String;
    .restart local v3    # "responseCode":I
    .restart local v7    # "params":Ljava/util/Map;
    .restart local v8    # "logHost":Ljava/lang/String;
    .restart local v11    # "requestLength":J
    .restart local v13    # "responseLength":J
    .restart local v16    # "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    .restart local v18    # "responseContent":Ljava/lang/String;
    .restart local v19    # "url":Ljava/lang/String;
    :cond_7
    move-object/from16 v9, v18

    .line 840
    .end local v18    # "responseContent":Ljava/lang/String;
    .restart local v9    # "responseContent":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    .end local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    .local v17, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string/jumbo v0, "syncRequestLogConfig: response is none, or responseCode is "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 842
    return-void

    .line 846
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v7    # "params":Ljava/util/Map;
    .end local v8    # "logHost":Ljava/lang/String;
    .end local v9    # "responseContent":Ljava/lang/String;
    .end local v11    # "requestLength":J
    .end local v13    # "responseLength":J
    .end local v16    # "httpClient":Lcom/alipay/mobile/common/logging/http/HttpClient;
    .end local v17    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v19    # "url":Ljava/lang/String;
    :catchall_2
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "syncRequestLogConfig"

    invoke-interface {v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public adjustRequestSpanByNetNotMatch()V
    .locals 0

    .line 682
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 684
    return-void
.end method

.method public adjustRequestSpanByReceived()V
    .locals 0

    .line 675
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 678
    return-void
.end method

.method public adjustRequestSpanByUploadFail()V
    .locals 0

    .line 694
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 695
    return-void
.end method

.method public adjustRequestSpanByZipFail()V
    .locals 0

    .line 688
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 690
    return-void
.end method

.method public getBackgroundTime()J
    .locals 4

    .line 1060
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1062
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v1, "CrashCountInfo"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1063
    const-string v1, "backgroundTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHitTestRate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 1573
    const-string v0, "1000"

    if-nez p1, :cond_0

    .line 1574
    return-object v0

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 1577
    .local v2, "info":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 1578
    return-object v0

    .line 1580
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getUploadRateByLevel(Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;I)I

    move-result v1

    const/4 v3, 0x0

    .line 1581
    .local v3, "rate":I
    move v3, v1

    if-gez v1, :cond_2

    .line 1582
    return-object v0

    .line 1584
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalEventMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1596
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->intervalEventMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLogStrategyInfo(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .locals 1
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    return-object v0

    .line 666
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogStrategyInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRealTimeConfig()Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    return-object v0
.end method

.method public isDelayUploadCategory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 652
    return v1

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 656
    .local v2, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 657
    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z

    return v0

    .line 659
    :cond_1
    return v1
.end method

.method public isDisableNoLockLog()Z
    .locals 3

    .line 1489
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    if-nez v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v2, "LogStrategyConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1491
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x2

    const-string v2, "Disable_NoLock_Log"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    .line 1493
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableNoLockLog:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableToolsProcess()Z
    .locals 4

    .line 1465
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1467
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "LogStrategyConfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1469
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "DisableToolsProcess"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    .line 1471
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableTrafficLimit()Z
    .locals 3

    .line 1475
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1477
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    if-nez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v2, "LogStrategyConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1479
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x2

    const-string v2, "EnableTrafficLimit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    .line 1483
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->enableTrafficLimitTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLogSend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logCategoryFilter"    # Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 393
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 394
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 395
    return-object v1

    .line 398
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 399
    .local v0, "logCategory":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 400
    return-object v1

    .line 403
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getCurrentNetworkType2Str()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "networkType":Ljava/lang/String;
    const-string/jumbo v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    return-object v0

    .line 407
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    move-object v5, v1

    .line 408
    .local v5, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v5, v4

    if-eqz v4, :cond_7

    .line 409
    iget-boolean v4, v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->hasSendCondition:Z

    if-nez v4, :cond_3

    .line 410
    return-object v0

    .line 412
    :cond_3
    const-string v4, "4g"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 413
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 414
    return-object v1

    .line 416
    :cond_4
    const-string v4, "3g"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 417
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 418
    return-object v1

    .line 420
    :cond_5
    const-string v4, "2g"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 421
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 422
    return-object v1

    .line 424
    :cond_6
    const-string/jumbo v4, "wifi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 425
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 426
    return-object v1

    .line 430
    :cond_7
    return-object v0
.end method

.method public isLogSend(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 344
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 345
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 346
    return v3

    .line 351
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 354
    .local v0, "logCategory":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getCurrentNetworkType2Str()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "networkType":Ljava/lang/String;
    const-string/jumbo v5, "unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 356
    return v6

    .line 359
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    .line 360
    .local v1, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v1, v5

    if-eqz v5, :cond_6

    .line 361
    iget-boolean v5, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->hasSendCondition:Z

    if-nez v5, :cond_2

    .line 362
    return v6

    .line 364
    :cond_2
    const-string v5, "4g"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 365
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 366
    return v3

    .line 368
    :cond_3
    const-string v5, "3g"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 369
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 370
    return v3

    .line 372
    :cond_4
    const-string v5, "2g"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 373
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 374
    return v3

    .line 376
    :cond_5
    const-string/jumbo v5, "wifi"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 377
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 378
    return v3

    .line 382
    :cond_6
    return v6
.end method

.method public isLogUpload(Ljava/lang/String;ILcom/alipay/mobile/common/logging/api/LogContext;)Z
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "msgCount"    # I
    .param p3, "context"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 543
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v1, 0x0

    .line 592
    .local v1, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->threshold:I

    if-lez v0, :cond_0

    .line 593
    iget v0, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->threshold:I

    .local v0, "threshold":I
    goto :goto_0

    .line 595
    .end local v0    # "threshold":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getCategoryThreshold(Ljava/lang/String;)I

    move-result v0

    .line 610
    .restart local v0    # "threshold":I
    :goto_0
    if-lt p2, v0, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isLogUpload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "eventFilters":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 451
    .local v2, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadEvents:Ljava/util/List;

    .line 455
    :cond_0
    if-nez v0, :cond_1

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 487
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "gotoBackground"

    if-nez v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    .line 490
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    const-string/jumbo v1, "periodCheck"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 491
    :cond_3
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v1, "ClientEvent_ClientLaunch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_4
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isLogUploadByInterval(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 509
    return v1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->intervalEventMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    return v1

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->uploadTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v2, 0x0

    .line 517
    .local v2, "lastTime":Ljava/lang/Long;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    .line 523
    .local v0, "info":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    const v3, 0xea60

    .line 524
    .local v3, "interval":I
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I

    if-ltz v4, :cond_3

    .line 525
    iget v4, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I

    mul-int/lit16 v3, v4, 0x3e8

    .line 527
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v4, v5

    .line 528
    .local v4, "now":J
    move-wide v4, v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v8, v3

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 529
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->uploadTimeMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    return v1

    .line 532
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 518
    .end local v0    # "info":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .end local v3    # "interval":I
    .end local v4    # "now":J
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->uploadTimeMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return v1
.end method

.method public isLogUploadByPeriodInterval(Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "mdapFile"    # Ljava/io/File;

    .line 615
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 616
    .local v4, "lastModifyTime":J
    move-wide v4, v0

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    .line 617
    return v6

    .line 620
    :cond_0
    const/16 v0, 0xe10

    .line 621
    .local v0, "periodInterval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 622
    .local v1, "curTime":J
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v7, 0x0

    .line 623
    .local v7, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v7, v3

    if-eqz v3, :cond_1

    iget v3, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->periodInterval:I

    if-lez v3, :cond_1

    .line 624
    iget v0, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->periodInterval:I

    .line 627
    :cond_1
    sub-long v8, v1, v4

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    .line 628
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "logCategory:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",periodInterval:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",lastModifyTime:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",real interval:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v1, v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "LogStrategyManager"

    invoke-interface {v3, v8, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v3, 0x1

    return v3

    .line 632
    :cond_2
    return v6
.end method

.method public isLogWrite(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z
    .locals 20
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 210
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 211
    return v3

    .line 213
    :cond_0
    iget-object v4, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v5, 0x0

    move-object v6, v5

    .line 214
    .local v6, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v6, v4

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 215
    iget-boolean v4, v6, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isWrite:Z

    if-eqz v4, :cond_5

    .line 216
    invoke-direct {v0, v6, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isHitTest(Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    return v3

    .line 219
    :cond_1
    iget v4, v6, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 220
    return v7

    .line 222
    :cond_2
    if-nez v2, :cond_3

    .line 223
    return v7

    .line 225
    :cond_3
    iget v4, v6, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I

    iget v5, v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    if-ge v4, v5, :cond_4

    .line 226
    return v3

    .line 228
    :cond_4
    return v7

    .line 230
    :cond_5
    return v3

    .line 235
    :cond_6
    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 237
    .local v8, "now":J
    iget-object v4, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v10, 0x4

    const-string v11, "CrashCountInfo"

    invoke-virtual {v4, v11, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 239
    .local v4, "sp":Landroid/content/SharedPreferences;
    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    div-long v13, v8, v13

    .line 240
    .local v13, "curHour":J
    const-string v10, "curCrashHour"

    const-wide/16 v11, 0x0

    move-wide/from16 v16, v8

    .end local v8    # "now":J
    .local v16, "now":J
    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 242
    .local v7, "lastCrashHour":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "isLogWrite, curHour:"

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " lastCrashHour:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "LogStrategyManager"

    invoke-interface {v9, v12, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v9, "curCrashHourCount"

    cmp-long v11, v13, v7

    if-eqz v11, :cond_7

    .line 245
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    move-object v15, v5

    .line 246
    .local v15, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v15, v11

    invoke-interface {v11, v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    const/4 v10, 0x1

    invoke-interface {v15, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v9

    .line 249
    .local v9, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v5, "isLogWrite, hourCommitResult:"

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v12, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v9    # "result":Z
    .end local v15    # "edit":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 251
    :cond_7
    invoke-interface {v4, v9, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x1

    add-int/2addr v5, v10

    .line 252
    .local v5, "curCrashHourCout":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "isLogWrite, curCrashHourCout:"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v10, 0x32

    if-le v5, v10, :cond_8

    .line 254
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "crash count beyound hour limit:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v12, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return v3

    .line 257
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v9, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v9

    .line 258
    .restart local v9    # "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "isLogWrite, curCrashHourCoutCommitResult:"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v5    # "curCrashHourCout":I
    .end local v9    # "result":Z
    :goto_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    div-long v9, v16, v9

    .line 263
    .local v9, "curMinute":J
    const-string v5, "curCrashMinute"

    const-wide/16 v0, 0x0

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 265
    .local v0, "lastCrashMinute":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "isLogWrite, curMinute:"

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastCrashMinute:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v12, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "curCrashMinuteCount"

    cmp-long v11, v9, v0

    if-eqz v11, :cond_9

    .line 268
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const/4 v15, 0x0

    .line 269
    .restart local v15    # "edit":Landroid/content/SharedPreferences$Editor;
    move-object v15, v11

    invoke-interface {v11, v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 270
    const/4 v5, 0x1

    invoke-interface {v15, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 272
    .local v3, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    move-wide/from16 v18, v0

    .end local v0    # "lastCrashMinute":J
    .local v18, "lastCrashMinute":J
    const-string v0, "isLogWrite, minuteCommitResult:"

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v12, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v3    # "result":Z
    .end local v15    # "edit":Landroid/content/SharedPreferences$Editor;
    goto :goto_1

    .line 274
    .end local v18    # "lastCrashMinute":J
    .restart local v0    # "lastCrashMinute":J
    :cond_9
    move-wide/from16 v18, v0

    .end local v0    # "lastCrashMinute":J
    .restart local v18    # "lastCrashMinute":J
    const/4 v0, 0x0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 275
    .local v1, "curCrashMinuteCout":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "isLogWrite, curCrashMinuteCout:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v12, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x2

    if-le v1, v0, :cond_a

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "crash count beyound minute limit:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v12, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_a
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 281
    .local v0, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "isLogWrite, curCrashMinuteCoutCommitResult:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v12, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .end local v0    # "result":Z
    .end local v1    # "curCrashMinuteCout":I
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 315
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "lastCrashHour":J
    .end local v9    # "curMinute":J
    .end local v13    # "curHour":J
    .end local v16    # "now":J
    .end local v18    # "lastCrashMinute":J
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public isPositiveDiagnose()Z
    .locals 5

    .line 1433
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1435
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "LogStrategyConfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1437
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "PositiveDiagnose"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    goto :goto_0

    .line 1435
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x0

    .line 1439
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->positiveDiagnoseTag:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 1440
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/NetUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1441
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    move-object v0, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    return v4

    .line 1443
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    return v4
.end method

.method public isRealTimeLogCategory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 637
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 638
    return v1

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 642
    .local v2, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->realtime:Z

    return v0

    .line 645
    :cond_1
    return v1
.end method

.method public isZipAndSevenZip()Z
    .locals 4

    .line 1447
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1449
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "LogStrategyConfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1451
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "ZipAndSevenZip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    .line 1453
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->zipAndSevenZipTag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public needEncrypt(Ljava/lang/String;)Z
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogNeedEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 328
    return v1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 331
    .local v2, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 332
    return v1

    .line 334
    :cond_2
    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isEncrypt:Z

    return v0
.end method

.method public queryStrategy(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "isForceRequest"    # Z

    .line 706
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 710
    if-eqz p2, :cond_0

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->asyncRequestLogConfig(Ljava/lang/String;Z)V

    .line 713
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 717
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    const-string v2, "LogStrategyConfig"

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 723
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 724
    .local v1, "nowTime":J
    const-wide/16 v3, 0x0

    const-string v5, "PreviousRequestTime"

    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 725
    .local v3, "prevTime":J
    sget-wide v5, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    const-string v7, "CurrentRequestTimeSpan"

    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 728
    .local v5, "timeSpan":J
    sub-long v7, v1, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-string v9, "LogStrategyManager"

    cmp-long v10, v7, v5

    if-gez v10, :cond_2

    .line 729
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "queryStrategy returned by span: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void

    .line 737
    :cond_2
    iget-wide v7, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->previousRequestTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sget-wide v10, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->REQUEST_TWICE_SPAN:J

    cmp-long v12, v7, v10

    if-gez v12, :cond_3

    .line 738
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "queryStrategy returned by twice: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void

    .line 741
    :cond_3
    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->previousRequestTime:J

    .line 743
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->asyncRequestLogConfig(Ljava/lang/String;Z)V

    .line 744
    return-void
.end method

.method public refreshHitState()V
    .locals 3

    .line 1556
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->strategyDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1557
    return-void

    .line 1559
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 1560
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1562
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1563
    .local v1, "val":Ljava/lang/Object;
    move-object v1, v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    if-eqz v2, :cond_1

    .line 1564
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget-object v2, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelHits:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1566
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 1567
    :cond_2
    return-void
.end method

.method public registerDateChangeReceiver()V
    .locals 4

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 160
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/DataChangeBroadCastReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/strategy/DataChangeBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->dataChangeBroadCastReceiver:Lcom/alipay/mobile/common/logging/strategy/DataChangeBroadCastReceiver;

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LogStrategyManager"

    const-string/jumbo v3, "registerDateChangeReceiver finish"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public revertRequestSpanToNormal()V
    .locals 4

    .line 699
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 700
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "revertRequestSpanToNormal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogStrategyManager"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v1, "LogStrategyConfig"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    sget-wide v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->CURRENT_REQUEST_TIME_SPAN:J

    const-string v3, "CurrentRequestTimeSpan"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 703
    return-void
.end method

.method public setDisableToolsProcess(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 1457
    if-eqz p1, :cond_0

    .line 1458
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    return-void

    .line 1460
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->disableToolsProcessTag:I

    .line 1462
    return-void
.end method

.method public setIntervalEventMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "intervalEventMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1600
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->intervalEventMap:Ljava/util/Map;

    .line 1601
    return-void
.end method

.method public setRealTimeConfig(Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;)V
    .locals 0
    .param p1, "realTimeConfig"    # Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    .line 1592
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->realTimeConfig:Lcom/alipay/mobile/common/logging/strategy/RealTimeConfig;

    .line 1593
    return-void
.end method

.method public syncLogConfig(Ljava/lang/String;)V
    .locals 9
    .param p1, "responseContent"    # Ljava/lang/String;

    const-string v0, "content"

    const-string/jumbo v1, "syncRequestLogConfig"

    const-string v2, "diagnose"

    const-string v3, "LogStrategyManager"

    .line 853
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 854
    .local v6, "strategyJson":Lorg/json/JSONObject;
    move-object v6, v4

    const-string v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 855
    const/16 v7, 0xc8

    if-eq v4, v7, :cond_0

    .line 856
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncRequestLogConfig: serverLogicCode is not 200, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 858
    return-void

    .line 863
    :cond_0
    :try_start_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 864
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v7, "syncRequestLogConfig: has diagnose tasks"

    invoke-interface {v4, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v4, v5

    .line 866
    .local v4, "diagnoseJson":Lorg/json/JSONArray;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 868
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v5, "intent":Landroid/content/Intent;
    move-object v5, v2

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v8, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".push.action.MONITOR_RECEIVED"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v2, "config_msg_tasks"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v2, "config_msg_userid"

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->contextInfo:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 874
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    goto :goto_0

    .line 875
    :catchall_0
    move-exception v2

    .line 878
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 879
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "syncRequestLogConfig: start service for diagnose occured error"

    invoke-interface {v2, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 886
    .end local v4    # "diagnoseJson":Lorg/json/JSONArray;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_1

    .line 884
    :catchall_1
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 890
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_5
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 891
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "syncRequestLogConfig: has configs"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->updateLogStrategy(Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x2

    const-string v5, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    if-eqz v2, :cond_4

    .line 899
    :try_start_6
    const-string v2, "com.alipay.mobile.common.logging.process.LogServiceInPushProcess"

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->notifyOtherProcessToUpdateLogStrategy(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->isDisableToolsProcess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 909
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 910
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;->isUplaod()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 911
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->notifyOtherProcessToUpdateLogStrategy(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->notifyLiteProcessToUpdateLogStrategy(Ljava/lang/String;)V

    return-void

    .line 918
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 920
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->isDisableToolsProcess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 921
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 922
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;->isUplaod()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 923
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->notifyToolProcessToUpdateLogStrategy(Ljava/lang/String;)V

    return-void

    .line 925
    :cond_5
    invoke-direct {p0, v5, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->notifyOtherProcessToUpdateLogStrategy(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 930
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 934
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 940
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncRequestLogConfig, error: unknown process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 947
    .end local v0    # "data":Ljava/lang/String;
    :cond_7
    return-void

    .line 945
    :catchall_2
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v3, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 950
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "strategyJson":Lorg/json/JSONObject;
    return-void

    .line 948
    :catchall_3
    move-exception v0

    .line 949
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "syncLogConfig"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 951
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public updateBackgroundTime(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 1051
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1053
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const-string v1, "CrashCountInfo"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1054
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "backgroundTimestamp"

    const-wide/16 v2, -0x9

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 1055
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1057
    :cond_0
    return-void
.end method

.method public updateLogStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1, "strategyConfig"    # Ljava/lang/String;

    .line 1067
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->readAndParseStrategy()V

    .line 1069
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v2, "LogStrategyConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1073
    const-string v1, "StrategConfigContent2nd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1076
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->parseLogStrategy(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LogStrategyManager"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1080
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
