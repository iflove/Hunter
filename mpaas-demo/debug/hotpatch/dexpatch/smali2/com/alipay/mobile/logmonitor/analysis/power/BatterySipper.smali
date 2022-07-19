.class public Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/os/BatteryStats$Uid;

.field public b:D

.field public c:[D

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:D

.field public n:J

.field public o:J

.field public p:D

.field public q:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public r:Ljava/lang/String;

.field public s:D

.field public t:J

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .param p1, "type"    # Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "values"    # [D

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->c:[D

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->q:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    .line 40
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    .line 42
    return-void
.end method

.method private a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)I
    .locals 7
    .param p1, "other"    # Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 46
    iget-wide v0, p1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 47
    .local v4, "delta":D
    move-wide v4, v0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    .line 48
    const/4 v0, -0x1

    return v0

    .line 49
    :cond_0
    cmpl-double v0, v4, v2

    if-lez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usageTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cpuTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " gpsTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wifiRunningTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cpuFgTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wakeLockTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tcpBytesReceived:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tcpBytesSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wifiscanningTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tcppower:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->m:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " wifilocktime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sensorTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
