.class public final Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;
.super Ljava/lang/Object;
.source "DevicePerformanceScoreHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DevicePerformanceScoreHelper"

.field private static a:Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;


# instance fields
.field private b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->LOW:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    .line 23
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 24
    .local v2, "totalRam":J
    move-wide v2, v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->LOW:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    .line 26
    return-void

    .line 28
    :cond_0
    const-wide v0, 0xdac00000L

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->LOW:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->HIGH:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    .line 33
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->a:Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->a:Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->a:Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->a:Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    return-object v0
.end method


# virtual methods
.method public final getScore()Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;
    .locals 3

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "performance score: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePerformanceScoreHelper"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->b:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    return-object v0
.end method
