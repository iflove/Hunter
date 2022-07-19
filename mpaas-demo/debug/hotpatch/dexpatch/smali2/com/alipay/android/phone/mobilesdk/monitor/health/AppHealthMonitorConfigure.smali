.class public final Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
.super Ljava/lang/Object;
.source "AppHealthMonitorConfigure.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/StackTraceElement;

.field public g:I

.field public h:I

.field public i:J

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    .line 13
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    .line 16
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    .line 18
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    .line 24
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    .line 28
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppHealthMonitorConfigure{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 35
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string/jumbo v2, "monitorProcessAliveTimeGap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ", monitorBackgroundCpuTimeGap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ", monitorHealthTickTimeGap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, ", monitorHealthFlushTimeGap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, ", monitorBackgroundCpuIgnoreThreads="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->e:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, ", monitorBackgroundCpuIgnoreStackTraces="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->f:[Ljava/lang/StackTraceElement;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ", monitorBgHighCpuOccupancyRateForProcess="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v0, ", monitorBgHighCpuOccupancyRateForThread="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, ", monitorBackgroundCpuShortTimeGap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, ", monitorBackgroundCpuSampleCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
