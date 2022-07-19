.class public Lcom/ta/utdid2/device/Device;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ta/utdid2/device/Device;->e:J

    .line 15
    iput-wide v0, p0, Lcom/ta/utdid2/device/Device;->f:J

    return-void
.end method


# virtual methods
.method getCheckSum()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->f:J

    return-wide v0
.end method

.method getCreateTimestamp()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->e:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method setCheckSum(J)V
    .locals 0
    .param p1, "mCheckSum"    # J

    .line 22
    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->f:J

    .line 23
    return-void
.end method

.method setCreateTimestamp(J)V
    .locals 0
    .param p1, "mCreateTimestamp"    # J

    .line 30
    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->e:J

    .line 31
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "utdid"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    .line 63
    return-void
.end method
