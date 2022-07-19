.class public Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
.super Ljava/lang/Object;
.source "AnalysedRunnableInfo.java"


# instance fields
.field public analysisType:I

.field public endAnalysisUptime:J

.field public endRunningUptime:J

.field public endThreadName:Ljava/lang/String;

.field public endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

.field public isRunning:Z

.field public name:Ljava/lang/String;

.field public startAnalysisUptime:J

.field public startRunningUptime:J

.field public startThreadName:Ljava/lang/String;

.field public startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

.field public tid:I

.field public uptimeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->reset()V

    .line 23
    return-void
.end method


# virtual methods
.method public fullClone()Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .locals 4

    .line 42
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;-><init>()V

    const/4 v1, 0x0

    .line 43
    .local v1, "info":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v1, v0

    iget-boolean v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    .line 44
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    iput v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadName:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    .line 48
    iget-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startRunningUptime:J

    iput-wide v2, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startRunningUptime:J

    .line 49
    iget-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    iput-wide v2, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    .line 50
    iget-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startAnalysisUptime:J

    iput-wide v2, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startAnalysisUptime:J

    .line 51
    iget-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endAnalysisUptime:J

    iput-wide v2, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endAnalysisUptime:J

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    iput-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    iput-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 54
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    iput v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    .line 55
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    iput v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    .line 56
    return-object v1
.end method

.method public parcelString()Ljava/lang/String;
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->parcelString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "startSnapshotParcel":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->parcelString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "endSnapshotParcel":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "buffer":Ljava/lang/StringBuilder;
    move-object v1, v3

    const-string/jumbo v4, "{\"a\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, ",\"c\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, ",\"d\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v3, ",\"e\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, ",\"m\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public reset()V
    .locals 4

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    .line 31
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startRunningUptime:J

    .line 32
    iput-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    .line 33
    iput-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startAnalysisUptime:J

    .line 34
    iput-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endAnalysisUptime:J

    .line 35
    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 36
    iput-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 37
    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    .line 38
    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->parcelString()Ljava/lang/String;

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
