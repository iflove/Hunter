.class public interface abstract Lcom/alipay/mobile/monitor/api/TimestampInfo;
.super Ljava/lang/Object;
.source "TimestampInfo.java"


# static fields
.field public static final TIME_FUZZ_SCALE:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/monitor/api/TimestampInfo;->TIME_FUZZ_SCALE:J

    return-void
.end method


# virtual methods
.method public abstract getClientCurrentStartupTime()J
.end method

.method public abstract getClientPreviousStartupTime()J
.end method

.method public abstract getDeviceCurrentRebootExactTime()J
.end method

.method public abstract getDeviceCurrentRebootFuzzyTime()J
.end method

.method public abstract getDeviceLatestRebootExactTime()J
.end method

.method public abstract getDeviceLatestRebootFuzzyTime()J
.end method

.method public abstract getProcessCurrentLaunchElapsedTime()J
.end method

.method public abstract getProcessCurrentLaunchNaturalTime()J
.end method

.method public abstract getProcessPreviousLaunchTime()J
.end method

.method public abstract isDeviceRebootRecently()Z
.end method

.method public abstract isProcessLaunchFirstly()Z
.end method
