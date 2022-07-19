.class public Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;
.super Ljava/lang/Object;
.source "ThreadSnapshotDelta.java"


# instance fields
.field public name:[Ljava/lang/String;

.field public nice:[I

.field public priority:[I

.field public state:[Ljava/lang/String;

.field public sysUseTime:J

.field public sysWaitTime:J

.field public tid:I

.field public uptime:J

.field public userUseTime:J

.field public userWaitTime:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;)V
    .locals 6
    .param p1, "info0"    # Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;
    .param p2, "info1"    # Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->tid:I

    .line 6
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->name:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->state:[Ljava/lang/String;

    .line 8
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->uptime:J

    .line 9
    iput-wide v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userUseTime:J

    .line 10
    iput-wide v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysUseTime:J

    .line 11
    iput-wide v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userWaitTime:J

    .line 12
    iput-wide v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysWaitTime:J

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->priority:[I

    .line 14
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->nice:[I

    .line 17
    iget v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->tid:I

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->tid:I

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->name:[Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->name:[Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->state:[Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->state:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->state:[Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->state:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 22
    iget-wide v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->uptime:J

    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->uptime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->uptime:J

    .line 23
    iget-wide v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userUseTime:J

    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userUseTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userUseTime:J

    .line 24
    iget-wide v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysUseTime:J

    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysUseTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysUseTime:J

    .line 25
    iget-wide v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userWaitTime:J

    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userWaitTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userWaitTime:J

    .line 26
    iget-wide v0, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysWaitTime:J

    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysWaitTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysWaitTime:J

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->priority:[I

    iget v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->priority:I

    aput v1, v0, v2

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->priority:[I

    iget v1, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->priority:I

    aput v1, v0, v3

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->nice:[I

    iget v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->nice:I

    aput v1, v0, v2

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->nice:[I

    iget v1, p2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->nice:I

    aput v1, v0, v3

    .line 31
    return-void
.end method


# virtual methods
.method public parcelString()Ljava/lang/String;
    .locals 9

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 40
    .local v1, "buffer":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string/jumbo v2, "{\"tid\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->tid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ",\"name0\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->name:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, ",\"name1\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->name:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, ",\"state0\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->state:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, ",\"state1\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->state:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ",\"uptime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->uptime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, ",\"userUseTime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userUseTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysUseTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 48
    const-string v0, ",\"sysUseTime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysUseTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userWaitTime:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 50
    const-string v0, ",\"userWaitTime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->userWaitTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysWaitTime:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 52
    const-string v0, ",\"sysWaitTime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->sysWaitTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    :cond_2
    const-string v0, ",\"priority0\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->priority:[I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, ",\"priority1\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->priority:[I

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, ",\"nice0\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->nice:[I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, ",\"nice1\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->nice:[I

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotDelta;->parcelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
