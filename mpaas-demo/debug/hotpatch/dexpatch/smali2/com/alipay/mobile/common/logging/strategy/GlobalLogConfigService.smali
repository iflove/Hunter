.class public Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;
.super Ljava/lang/Object;
.source "GlobalLogConfigService.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "GlobalLogConfigService"

    sput-object v0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->b:Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->c:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->d:I

    .line 47
    return-void
.end method

.method public static a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;
    .locals 2

    .line 34
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->b:Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 37
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->b:Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    if-eqz v1, :cond_1

    .line 39
    monitor-exit v0

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->b:Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c()Z
    .locals 6

    .line 63
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "delayUpload"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/config/GrayScaleUtils;->getGrayScaleSwitch(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "enableDelay":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enableDelayConfig:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    return v1

    .line 68
    .end local v1    # "enableDelay":Z
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enableDelayConfig ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public static d()Z
    .locals 3

    .line 97
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "periodUpload"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/config/GrayScaleUtils;->getGrayScaleSwitch(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    return v0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    const-string v2, "enablePeriodUpload ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0
.end method

.method public static e()Z
    .locals 3

    .line 110
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "historyCheck"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/config/GrayScaleUtils;->getGrayScaleSwitch(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    return v0

    .line 112
    :catchall_0
    move-exception v1

    .line 113
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    const-string v2, "enableHistoryCheck ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v0
.end method

.method public static f()Z
    .locals 3

    .line 120
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "advancedPeriodCheck"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/config/GrayScaleUtils;->getGrayScaleSwitch(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    return v0

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a:Ljava/lang/String;

    const-string v2, "enableAdvancedPeriodCheck ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v0
.end method


# virtual methods
.method public final declared-synchronized b()I
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->d:I

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "periodInterval"

    iget v1, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->c:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/config/GrayScaleUtils;->getIntSwitch(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->d:I

    .line 53
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
