.class public Lcom/alipay/mobile/quinox/utils/AppCheckUtil;
.super Ljava/lang/Object;
.source "AppCheckUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppCheckUtil"

.field private static lastCallFrameBackgroundTime:J

.field private static lastLaunchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J

    .line 23
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastLaunchTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 18
    sget-wide v0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J

    return-wide v0
.end method

.method public static checkAppCovered(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 44
    .local v0, "now":J
    sget-wide v2, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;

    invoke-direct {v8, v0, v1, p0}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;-><init>(JLandroid/content/Context;)V

    const-wide/16 v10, 0x1f4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v9, "AppCheckUtil_checkAppCovered"

    invoke-virtual/range {v7 .. v12}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 90
    return-void

    .line 45
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "don\'t check, lastLaunchTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastLaunchTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppCheckUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static frameBackgroundCalled()V
    .locals 2

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J

    .line 30
    return-void
.end method

.method public static launchOnGoing()V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastLaunchTime:J

    .line 34
    return-void
.end method
